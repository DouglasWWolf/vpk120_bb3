//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 16-Feb-26  DWW     1  Initial Creation
//====================================================================================

/*

    Provides AXI registers for control and status of the ABM manager

*/


module abm_and_smem_ctl # (parameter AW=8)
(
    input clk, resetn,

    // To initiate an ABM load from host-RAM
    output reg load_abm_0, load_abm_1, load_abm_wstrobe,
    input      load_abm_idle_0, load_abm_idle_1,

    // The source address in host RAM where the ABM should be loaded from
    output reg[63:0] abm_host_addr,

    // 1 = SMEM writes take place over the HSI bus
    // 0 = SMEM writes take place over the SPI bus
    output reg select_hsi,
    
    // A high-going edge on this port tells the smem_writer that when
    // the next ABM is received, all rows should be written to SMEM 
    // and cache
    output reg force_smem_update,

    // This strobes high every time the ABM-manager notifies us that
    // an ABM has arrived
    input  abm_ready_stb,

    // When this is asserted, the SMEM-writer is busy updating SMEM
    input  smem_writer_busy,

    // These are used to read and write registers/SMEM on the sensor chip
    output  [ 1:0] spi_start_stb,
    output  [31:0] spi_addr,
    output  [31:0] spi_wdata,
    input   [31:0] spi_rdata,
    input          spi_busy,

    // After an ABM/SMEM updated is completed, these indicate how many
    // SMEM rows and individual SMEM 32-bit words were updated
    input[31:0] smem_rows_updated, smem_words_updated,

    //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"                      -- Master --    -- Slave --
    (* keep = "true" *) input[AW-1:0]               S_AXI_AWADDR,   
    (* keep = "true" *) input                       S_AXI_AWVALID,  
    (* keep = "true" *) input[   2:0]               S_AXI_AWPROT,
    (* keep = "true" *) output                                      S_AXI_AWREADY,

    // "Write Data"                                 -- Master --    -- Slave --
    (* keep = "true" *) input[31:0]                 S_AXI_WDATA,      
    (* keep = "true" *) input                       S_AXI_WVALID,
    (* keep = "true" *) input[ 3:0]                 S_AXI_WSTRB,
    (* keep = "true" *) output                                      S_AXI_WREADY,

    // "Send Write Response"                        -- Master --    -- Slave --
    (* keep = "true" *) output[1:0]                                 S_AXI_BRESP,
    (* keep = "true" *) output                                      S_AXI_BVALID,
    (* keep = "true" *) input                       S_AXI_BREADY,

    // "Specify read address"                       -- Master --    -- Slave --
    (* keep = "true" *) input[AW-1:0]               S_AXI_ARADDR,     
    (* keep = "true" *) input[   2:0]               S_AXI_ARPROT,     
    (* keep = "true" *) input                       S_AXI_ARVALID,
    (* keep = "true" *) output                                      S_AXI_ARREADY,

    // "Read data back to master"                   -- Master --    -- Slave --
    (* keep = "true" *) output[31:0]                                S_AXI_RDATA,
    (* keep = "true" *) output                                      S_AXI_RVALID,
    (* keep = "true" *) output[ 1:0]                                S_AXI_RRESP,
    (* keep = "true" *) input                       S_AXI_RREADY
    //==========================================================================
);  

//=========================  AXI Register Map  =============================
/*
    @register Copy an ABM from host-RAM into one or both ABM buffers
    @rname    REG_LOAD_ABM_VIA_PCI
    @rtype    wo
    @field load_0 1 0 WO n/a Copy ABM from host RAM to ABM buffer #0
    @field load_1 1 1 WO n/a Copy ABM from host RAM to ABM buffer #1    
*/
localparam REG_LOAD_VIA_PCI   =  0;

/*
    @register Source address in host RAM for loading ABMs
    @rsize    64
    @rname    REG_ABM_HOST_ADDR
*/
localparam REG_ABM_HOST_ADDR_H =  1;
localparam REG_ABM_HOST_ADDR_L =  2;

/*  
    @register Select HSI or SPI bus for SMEM writes
    @rdesc    0 = SPI, 1 = HSI
*/
localparam REG_SELECT_HSI     =  3;

