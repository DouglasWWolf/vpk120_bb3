//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 09-Apr-26  DWW     1  Initial creation
//
// 29-Aug-26  DWW     2  Added support for UDP port-based packet steering
//====================================================================================

/*
    This module provides configuration information to mindy_core
*/

module mindy_core_ctl # (parameter AW = 8)
(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET resetn" *)
    input   clk,
    input   resetn,

    input     [31:0] FRAME_COUNT_0, FRAME_COUNT_1,

    output reg[63:0] RFD_ADDR, RFD_SIZE,
    output reg[63:0] RMD_ADDR, RMD_SIZE,
    output reg[63:0] RFC_ADDR,
    
    output reg[31:0] FRAME_SIZE,
    output reg[15:0] PACKET_SIZE,
    output reg[31:0] PACKETS_PER_GROUP,

    output reg[15:0] MD_UDP_PORT,
    output reg[15:0] FC_UDP_PORT,
    output reg[15:0] FD_UDP_PORT_BASE,
    output reg[15:0] FRAMES_PER_PERIOD,
    output reg[15:0] FD_BUCKET_COUNT,
    output reg[15:0] FD_BUCKET_SIZE,

   //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"              -- Master --    -- Slave --
    input[AW-1:0]                           S_AXI_AWADDR,   
    input                                   S_AXI_AWVALID,  
    input[   2:0]                           S_AXI_AWPROT,
    output                                                  S_AXI_AWREADY,


    // "Write Data"                         -- Master --    -- Slave --
    input[31:0]                             S_AXI_WDATA,      
    input                                   S_AXI_WVALID,
    input[ 3:0]                             S_AXI_WSTRB,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[AW-1:0]                           S_AXI_ARADDR,     
    input[   2:0]                           S_AXI_ARPROT,     
    input                                   S_AXI_ARVALID,
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[31:0]                                            S_AXI_RDATA,
    output                                                  S_AXI_RVALID,
    output[ 1:0]                                            S_AXI_RRESP,
    input                                   S_AXI_RREADY
    //==========================================================================

);  


//=========================  AXI Register Map  =============================

/*
    @register Address of remote frame data buffer
    @rname    REG_RFD_ADDR
    @rsize    64
*/
localparam REG_RFD_ADDR_H        =  0;
localparam REG_RFD_ADDR_L        =  1;

/*
    @register Size of remote frame data buffer
    @rname    REG_RFD_SIZE
    @rsize    64
*/
localparam REG_RFD_SIZE_H        =  2;
localparam REG_RFD_SIZE_L        =  3;


/*
    @register Address of remote meta data buffer
    @rname    REG_RMD_ADDR
    @rsize    64
*/
localparam REG_RMD_ADDR_H        =  4;
localparam REG_RMD_ADDR_L        =  5;


/*
    @register Size of remote meta data buffer
    @rname    REG_RMD_SIZE
    @rsize    64
*/
localparam REG_RMD_SIZE_H        =  6;
localparam REG_RMD_SIZE_L        =  7;


/*
    @register Address where the remote frame counter should be stored
    @rname    REG_RFC_ADDR
    @rsize    64
*/
localparam REG_RFC_ADDR_H        =  8;
localparam REG_RFC_ADDR_L        =  9;


/*
    @register Frame size in bytes (typically 0x40_0000)
*/
localparam REG_FRAME_SIZE        = 10;

/*
    @register Frame data packet size (typically 0x1000)
*/
localparam REG_PACKET_SIZE       = 11;


/*
    @register Number of packets in a transmit group (typicall 4)
*/
localparam REG_PACKETS_PER_GROUP = 12;


/*
    @register Number of frames transmitted on channel 0
    @rtype r/o
*/
localparam REG_FRAME_COUNT_0     = 15;

/*
    @register Number of frames transmitted on channel 0
    @rtype r/o
*/
localparam REG_FRAME_COUNT_1     = 16;

/*
    @register UDP destination port for metadata packets
*/
localparam REG_MD_UDP_PORT       = 17;

/*
    @register UDP destination port for frame-counter packets
*/

localparam REG_FC_UDP_PORT       = 18;


/*
    @register UDP destination base port for frame-data packets.
    @rdesc    Actual port numbers will be FD_UDP_BASE_PORT thru
    @rdesc    FD_UDP_BASE_PORT + FD_BUCKET_COUNT - 1
*/

localparam REG_FD_UDP_PORT_BASE  = 19;

/*
    @register The number of frames in a port-steering period
    @rdesc    Typically this is the number of frames in a bright-cycle.
*/
localparam REG_FRAMES_PER_PERIOD = 20;


/*
    @register How many different "buckets" are there for data-frames?
    @rdesc    Each "bucket" is associated with a different UDP destination port.
*/
localparam REG_FD_BUCKET_SIZE    = 21;

/*
    @register How many frames will fit into a single data-frame "bucket"?
*/
localparam REG_FD_BUCKET_COUNT   = 22;


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

// The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
reg ashi_write_state, ashi_read_state;

// The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
assign ashi_widle = (ashi_write == 0) && (ashi_write_state == 0);
assign ashi_ridle = (ashi_read  == 0) && (ashi_read_state  == 0);
   
