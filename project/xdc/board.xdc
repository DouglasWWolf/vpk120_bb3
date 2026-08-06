#
# The Versal VPK120 FPGA is xcvp1202-vsva2785-2MP-e-S
#

#
# Bitstream configuration
#
set_property BITSTREAM.GENERAL.COMPRESS TRUE  [current_design]

#
# PL UART
#
set_property -dict {PACKAGE_PIN V32  IOSTANDARD LVCMOS15}  [get_ports UART_txd]
set_property -dict {PACKAGE_PIN U32  IOSTANDARD LVCMOS15}  [get_ports UART_rxd]

 
#
#  UCI ADC bus - contains 3 LTC-1867L ADCs
#
set_property -dict {PACKAGE_PIN D28   IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports UCI_ADC_CSN[0]] ;# FMCP1_LA11_P
set_property -dict {PACKAGE_PIN C26   IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports UCI_ADC_CSN[1]] ;# FMCP1_LA13_N
set_property -dict {PACKAGE_PIN E26   IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports UCI_ADC_CSN[2]] ;# FMCP1_LA12_N
set_property -dict {PACKAGE_PIN E27   IOSTANDARD LVCMOS15           } [get_ports UCI_ADC_MISO  ] ;# FMCP1_LA12_P
set_property -dict {PACKAGE_PIN C27   IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports UCI_ADC_MOSI  ] ;# FMCP1_LA11_N
set_property -dict {PACKAGE_PIN B26   IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports UCI_ADC_SCK   ] ;# FMCP1_LA16_P


#
#  Chip power controls
#
set_property -dict {PACKAGE_PIN E23  IOSTANDARD LVCMOS15           } [get_ports CHIP_RSTB   ] ;# FMCP1_LA24_P
set_property -dict {PACKAGE_PIN D27  IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports CHIP_VDDIO  ] ;# FMCP1_LA13_P
set_property -dict {PACKAGE_PIN E21  IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports CHIP_VDDA   ] ;# FMCP1_LA32_N
set_property -dict {PACKAGE_PIN E22  IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports CHIP_VDDLVDS] ;# FMCP1_LA32_P
set_property -dict {PACKAGE_PIN C21  IOSTANDARD LVCMOS15  SLEW SLOW} [get_ports CHIP_VDD    ] ;# FMCP1_LA27_N



#
#  This enables a level translator for SPI pins on the sensor-chip (active low)
#
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS15   SLEW SLOW } [get_ports LVL_TRSL_OE_N] ;# FMCP1_LA30_N



#
# LVDS clock output to the sensor-chip. 768 MHz
#
set_property -dict {PACKAGE_PIN M28  IOSTANDARD LVDS15  DATA_RATE DDR  LVDS_PRE_EMPHASIS FALSE } [get_ports LVDS_CLK_clk_n] ;# FMCP1_LA02_N
set_property -dict {PACKAGE_PIN N27  IOSTANDARD LVDS15  DATA_RATE DDR  LVDS_PRE_EMPHASIS FALSE } [get_ports LVDS_CLK_clk_p] ;# FMCP1_LA02_P


#
# Constant signals and pa_sync
#
set_property -dict {PACKAGE_PIN G23   IOSTANDARD LVCMOS15 } [get_ports CHIP_GPIO15_DIR   ] ;# FMCP1_LA29_P
set_property -dict {PACKAGE_PIN N22   IOSTANDARD LVCMOS15 } [get_ports CHIP_GPIO13       ] ;# FMCP1_LA31_P
set_property -dict {PACKAGE_PIN N24   IOSTANDARD LVCMOS15 } [get_ports CHIP_GPIO15       ] ;# FMCP1_LA28_P
set_property -dict {PACKAGE_PIN D23   IOSTANDARD LVCMOS15 } [get_ports CHIP_GPIO_BYTE_DIR] ;# FMCP1_LA24_N
set_property -dict {PACKAGE_PIN M22   IOSTANDARD LVCMOS15 } [get_ports CHIP_RS0          ] ;# FMCP1_LA31_N  (CHIP_GPIO12)
set_property -dict {PACKAGE_PIN M23   IOSTANDARD LVCMOS15 } [get_ports CHIP_RS256        ] ;# FMCP1_LA28_N  (CHIP_GPIO14)
set_property -dict {PACKAGE_PIN N21   IOSTANDARD LVCMOS15 } [get_ports CHIP_PA_SYNC      ] ;# FMCP1_LA30_P  (CHIP_GPIO11)