/* 
    @register A rising edge = all rows of the next received ABM
    @rdesc                    will be written to cache and SMEM
    @rdesc    Rising edge sensitive:  write a 0 then a 1
*/ 
localparam REG_FORCE_SMEM     =  4;

/*
    @register The address on the sensor chip that you wish to read or write
*/

localparam REG_CHIPIO_ADDR    =  5;

/*
    @register Reading this register returns the data from the most recent
    @rdesc    chip-register read or write
    @rdesc
    @rdesc    Data written to this register will be written to the chip-register
    @rdesc    specified by CHIPIO_ADDR when a write command is issued via CHIPIO_CMD
             
*/
localparam REG_CHIPIO_DATA  =  6;


/*
    @register Write a command to begin a chip-register READ/WRITE:
    @rdesc    1 = Read the value at chip-register address CHIPIO_ADDR
    @rdesc    2 = Write CHIPIO_DATA to chip-register address CHIPIO_ADDR
    @rdesc    5 = Same as 1, but auto-increments CHIPIO_ADDR by 4
    @rdesc    6 = Same as 2, but auto-increments CHIPIO_ADDR by 4
    @rdesc    Any other value = undefined behavior
    @rdesc
    @rdesc    This register auto-clears to 0 when the read or write is complete
             
*/
localparam REG_CHIPIO_CMD = 7;


/*
    @register Non-zero = SMEM is being updated
    @rtype ro
*/
localparam REG_SMEM_BUSY =  9;


/*
    @register The count of rows updated during the last SMEM update
    @rtype ro
*/
localparam REG_SMEM_ROWS_UPD  = 10;

/*
    @register The count of 32-bit words updated during the last SMEM update
    @rtype ro
*/
localparam REG_SMEM_WORDS_UPD = 11;


/*
    @register The count of ABMs received.  Write any value to clear
*/
localparam REG_ABM_COUNT      = 12;
//==========================================================================


//==========================================================================
// We'll communicate with the AXI4-Lite Slave core with these signals.
//==========================================================================
// AXI Slave Handler Interface for write requests
wire[  31:0]  ashi_windx;     // Input   Write register-index
wire[AW-1:0]  ashi_waddr;     // Input:  Write-address
wire[  31:0]  ashi_wdata;     // Input:  Write-data
wire          ashi_write;     // Input:  1 = Handle a write request
reg [   1:0]  ashi_wresp;     // Output: Write-response (OKAY, DECERR, SLVERR)
wire          ashi_widle;     // Output: 1 = Write state machine is idle

// AXI Slave Handler Interface for read requests
wire[  31:0]  ashi_rindx;     // Input   Read register-index
wire[AW-1:0]  ashi_raddr;     // Input:  Read-address
wire          ashi_read;      // Input:  1 = Handle a read request
reg [  31:0]  ashi_rdata;     // Output: Read data
reg [   1:0]  ashi_rresp;     // Output: Read-response (OKAY, DECERR, SLVERR);
wire          ashi_ridle;     // Output: 1 = Read state machine is idle
//==========================================================================

//==========================================================================
// These are how we communicate with the chip_spi interface
//==========================================================================
reg [31:0] chipio_raddr;
reg [31:0] chipio_waddr;
reg [31:0] chipio_wdata;
reg        chipio_write_stb;
reg        chipio_read_stb;
wire[31:0] chipio_rdata;
wire       chipio_read_busy;
wire       chipio_write_busy;
//==========================================================================

// The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
reg ashi_write_state, ashi_read_state;

// The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
assign ashi_widle = (ashi_write == 0) && (ashi_write_state == 0);
assign ashi_ridle = (ashi_read  == 0) && (ashi_read_state  == 0);
   
// These are the valid values for ashi_rresp and ashi_wresp
localparam OKAY   = 0;
localparam SLVERR = 2;
localparam DECERR = 3;

// This is the address that will used to read/write data to/from the chip
reg[31:0] chipio_addr;

// Bit 0 = Perform chip-read, Bit 1 = Perform chip-write, Bit 2 = auto-inc address
reg[2:0] chipio_cmd;