// These are the valid values for ashi_rresp and ashi_wresp
localparam OKAY   = 0;
localparam SLVERR = 2;
localparam DECERR = 3;
//==========================================================================



//==========================================================================
// This state machine handles AXI4-Lite write requests
//
// Drives:
//==========================================================================
always @(posedge clk) begin

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;
        MD_UDP_PORT       <= 32002;
        FC_UDP_PORT       <= 32002;
        FD_UDP_PORT_BASE  <= 32002;
        FRAMES_PER_PERIOD <= 1;
        FD_BUCKET_COUNT   <= 1;
        FD_BUCKET_SIZE    <= 1;
    end

    // If we're not in reset, and a write-request has occured...        
    else case (ashi_write_state)
        
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // Allow a write to any valid register
                case (ashi_windx)
                    REG_RFD_ADDR_H : RFD_ADDR[63:32] <= ashi_wdata;
                    REG_RFD_ADDR_L : RFD_ADDR[31:00] <= ashi_wdata;
                    REG_RFD_SIZE_H : RFD_SIZE[63:32] <= ashi_wdata;
                    REG_RFD_SIZE_L : RFD_SIZE[31:00] <= ashi_wdata;
                    REG_RMD_ADDR_H : RMD_ADDR[63:32] <= ashi_wdata;
                    REG_RMD_ADDR_L : RMD_ADDR[31:00] <= ashi_wdata;
                    REG_RMD_SIZE_H : RMD_SIZE[63:32] <= ashi_wdata; 
                    REG_RMD_SIZE_L : RMD_SIZE[31:00] <= ashi_wdata; 
                    REG_RFC_ADDR_H : RFC_ADDR[63:32] <= ashi_wdata;
                    REG_RFC_ADDR_L : RFC_ADDR[31:00] <= ashi_wdata;

                    REG_FRAME_SIZE       : FRAME_SIZE        <= ashi_wdata;
                    REG_PACKET_SIZE      : PACKET_SIZE       <= ashi_wdata;
                    REG_PACKETS_PER_GROUP: PACKETS_PER_GROUP <= ashi_wdata;

                    REG_MD_UDP_PORT      :  MD_UDP_PORT       <= ashi_wdata;
                    REG_FC_UDP_PORT      :  FC_UDP_PORT       <= ashi_wdata;
                    REG_FD_UDP_PORT_BASE :  FD_UDP_PORT_BASE  <= ashi_wdata;  
                    REG_FRAMES_PER_PERIOD:  FRAMES_PER_PERIOD <= ashi_wdata;
                    REG_FD_BUCKET_COUNT  :  FD_BUCKET_COUNT   <= ashi_wdata;
                    REG_FD_BUCKET_SIZE   :  FD_BUCKET_SIZE    <= ashi_wdata;

                    // Writes to any other register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        // Dummy state, doesn't do anything
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
    
    // If we're not in reset, and a read-request has occured...        
    end else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // Convert the byte address into a register index
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_RFD_ADDR_H : ashi_rdata <= RFD_ADDR[63:32];
            REG_RFD_ADDR_L : ashi_rdata <= RFD_ADDR[31:00];
            REG_RFD_SIZE_H : ashi_rdata <= RFD_SIZE[63:32];
            REG_RFD_SIZE_L : ashi_rdata <= RFD_SIZE[31:00];
            REG_RMD_ADDR_H : ashi_rdata <= RMD_ADDR[63:32];
            REG_RMD_ADDR_L : ashi_rdata <= RMD_ADDR[31:00];
            REG_RMD_SIZE_H : ashi_rdata <= RMD_SIZE[63:32]; 
            REG_RMD_SIZE_L : ashi_rdata <= RMD_SIZE[31:00]; 
            REG_RFC_ADDR_H : ashi_rdata <= RFC_ADDR[63:32];
            REG_RFC_ADDR_L : ashi_rdata <= RFC_ADDR[31:00];
            
            REG_FRAME_SIZE        : ashi_rdata <= FRAME_SIZE;       
            REG_PACKET_SIZE       : ashi_rdata <= PACKET_SIZE;
            REG_PACKETS_PER_GROUP : ashi_rdata <= PACKETS_PER_GROUP;
            REG_FRAME_COUNT_0     : ashi_rdata <= FRAME_COUNT_0;
            REG_FRAME_COUNT_1     : ashi_rdata <= FRAME_COUNT_1;

            REG_MD_UDP_PORT       : ashi_rdata <= MD_UDP_PORT      ;
            REG_FC_UDP_PORT       : ashi_rdata <= FC_UDP_PORT      ;
            REG_FD_UDP_PORT_BASE  : ashi_rdata <= FD_UDP_PORT_BASE ;  
            REG_FRAMES_PER_PERIOD : ashi_rdata <= FRAMES_PER_PERIOD;
            REG_FD_BUCKET_COUNT   : ashi_rdata <= FD_BUCKET_COUNT  ;
            REG_FD_BUCKET_SIZE    : ashi_rdata <= FD_BUCKET_SIZE   ;



            // Reads of any other register are a decode-error
            default: ashi_rresp <= DECERR;
        endcase
    end
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



endmodule
