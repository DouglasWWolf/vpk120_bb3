//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Sep-26  DWW     1  Initial creation
//=============================================================================

/*
    Manages the fifo_rd_en input port of an Advanced I/O Wizard
*/

module lvds_advio_fifo_mgr # (parameter BITS = 9)
(
    input clk,
    input reset,

    input           async_intf_rdy,
    input[BITS-1:0] async_fifo_empty,
    input[BITS-1:0] async_dly_rdy,

    output reg[BITS-1:0] fifo_rd_en,
    output reg           en_vtc
);

localparam[BITS-1:0] ALL_RDY = -1;

// Synchronized from async_dly_rdy
wire[BITS-1:0] dly_rdy;

// Synchronized from async_fifo_empty
wire[BITS-1:0] fifo_empty;

// Synchronized from async_intf_rdy
wire intf_rdy;

always @(posedge clk) begin

    if (reset || intf_rdy == 0) begin
        en_vtc     <= 0;
        fifo_rd_en <= 0;
    end

    else begin
        // voltage/temp compensation is enabled only if all of
        // the "dly_rdy" flags are '1'
        en_vtc <= (dly_rdy == ALL_RDY);
    
        // FIFO read-enable bits are set if the interface is ready and
        // the Advanced I/O Wizard's internal FIFO is not empty
        fifo_rd_en <= ~fifo_empty;
    end
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

endmodule