// This is the count of ABM's that have been received
reg[31:0] abm_count;

//=============================================================================
// This function swaps big-endian to little-endian or vice-versa
//=============================================================================
function [31:0] byte_swap (input [31:0] value);
    byte_swap = {value[7:0], value[15:8], value[23:16], value[31:24]};
endfunction
//=============================================================================


//==========================================================================
// This state machine handles AXI4-Lite write requests
//==========================================================================
always @(posedge clk) begin

    // These strobes high for a single cycle at a time
    load_abm_wstrobe    <= 0;
    chipio_write_stb    <= 0;
    chipio_read_stb     <= 0;

    // Keep track of how many ABMs arrives
    if (abm_ready_stb) abm_count <= abm_count + 1;

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;
        load_abm_0        <= 0;
        load_abm_1        <= 0;
        abm_host_addr     <= 64'h1_0000_0000;
        select_hsi        <= 1;
        force_smem_update <= 0;
        abm_count         <= 0;
    end
    
    // Otherwise, we're not in reset...
    else case (ashi_write_state)
        
        // If an AXI write-request has occured...
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // ashi_windex = index of register to be written
                case (ashi_windx)
               
                    // Writing to the "LOAD_VIA_PCI" register causes ABMs 
                    // to be read from host-RAM into the ABM manager
                    REG_LOAD_VIA_PCI:
                        begin
                            {load_abm_1, load_abm_0} <= ashi_wdata;
                            load_abm_wstrobe         <= 1;
                        end

                    REG_CHIPIO_DATA:
                        begin
                            chipio_wdata <= byte_swap(ashi_wdata);
                        end

                    REG_CHIPIO_ADDR:
                        begin
                            chipio_addr <= ashi_wdata;
                        end

                    REG_CHIPIO_CMD:
                        begin
                            chipio_cmd <= ashi_wdata;
    
                            if (ashi_wdata[0]) begin
                                chipio_raddr     <= chipio_addr;
                                chipio_read_stb  <= 1;
                            end else if (ashi_wdata[1]) begin
                                chipio_waddr     <= chipio_addr;
                                chipio_write_stb <= 1;
                            end

                            if (ashi_wdata[2]) chipio_addr <= chipio_addr + 4;
                        end

                    REG_ABM_HOST_ADDR_H: abm_host_addr[63:32] <= ashi_wdata;
                    REG_ABM_HOST_ADDR_L: abm_host_addr[31:00] <= ashi_wdata;
                    REG_SELECT_HSI:      select_hsi           <= ashi_wdata;
                    REG_FORCE_SMEM:      force_smem_update    <= ashi_wdata;
                    REG_ABM_COUNT:       abm_count            <= 0;

                    // Writes to any other register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        // Dummy state that is never reached
        1: ashi_write_state <= 0;

    endcase
end
//==========================================================================



//==========================================================================
// World's simplest state machine for handling AXI4-Lite read requests
//==========================================================================
always @(posedge clk) begin


    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_read_state <= 0;
    end

    // If we're not in reset...
    else case (ashi_read_state)
        
        // If a read-request has occured...
        0:  if (ashi_read) begin
   
                // Assume for the moment that the result will be OKAY
                ashi_rresp <= OKAY;              
        
                // ashi_rindex = index of register to be read
                case (ashi_rindx)
            
                    // Allow a read from any valid register                
                    REG_LOAD_VIA_PCI:    ashi_rdata <= {!load_abm_idle_1, !load_abm_idle_0};
                    REG_ABM_HOST_ADDR_H: ashi_rdata <= abm_host_addr[63:32];
                    REG_ABM_HOST_ADDR_L: ashi_rdata <= abm_host_addr[31:00];
                    REG_SELECT_HSI:      ashi_rdata <= select_hsi;
                    REG_FORCE_SMEM:      ashi_rdata <= force_smem_update;
                    REG_SMEM_ROWS_UPD:   ashi_rdata <= smem_rows_updated;
                    REG_SMEM_WORDS_UPD:  ashi_rdata <= smem_words_updated;
                    REG_SMEM_BUSY:       ashi_rdata <= smem_writer_busy;
                    REG_ABM_COUNT:       ashi_rdata <= abm_count;


                    // Report the chip-register address
                    REG_CHIPIO_ADDR:
                        ashi_rdata <= chipio_addr;

                    // Report either the data-read or the data-written
                    REG_CHIPIO_DATA:
                        ashi_rdata <= (chipio_cmd[1]) ? byte_swap(chipio_wdata) : byte_swap(chipio_rdata);

                    // Report 0 when the read or write is complete 
                    REG_CHIPIO_CMD:
                        if (chipio_read_busy | chipio_write_busy)
                            ashi_rdata <= chipio_cmd;
                        else
                            ashi_rdata <= 0;

                    // Reads of any other register are a decode-error
                    default: ashi_rresp <= DECERR;
                endcase
            end

        // Dummy state that is never reached
        1:  ashi_read_state <= 0;

    endcase
