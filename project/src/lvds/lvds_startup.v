//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 23-Aug-26  DWW     1  Initial creation
//=============================================================================

/*
    This serves as a one-time reset at power-up
*/


module lvds_startup # (parameter DELAY = 200)
(
    input  clk,
 
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_out RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
    output reset_out
);

reg[7:0] timer = DELAY;

always @(posedge clk) begin
    if (timer) timer <= timer - 1;
end

assign reset_out = (timer != 0);

endmodule

