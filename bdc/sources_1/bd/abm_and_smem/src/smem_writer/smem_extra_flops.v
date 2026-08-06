//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 28-Mar-26  DWW     1  Initial creation
//=============================================================================

/*
    This provides extra flip-flops between the output of the HSI module
    and the physical pins of the FPGA.  We do this because the logic for the
    this module may be in the center of the FPGA fabric, and its easier
    to close timing if we allow a couple of clock cycles for those signals
    to make it to the pins at the edge of the FPGA
*/

module smem_extra_flops # (parameter EXTRA_FLOPS = 2)
(
    input        clk,
    input        resetn,

    input          hsi_pclk,
    input          hsi_valid,
    input          hsi_cmd,
    input  [31:0]  hsi_data,

    output         pin_hsi_pclk,
    output         pin_hsi_valid,
    output         pin_hsi_cmd,
    output [31:0]  pin_hsi_data
);
genvar i;

// This is the number of input signal bits we have
localparam SIGNAL_COUNT = 35;

// This is the last index in the chain
localparam LAST_INDEX = EXTRA_FLOPS - 1;

// This is the chain of flip-flops, one chain per signal bit
(* dont_touch = "true" *) reg[SIGNAL_COUNT-1:0] flop[0:LAST_INDEX];

//=============================================================================
// Build a word consisting of all the input signals
//=============================================================================
wire[SIGNAL_COUNT-1:0] input_word = 
{
    hsi_pclk,
    hsi_valid,
    hsi_cmd,
    hsi_data 
};
//=============================================================================


//=============================================================================
// The last flop in the chain is our output signals
//=============================================================================
assign
{
    pin_hsi_pclk,
    pin_hsi_valid,
    pin_hsi_cmd,
    pin_hsi_data 
} = flop[LAST_INDEX];
//=============================================================================



//=============================================================================
// Feed our input pins to the first flop in the chain
//=============================================================================
always @(posedge clk) begin
    flop[0] <= (resetn == 1) ? input_word : 0;
end
//=============================================================================


//=============================================================================
// If there are two or more extra flops, copy each flop to the next one
//=============================================================================
if (EXTRA_FLOPS > 1) begin
    for (i=1; i<EXTRA_FLOPS; i=i+1) begin
        always @(posedge clk) begin
            flop[i] <= (resetn == 1) ? flop[i-1] : 0;
        end
    end
end
//=============================================================================


endmodule