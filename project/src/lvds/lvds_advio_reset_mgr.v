//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Sep-26  DWW     1  Initial creation
//=============================================================================

/*
    Manages the reset sequence for the Xilinx/AMD Advanced I/O Wizard
*/

module lvds_advio_reset_mgr # (parameter BITS = 9)
(
    output[1:0] dbg_fsm_state,

    input clk,
    input soft_reset,

    input           async_intf_rdy,
    input           async_bank0_pll_locked,
    input[BITS-1:0] async_fifo_empty,
    input[BITS-1:0] async_dly_rdy,

    output reg[BITS-1:0] fifo_rd_en,
    output reg           en_vtc,

    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
    output reg           rst
);

localparam[BITS-1:0] ALL_RDY = -1;

// Synchronized from async_xxxxx
wire[BITS-1:0] dly_rdy;
wire[BITS-1:0] fifo_empty;
wire           bank0_pll_locked;
wire           intf_rdy;

reg[1:0] fsm_state;
reg[7:0] sleep;
localparam SLEEP_TIME = 10;

always @(posedge clk) begin

    // Countdown sleep-timer
    if (sleep) sleep <= sleep -1;

    if (soft_reset) begin
        en_vtc     <= 0;
        fifo_rd_en <= 0;
        rst        <= 1;
        fsm_state  <= 0;
    end

    else case (fsm_state)
        
        // Wait for PLL lock
        0:  if (bank0_pll_locked) begin
                sleep     <= SLEEP_TIME;
                fsm_state <= 1;
            end  

        // After PLL has been locked for a moment, release reset
        1:  if (sleep == 0) begin
                rst       <= 0;
                fsm_state <= 2;
            end

        // Wait for all "dly_rdy" bits to be 1, then enable VTC
        2:  if (sleep == 0 && dly_rdy == ALL_RDY) begin
                en_vtc    <= 1;
                fsm_state <= 3;
            end

        // We're only allowed to drive fifo_rd_en when the 
        // interface is ready
        3:  fifo_rd_en <= (intf_rdy) ? ~fifo_empty : 0;

    endcase
end



xpm_cdc_array_single #
(
   .DEST_SYNC_FF    (4),  
   .INIT_SYNC_FF    (0),  
   .SIM_ASSERT_CHK  (0),
   .SRC_INPUT_REG   (0), 
   .WIDTH           (BITS)       
)
i_sync_dly_rdy
(
    .src_clk    (),  
    .src_in     (async_dly_rdy),
    .dest_out   (dly_rdy),
    .dest_clk   (clk)
);


xpm_cdc_array_single #
(
   .DEST_SYNC_FF    (4),  
   .INIT_SYNC_FF    (0),  
   .SIM_ASSERT_CHK  (0),
   .SRC_INPUT_REG   (0), 
   .WIDTH           (BITS)       
)
i_sync_fifo_empty
(
    .src_clk    (),  
    .src_in     (async_fifo_empty),
    .dest_out   (fifo_empty),
    .dest_clk   (clk)
);


xpm_cdc_single #
(
    .DEST_SYNC_FF   (4), 
    .INIT_SYNC_FF   (0), 
    .SIM_ASSERT_CHK (0),
    .SRC_INPUT_REG  (0)  
)
i_sync_intf_rdy
(
    .src_clk    (),  
    .src_in     (async_intf_rdy),
    .dest_out   (intf_rdy),
    .dest_clk   (clk)
);


xpm_cdc_single #
(
    .DEST_SYNC_FF   (4), 
    .INIT_SYNC_FF   (0), 
    .SIM_ASSERT_CHK (0),
    .SRC_INPUT_REG  (0)  
)
i_sync_bank0_pll_locked
(
    .src_clk    (),  
    .src_in     (async_bank0_pll_locked),
    .dest_out   (bank0_pll_locked),
    .dest_clk   (clk)
);

assign dbg_fsm_state = fsm_state;

endmodule