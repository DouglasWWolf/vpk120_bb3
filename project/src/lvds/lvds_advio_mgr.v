//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 11-Sep-26  DWW     1  Initial creation
//=============================================================================

/*
    Manages a Xilinx/AMD "Advanced IO" block for the purpose of LVDS alignment
*/


module lvds_advio_mgr #(parameter LANES = 8)
(
    input clk,
    input resetn,

    // Selects which of the 64 LVDS lanes are being calibrated
    input [63:0] cal_mask,
    
    // Bottom 9 bits are a bit-delay, top 3 bits are a bitslip
    input [11:0] cal_word,

    // When this strobes high, it's time to calibrate an LVDS lane
    input        cal_word_wstb,

    // A '1' bit = Enable voltage / temperature control
    output reg[LANES-1:0]  rxen_vtc,

    // A '1' bit = Write the 9-bit delay-tap value
    output reg[LANES-1:0]  rx_ld,

    // The delay-tap value being written 
    output reg[9*LANES-1:0] rx_cntvaluein,

    // These bits are on when it's safe to calibrate
    output [2:0] cal_write_en
);

// Extract the "delay taps" portion of the calibration word
wire[8:0] cal_delay = cal_word[8:0];

//=============================================================================
// This state machine is responsible for programming delay-taps.   The 
// software sets "cal_word" to the desired value, then strobes "cal_word_wstb"
// high as/ a signal to tell us to start.
//
// The programming algorithm is simple:
//
// (1) Disable VTC for selected lanes 
// (2) Wait at least 10 clock-cycles
// (3) Strobe the "rx_ld" bit high for the selected lanes
// (4) Wait at least 10 clock-cycles
// (5) Re-enable VTC for all channels
//=============================================================================
reg[1:0] wdsm_state;
reg[3:0] wdsm_sleep;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    
    // This is a countdown timer for this state machine
    if (wdsm_sleep) wdsm_sleep <= wdsm_sleep - 1;

    // These bits strobe high for a single clock-cycle at a time
    rx_ld <= 0;

    // All selected lanes are calibrated with the same delay-tap value
    rx_cntvaluein <= {LANES{cal_delay}};

    if (resetn == 0) begin
        wdsm_state <= 0;
        wdsm_sleep <= 0;
        rxen_vtc   <= -1;
    end

    else case (wdsm_state)
        
        // If we're told to write the delay taps, disable VTC for
        // the selected lanes
        0:  if (/*all_dly_rdy & all_vtc_rdy & */ cal_word_wstb) begin

                rxen_vtc   <= ~cal_mask;
                wdsm_sleep <= 15;
                wdsm_state <= 1;
            end else
                rxen_vtc   <= -1;


        // After waiting the appropriate amount of time, load the delay taps
        // for the selected lanes
        1:  if (wdsm_sleep == 0) begin
                rx_ld      <= cal_mask;
                wdsm_sleep <= 15;
                wdsm_state <= 2;
            end

        // Wait for delay-tap programming to complete
        2:  if (wdsm_sleep == 0) wdsm_state <= 0;

    endcase

end

// These are the conditions under which its safe to write a delay
wire delay_write_en = (wdsm_state == 0);

// Tell the outsidee world when it's safe to strobe "cal_word_wstb"
assign cal_write_en = {2'b11, delay_write_en};


endmodule