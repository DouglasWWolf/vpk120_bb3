################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name lpddr4_clk1_clk_p -period 4.992 [get_ports lpddr4_clk1_clk_p]
create_clock -name lpddr4_clk2_clk_p -period 4.992 [get_ports lpddr4_clk2_clk_p]
create_clock -name lpddr4_clk3_clk_p -period 4.992 [get_ports lpddr4_clk3_clk_p]

################################################################################