end
//==========================================================================



//==========================================================================
// This connects us to an AXI4-Lite slave core
//==========================================================================
axi4_lite_slave#(.AW(AW)) i_axi4lite_slave
(
    .clk            (clk),
    .resetn         (resetn),
    
    // AXI AW channel
    .AXI_AWADDR     (S_AXI_AWADDR),
    .AXI_AWPROT     (S_AXI_AWPROT),
    .AXI_AWVALID    (S_AXI_AWVALID),   
    .AXI_AWREADY    (S_AXI_AWREADY),
    
    // AXI W channel
    .AXI_WDATA      (S_AXI_WDATA),
    .AXI_WVALID     (S_AXI_WVALID),
    .AXI_WSTRB      (S_AXI_WSTRB),
    .AXI_WREADY     (S_AXI_WREADY),

    // AXI B channel
    .AXI_BRESP      (S_AXI_BRESP),
    .AXI_BVALID     (S_AXI_BVALID),
    .AXI_BREADY     (S_AXI_BREADY),

    // AXI AR channel
    .AXI_ARADDR     (S_AXI_ARADDR), 
    .AXI_ARPROT     (S_AXI_ARPROT),
    .AXI_ARVALID    (S_AXI_ARVALID),
    .AXI_ARREADY    (S_AXI_ARREADY),

    // AXI R channel
    .AXI_RDATA      (S_AXI_RDATA),
    .AXI_RVALID     (S_AXI_RVALID),
    .AXI_RRESP      (S_AXI_RRESP),
    .AXI_RREADY     (S_AXI_RREADY),

    // ASHI write-request registers
    .ASHI_WADDR     (ashi_waddr),
    .ASHI_WINDX     (ashi_windx),
    .ASHI_WDATA     (ashi_wdata),
    .ASHI_WRITE     (ashi_write),
    .ASHI_WRESP     (ashi_wresp),
    .ASHI_WIDLE     (ashi_widle),

    // ASHI read registers
    .ASHI_RADDR     (ashi_raddr),
    .ASHI_RINDX     (ashi_rindx),
    .ASHI_RDATA     (ashi_rdata),
    .ASHI_READ      (ashi_read ),
    .ASHI_RRESP     (ashi_rresp),
    .ASHI_RIDLE     (ashi_ridle)
);
//==========================================================================

//==========================================================================
// This is an interface to the chip_spi module
//==========================================================================
chip_spi_if i_chip_spi_if
(
    .clk            (clk),
    .resetn         (resetn),

    // Client-side interface for write-transactions
    .io_waddr       (chipio_waddr),
    .io_wdata       (chipio_wdata),
    .io_write_stb   (chipio_write_stb),
    .io_write_busy  (chipio_write_busy),

    // Client-side interface for read transactions
    .io_raddr       (chipio_raddr),
    .io_read_stb    (chipio_read_stb),
    .io_rdata       (chipio_rdata),
    .io_read_busy   (chipio_read_busy),

    // Interface to the chip_spi module
    .spi_addr       (spi_addr),
    .spi_wdata      (spi_wdata),
    .spi_start_stb  (spi_start_stb),
    .spi_busy       (spi_busy),
    .spi_rdata      (spi_rdata)
);
//==========================================================================



endmodule
