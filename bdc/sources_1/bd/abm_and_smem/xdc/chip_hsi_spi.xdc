
# ---------------------------------------------------------------------------
# Pin definitions
# ---------------------------------------------------------------------------


# 
#  Sensor chip SPI bus
# 
set_property -dict {PACKAGE_PIN A23  IOSTANDARD LVCMOS15  SLEW SLOW}  [get_ports CHIP_SPI_CSN ] ;# FMCP1_LA21_N
set_property -dict {PACKAGE_PIN G22  IOSTANDARD LVCMOS15           }  [get_ports CHIP_SPI_MISO] ;# FMCP1_LA29_N
set_property -dict {PACKAGE_PIN D24  IOSTANDARD LVCMOS15  SLEW SLOW}  [get_ports CHIP_SPI_MOSI] ;# FMCP1_LA25_P
set_property -dict {PACKAGE_PIN C24  IOSTANDARD LVCMOS15  SLEW SLOW}  [get_ports CHIP_SPI_SCK ] ;# FMCP1_LA25_N
                                                                                                                                                           
#
#  High Speed bus for updating sensor chip SMEM
#
#set_property -dict {PACKAGE_PIN C10  IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 0]];  # IO Bank 91     Board signal name: HS0s
#set_property -dict {PACKAGE_PIN F9   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 1]];  # IO Bank 91     Board signal name: HS1
#set_property -dict {PACKAGE_PIN F8   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 2]];  # IO Bank 91     Board signal name: HS2
#set_property -dict {PACKAGE_PIN E9   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 3]];  # IO Bank 91     Board signal name: HS3
#set_property -dict {PACKAGE_PIN C9   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 4]];  # IO Bank 91     Board signal name: HS4
#set_property -dict {PACKAGE_PIN F7   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 5]];  # IO Bank 91     Board signal name: HS5
#set_property -dict {PACKAGE_PIN F6   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 6]];  # IO Bank 91     Board signal name: HS6
#set_property -dict {PACKAGE_PIN F1   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 7]];  # IO Bank 90     Board signal name: HS7
#set_property -dict {PACKAGE_PIN D7   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 8]];  # IO Bank 91     Board signal name: HS8
#set_property -dict {PACKAGE_PIN D6   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[ 9]];  # IO Bank 90     Board signal name: HS9
#set_property -dict {PACKAGE_PIN F2   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[10]];  # IO Bank 90     Board signal name: HS10
#set_property -dict {PACKAGE_PIN F4   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[11]];  # IO Bank 90     Board signal name: HS11
#set_property -dict {PACKAGE_PIN E1   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[12]];  # IO Bank 90     Board signal name: HS12
#set_property -dict {PACKAGE_PIN E6   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[13]];  # IO Bank 91     Board signal name: HS13
#set_property -dict {PACKAGE_PIN E8   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[14]];  # IO Bank 91     Board signal name: HS14
#set_property -dict {PACKAGE_PIN D1   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[15]];  # IO Bank 90     Board signal name: HS15
#set_property -dict {PACKAGE_PIN E5   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[16]];  # IO Bank 90     Board signal name: HS16
#set_property -dict {PACKAGE_PIN D2   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[17]];  # IO Bank 90     Board signal name: HS17
#set_property -dict {PACKAGE_PIN E10  IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[18]];  # IO Bank 91     Board signal name: HS18
#set_property -dict {PACKAGE_PIN E4   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[19]];  # IO Bank 90     Board signal name: HS19
#set_property -dict {PACKAGE_PIN D11  IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[20]];  # IO Bank 91     Board signal name: HS20
#set_property -dict {PACKAGE_PIN E3   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[21]];  # IO Bank 90     Board signal name: HS21
#set_property -dict {PACKAGE_PIN B6   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[22]];  # IO Bank 90     Board signal name: HS22
#set_property -dict {PACKAGE_PIN B2   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[23]];  # IO Bank 90     Board signal name: HS23
#set_property -dict {PACKAGE_PIN D5   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[24]];  # IO Bank 90     Board signal name: HS24
#set_property -dict {PACKAGE_PIN D3   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[25]];  # IO Bank 90     Board signal name: HS25
#set_property -dict {PACKAGE_PIN D8   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[26]];  # IO Bank 91     Board signal name: HS26
#set_property -dict {PACKAGE_PIN C8   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[27]];  # IO Bank 91     Board signal name: HS27
#set_property -dict {PACKAGE_PIN C2   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[28]];  # IO Bank 90     Board signal name: HS28
#set_property -dict {PACKAGE_PIN C3   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[29]];  # IO Bank 90     Board signal name: HS29
#set_property -dict {PACKAGE_PIN B4   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[30]];  # IO Bank 90     Board signal name: HS30
#set_property -dict {PACKAGE_PIN A3   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_DATA[31]];  # IO Bank 90     Board signal name: HS31
set_property -dict {PACKAGE_PIN B23   IOSTANDARD LVCMOS15  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_CLK     ];  # FMCP1_LA21_P
#set_property -dict {PACKAGE_PIN A6   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_CMD     ];  # IO Bank 90
#set_property -dict {PACKAGE_PIN B5   IOSTANDARD LVCMOS18  SLEW SLOW  IOB TRUE}  [get_ports CHIP_HSI_VALID   ];  # IO Bank 90



