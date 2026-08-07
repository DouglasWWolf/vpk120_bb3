//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Aug  6 19:37:45 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
   (CHIP_GPIO13,
    CHIP_GPIO15,
    CHIP_GPIO15_DIR,
    CHIP_GPIO_BYTE_DIR,
    CHIP_HSI_CLK,
    CHIP_PA_SYNC,
    CHIP_RS0,
    CHIP_RS256,
    CHIP_RSTB,
    CHIP_SPI_CSN,
    CHIP_SPI_MISO,
    CHIP_SPI_MOSI,
    CHIP_SPI_SCK,
    CHIP_VDD,
    CHIP_VDDA,
    CHIP_VDDIO,
    CHIP_VDDLVDS,
    LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    LVL_TRSL_OE_N,
    UART_rxd,
    UART_txd,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    ch0_lpddr4_trip1_ca_a,
    ch0_lpddr4_trip1_ca_b,
    ch0_lpddr4_trip1_ck_c_a,
    ch0_lpddr4_trip1_ck_c_b,
    ch0_lpddr4_trip1_ck_t_a,
    ch0_lpddr4_trip1_ck_t_b,
    ch0_lpddr4_trip1_cke_a,
    ch0_lpddr4_trip1_cke_b,
    ch0_lpddr4_trip1_cs_a,
    ch0_lpddr4_trip1_cs_b,
    ch0_lpddr4_trip1_dmi_a,
    ch0_lpddr4_trip1_dmi_b,
    ch0_lpddr4_trip1_dq_a,
    ch0_lpddr4_trip1_dq_b,
    ch0_lpddr4_trip1_dqs_c_a,
    ch0_lpddr4_trip1_dqs_c_b,
    ch0_lpddr4_trip1_dqs_t_a,
    ch0_lpddr4_trip1_dqs_t_b,
    ch0_lpddr4_trip1_reset_n,
    ch0_lpddr4_trip2_ca_a,
    ch0_lpddr4_trip2_ca_b,
    ch0_lpddr4_trip2_ck_c_a,
    ch0_lpddr4_trip2_ck_c_b,
    ch0_lpddr4_trip2_ck_t_a,
    ch0_lpddr4_trip2_ck_t_b,
    ch0_lpddr4_trip2_cke_a,
    ch0_lpddr4_trip2_cke_b,
    ch0_lpddr4_trip2_cs_a,
    ch0_lpddr4_trip2_cs_b,
    ch0_lpddr4_trip2_dmi_a,
    ch0_lpddr4_trip2_dmi_b,
    ch0_lpddr4_trip2_dq_a,
    ch0_lpddr4_trip2_dq_b,
    ch0_lpddr4_trip2_dqs_c_a,
    ch0_lpddr4_trip2_dqs_c_b,
    ch0_lpddr4_trip2_dqs_t_a,
    ch0_lpddr4_trip2_dqs_t_b,
    ch0_lpddr4_trip2_reset_n,
    ch0_lpddr4_trip3_ca_a,
    ch0_lpddr4_trip3_ca_b,
    ch0_lpddr4_trip3_ck_c_a,
    ch0_lpddr4_trip3_ck_c_b,
    ch0_lpddr4_trip3_ck_t_a,
    ch0_lpddr4_trip3_ck_t_b,
    ch0_lpddr4_trip3_cke_a,
    ch0_lpddr4_trip3_cke_b,
    ch0_lpddr4_trip3_cs_a,
    ch0_lpddr4_trip3_cs_b,
    ch0_lpddr4_trip3_dmi_a,
    ch0_lpddr4_trip3_dmi_b,
    ch0_lpddr4_trip3_dq_a,
    ch0_lpddr4_trip3_dq_b,
    ch0_lpddr4_trip3_dqs_c_a,
    ch0_lpddr4_trip3_dqs_c_b,
    ch0_lpddr4_trip3_dqs_t_a,
    ch0_lpddr4_trip3_dqs_t_b,
    ch0_lpddr4_trip3_reset_n,
    ch1_lpddr4_trip1_ca_a,
    ch1_lpddr4_trip1_ca_b,
    ch1_lpddr4_trip1_ck_c_a,
    ch1_lpddr4_trip1_ck_c_b,
    ch1_lpddr4_trip1_ck_t_a,
    ch1_lpddr4_trip1_ck_t_b,
    ch1_lpddr4_trip1_cke_a,
    ch1_lpddr4_trip1_cke_b,
    ch1_lpddr4_trip1_cs_a,
    ch1_lpddr4_trip1_cs_b,
    ch1_lpddr4_trip1_dmi_a,
    ch1_lpddr4_trip1_dmi_b,
    ch1_lpddr4_trip1_dq_a,
    ch1_lpddr4_trip1_dq_b,
    ch1_lpddr4_trip1_dqs_c_a,
    ch1_lpddr4_trip1_dqs_c_b,
    ch1_lpddr4_trip1_dqs_t_a,
    ch1_lpddr4_trip1_dqs_t_b,
    ch1_lpddr4_trip1_reset_n,
    ch1_lpddr4_trip2_ca_a,
    ch1_lpddr4_trip2_ca_b,
    ch1_lpddr4_trip2_ck_c_a,
    ch1_lpddr4_trip2_ck_c_b,
    ch1_lpddr4_trip2_ck_t_a,
    ch1_lpddr4_trip2_ck_t_b,
    ch1_lpddr4_trip2_cke_a,
    ch1_lpddr4_trip2_cke_b,
    ch1_lpddr4_trip2_cs_a,
    ch1_lpddr4_trip2_cs_b,
    ch1_lpddr4_trip2_dmi_a,
    ch1_lpddr4_trip2_dmi_b,
    ch1_lpddr4_trip2_dq_a,
    ch1_lpddr4_trip2_dq_b,
    ch1_lpddr4_trip2_dqs_c_a,
    ch1_lpddr4_trip2_dqs_c_b,
    ch1_lpddr4_trip2_dqs_t_a,
    ch1_lpddr4_trip2_dqs_t_b,
    ch1_lpddr4_trip2_reset_n,
    ch1_lpddr4_trip3_ca_a,
    ch1_lpddr4_trip3_ca_b,
    ch1_lpddr4_trip3_ck_c_a,
    ch1_lpddr4_trip3_ck_c_b,
    ch1_lpddr4_trip3_ck_t_a,
    ch1_lpddr4_trip3_ck_t_b,
    ch1_lpddr4_trip3_cke_a,
    ch1_lpddr4_trip3_cke_b,
    ch1_lpddr4_trip3_cs_a,
    ch1_lpddr4_trip3_cs_b,
    ch1_lpddr4_trip3_dmi_a,
    ch1_lpddr4_trip3_dmi_b,
    ch1_lpddr4_trip3_dq_a,
    ch1_lpddr4_trip3_dq_b,
    ch1_lpddr4_trip3_dqs_c_a,
    ch1_lpddr4_trip3_dqs_c_b,
    ch1_lpddr4_trip3_dqs_t_a,
    ch1_lpddr4_trip3_dqs_t_b,
    ch1_lpddr4_trip3_reset_n,
    lpddr4_clk1_clk_n,
    lpddr4_clk1_clk_p,
    lpddr4_clk2_clk_n,
    lpddr4_clk2_clk_p,
    lpddr4_clk3_clk_n,
    lpddr4_clk3_clk_p);
  output [0:0]CHIP_GPIO13;
  output [0:0]CHIP_GPIO15;
  output [0:0]CHIP_GPIO15_DIR;
  output [0:0]CHIP_GPIO_BYTE_DIR;
  output CHIP_HSI_CLK;
  input CHIP_PA_SYNC;
  output [0:0]CHIP_RS0;
  output [0:0]CHIP_RS256;
  output CHIP_RSTB;
  output CHIP_SPI_CSN;
  input CHIP_SPI_MISO;
  output CHIP_SPI_MOSI;
  output CHIP_SPI_SCK;
  output CHIP_VDD;
  output CHIP_VDDA;
  output CHIP_VDDIO;
  output CHIP_VDDLVDS;
  output [0:0]LVDS_CLK_clk_n;
  output [0:0]LVDS_CLK_clk_p;
  output LVL_TRSL_OE_N;
  input UART_rxd;
  output UART_txd;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  output [5:0]ch0_lpddr4_trip1_ca_a;
  output [5:0]ch0_lpddr4_trip1_ca_b;
  output ch0_lpddr4_trip1_ck_c_a;
  output ch0_lpddr4_trip1_ck_c_b;
  output ch0_lpddr4_trip1_ck_t_a;
  output ch0_lpddr4_trip1_ck_t_b;
  output ch0_lpddr4_trip1_cke_a;
  output ch0_lpddr4_trip1_cke_b;
  output ch0_lpddr4_trip1_cs_a;
  output ch0_lpddr4_trip1_cs_b;
  inout [1:0]ch0_lpddr4_trip1_dmi_a;
  inout [1:0]ch0_lpddr4_trip1_dmi_b;
  inout [15:0]ch0_lpddr4_trip1_dq_a;
  inout [15:0]ch0_lpddr4_trip1_dq_b;
  inout [1:0]ch0_lpddr4_trip1_dqs_c_a;
  inout [1:0]ch0_lpddr4_trip1_dqs_c_b;
  inout [1:0]ch0_lpddr4_trip1_dqs_t_a;
  inout [1:0]ch0_lpddr4_trip1_dqs_t_b;
  output ch0_lpddr4_trip1_reset_n;
  output [5:0]ch0_lpddr4_trip2_ca_a;
  output [5:0]ch0_lpddr4_trip2_ca_b;
  output ch0_lpddr4_trip2_ck_c_a;
  output ch0_lpddr4_trip2_ck_c_b;
  output ch0_lpddr4_trip2_ck_t_a;
  output ch0_lpddr4_trip2_ck_t_b;
  output ch0_lpddr4_trip2_cke_a;
  output ch0_lpddr4_trip2_cke_b;
  output ch0_lpddr4_trip2_cs_a;
  output ch0_lpddr4_trip2_cs_b;
  inout [1:0]ch0_lpddr4_trip2_dmi_a;
  inout [1:0]ch0_lpddr4_trip2_dmi_b;
  inout [15:0]ch0_lpddr4_trip2_dq_a;
  inout [15:0]ch0_lpddr4_trip2_dq_b;
  inout [1:0]ch0_lpddr4_trip2_dqs_c_a;
  inout [1:0]ch0_lpddr4_trip2_dqs_c_b;
  inout [1:0]ch0_lpddr4_trip2_dqs_t_a;
  inout [1:0]ch0_lpddr4_trip2_dqs_t_b;
  output ch0_lpddr4_trip2_reset_n;
  output [5:0]ch0_lpddr4_trip3_ca_a;
  output [5:0]ch0_lpddr4_trip3_ca_b;
  output ch0_lpddr4_trip3_ck_c_a;
  output ch0_lpddr4_trip3_ck_c_b;
  output ch0_lpddr4_trip3_ck_t_a;
  output ch0_lpddr4_trip3_ck_t_b;
  output ch0_lpddr4_trip3_cke_a;
  output ch0_lpddr4_trip3_cke_b;
  output ch0_lpddr4_trip3_cs_a;
  output ch0_lpddr4_trip3_cs_b;
  inout [1:0]ch0_lpddr4_trip3_dmi_a;
  inout [1:0]ch0_lpddr4_trip3_dmi_b;
  inout [15:0]ch0_lpddr4_trip3_dq_a;
  inout [15:0]ch0_lpddr4_trip3_dq_b;
  inout [1:0]ch0_lpddr4_trip3_dqs_c_a;
  inout [1:0]ch0_lpddr4_trip3_dqs_c_b;
  inout [1:0]ch0_lpddr4_trip3_dqs_t_a;
  inout [1:0]ch0_lpddr4_trip3_dqs_t_b;
  output ch0_lpddr4_trip3_reset_n;
  output [5:0]ch1_lpddr4_trip1_ca_a;
  output [5:0]ch1_lpddr4_trip1_ca_b;
  output ch1_lpddr4_trip1_ck_c_a;
  output ch1_lpddr4_trip1_ck_c_b;
  output ch1_lpddr4_trip1_ck_t_a;
  output ch1_lpddr4_trip1_ck_t_b;
  output ch1_lpddr4_trip1_cke_a;
  output ch1_lpddr4_trip1_cke_b;
  output ch1_lpddr4_trip1_cs_a;
  output ch1_lpddr4_trip1_cs_b;
  inout [1:0]ch1_lpddr4_trip1_dmi_a;
  inout [1:0]ch1_lpddr4_trip1_dmi_b;
  inout [15:0]ch1_lpddr4_trip1_dq_a;
  inout [15:0]ch1_lpddr4_trip1_dq_b;
  inout [1:0]ch1_lpddr4_trip1_dqs_c_a;
  inout [1:0]ch1_lpddr4_trip1_dqs_c_b;
  inout [1:0]ch1_lpddr4_trip1_dqs_t_a;
  inout [1:0]ch1_lpddr4_trip1_dqs_t_b;
  output ch1_lpddr4_trip1_reset_n;
  output [5:0]ch1_lpddr4_trip2_ca_a;
  output [5:0]ch1_lpddr4_trip2_ca_b;
  output ch1_lpddr4_trip2_ck_c_a;
  output ch1_lpddr4_trip2_ck_c_b;
  output ch1_lpddr4_trip2_ck_t_a;
  output ch1_lpddr4_trip2_ck_t_b;
  output ch1_lpddr4_trip2_cke_a;
  output ch1_lpddr4_trip2_cke_b;
  output ch1_lpddr4_trip2_cs_a;
  output ch1_lpddr4_trip2_cs_b;
  inout [1:0]ch1_lpddr4_trip2_dmi_a;
  inout [1:0]ch1_lpddr4_trip2_dmi_b;
  inout [15:0]ch1_lpddr4_trip2_dq_a;
  inout [15:0]ch1_lpddr4_trip2_dq_b;
  inout [1:0]ch1_lpddr4_trip2_dqs_c_a;
  inout [1:0]ch1_lpddr4_trip2_dqs_c_b;
  inout [1:0]ch1_lpddr4_trip2_dqs_t_a;
  inout [1:0]ch1_lpddr4_trip2_dqs_t_b;
  output ch1_lpddr4_trip2_reset_n;
  output [5:0]ch1_lpddr4_trip3_ca_a;
  output [5:0]ch1_lpddr4_trip3_ca_b;
  output ch1_lpddr4_trip3_ck_c_a;
  output ch1_lpddr4_trip3_ck_c_b;
  output ch1_lpddr4_trip3_ck_t_a;
  output ch1_lpddr4_trip3_ck_t_b;
  output ch1_lpddr4_trip3_cke_a;
  output ch1_lpddr4_trip3_cke_b;
  output ch1_lpddr4_trip3_cs_a;
  output ch1_lpddr4_trip3_cs_b;
  inout [1:0]ch1_lpddr4_trip3_dmi_a;
  inout [1:0]ch1_lpddr4_trip3_dmi_b;
  inout [15:0]ch1_lpddr4_trip3_dq_a;
  inout [15:0]ch1_lpddr4_trip3_dq_b;
  inout [1:0]ch1_lpddr4_trip3_dqs_c_a;
  inout [1:0]ch1_lpddr4_trip3_dqs_c_b;
  inout [1:0]ch1_lpddr4_trip3_dqs_t_a;
  inout [1:0]ch1_lpddr4_trip3_dqs_t_b;
  output ch1_lpddr4_trip3_reset_n;
  input lpddr4_clk1_clk_n;
  input lpddr4_clk1_clk_p;
  input lpddr4_clk2_clk_n;
  input lpddr4_clk2_clk_p;
  input lpddr4_clk3_clk_n;
  input lpddr4_clk3_clk_p;

  wire [0:0]CHIP_GPIO13;
  wire [0:0]CHIP_GPIO15;
  wire [0:0]CHIP_GPIO15_DIR;
  wire [0:0]CHIP_GPIO_BYTE_DIR;
  wire CHIP_HSI_CLK;
  wire CHIP_PA_SYNC;
  wire [0:0]CHIP_RS0;
  wire [0:0]CHIP_RS256;
  wire CHIP_RSTB;
  wire CHIP_SPI_CSN;
  wire CHIP_SPI_MISO;
  wire CHIP_SPI_MOSI;
  wire CHIP_SPI_SCK;
  wire CHIP_VDD;
  wire CHIP_VDDA;
  wire CHIP_VDDIO;
  wire CHIP_VDDLVDS;
  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire LVL_TRSL_OE_N;
  wire UART_rxd;
  wire UART_txd;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire [5:0]ch0_lpddr4_trip1_ca_a;
  wire [5:0]ch0_lpddr4_trip1_ca_b;
  wire ch0_lpddr4_trip1_ck_c_a;
  wire ch0_lpddr4_trip1_ck_c_b;
  wire ch0_lpddr4_trip1_ck_t_a;
  wire ch0_lpddr4_trip1_ck_t_b;
  wire ch0_lpddr4_trip1_cke_a;
  wire ch0_lpddr4_trip1_cke_b;
  wire ch0_lpddr4_trip1_cs_a;
  wire ch0_lpddr4_trip1_cs_b;
  wire [1:0]ch0_lpddr4_trip1_dmi_a;
  wire [1:0]ch0_lpddr4_trip1_dmi_b;
  wire [15:0]ch0_lpddr4_trip1_dq_a;
  wire [15:0]ch0_lpddr4_trip1_dq_b;
  wire [1:0]ch0_lpddr4_trip1_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip1_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip1_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip1_dqs_t_b;
  wire ch0_lpddr4_trip1_reset_n;
  wire [5:0]ch0_lpddr4_trip2_ca_a;
  wire [5:0]ch0_lpddr4_trip2_ca_b;
  wire ch0_lpddr4_trip2_ck_c_a;
  wire ch0_lpddr4_trip2_ck_c_b;
  wire ch0_lpddr4_trip2_ck_t_a;
  wire ch0_lpddr4_trip2_ck_t_b;
  wire ch0_lpddr4_trip2_cke_a;
  wire ch0_lpddr4_trip2_cke_b;
  wire ch0_lpddr4_trip2_cs_a;
  wire ch0_lpddr4_trip2_cs_b;
  wire [1:0]ch0_lpddr4_trip2_dmi_a;
  wire [1:0]ch0_lpddr4_trip2_dmi_b;
  wire [15:0]ch0_lpddr4_trip2_dq_a;
  wire [15:0]ch0_lpddr4_trip2_dq_b;
  wire [1:0]ch0_lpddr4_trip2_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip2_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip2_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip2_dqs_t_b;
  wire ch0_lpddr4_trip2_reset_n;
  wire [5:0]ch0_lpddr4_trip3_ca_a;
  wire [5:0]ch0_lpddr4_trip3_ca_b;
  wire ch0_lpddr4_trip3_ck_c_a;
  wire ch0_lpddr4_trip3_ck_c_b;
  wire ch0_lpddr4_trip3_ck_t_a;
  wire ch0_lpddr4_trip3_ck_t_b;
  wire ch0_lpddr4_trip3_cke_a;
  wire ch0_lpddr4_trip3_cke_b;
  wire ch0_lpddr4_trip3_cs_a;
  wire ch0_lpddr4_trip3_cs_b;
  wire [1:0]ch0_lpddr4_trip3_dmi_a;
  wire [1:0]ch0_lpddr4_trip3_dmi_b;
  wire [15:0]ch0_lpddr4_trip3_dq_a;
  wire [15:0]ch0_lpddr4_trip3_dq_b;
  wire [1:0]ch0_lpddr4_trip3_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip3_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip3_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip3_dqs_t_b;
  wire ch0_lpddr4_trip3_reset_n;
  wire [5:0]ch1_lpddr4_trip1_ca_a;
  wire [5:0]ch1_lpddr4_trip1_ca_b;
  wire ch1_lpddr4_trip1_ck_c_a;
  wire ch1_lpddr4_trip1_ck_c_b;
  wire ch1_lpddr4_trip1_ck_t_a;
  wire ch1_lpddr4_trip1_ck_t_b;
  wire ch1_lpddr4_trip1_cke_a;
  wire ch1_lpddr4_trip1_cke_b;
  wire ch1_lpddr4_trip1_cs_a;
  wire ch1_lpddr4_trip1_cs_b;
  wire [1:0]ch1_lpddr4_trip1_dmi_a;
  wire [1:0]ch1_lpddr4_trip1_dmi_b;
  wire [15:0]ch1_lpddr4_trip1_dq_a;
  wire [15:0]ch1_lpddr4_trip1_dq_b;
  wire [1:0]ch1_lpddr4_trip1_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip1_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip1_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip1_dqs_t_b;
  wire ch1_lpddr4_trip1_reset_n;
  wire [5:0]ch1_lpddr4_trip2_ca_a;
  wire [5:0]ch1_lpddr4_trip2_ca_b;
  wire ch1_lpddr4_trip2_ck_c_a;
  wire ch1_lpddr4_trip2_ck_c_b;
  wire ch1_lpddr4_trip2_ck_t_a;
  wire ch1_lpddr4_trip2_ck_t_b;
  wire ch1_lpddr4_trip2_cke_a;
  wire ch1_lpddr4_trip2_cke_b;
  wire ch1_lpddr4_trip2_cs_a;
  wire ch1_lpddr4_trip2_cs_b;
  wire [1:0]ch1_lpddr4_trip2_dmi_a;
  wire [1:0]ch1_lpddr4_trip2_dmi_b;
  wire [15:0]ch1_lpddr4_trip2_dq_a;
  wire [15:0]ch1_lpddr4_trip2_dq_b;
  wire [1:0]ch1_lpddr4_trip2_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip2_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip2_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip2_dqs_t_b;
  wire ch1_lpddr4_trip2_reset_n;
  wire [5:0]ch1_lpddr4_trip3_ca_a;
  wire [5:0]ch1_lpddr4_trip3_ca_b;
  wire ch1_lpddr4_trip3_ck_c_a;
  wire ch1_lpddr4_trip3_ck_c_b;
  wire ch1_lpddr4_trip3_ck_t_a;
  wire ch1_lpddr4_trip3_ck_t_b;
  wire ch1_lpddr4_trip3_cke_a;
  wire ch1_lpddr4_trip3_cke_b;
  wire ch1_lpddr4_trip3_cs_a;
  wire ch1_lpddr4_trip3_cs_b;
  wire [1:0]ch1_lpddr4_trip3_dmi_a;
  wire [1:0]ch1_lpddr4_trip3_dmi_b;
  wire [15:0]ch1_lpddr4_trip3_dq_a;
  wire [15:0]ch1_lpddr4_trip3_dq_b;
  wire [1:0]ch1_lpddr4_trip3_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip3_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip3_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip3_dqs_t_b;
  wire ch1_lpddr4_trip3_reset_n;
  wire lpddr4_clk1_clk_n;
  wire lpddr4_clk1_clk_p;
  wire lpddr4_clk2_clk_n;
  wire lpddr4_clk2_clk_p;
  wire lpddr4_clk3_clk_n;
  wire lpddr4_clk3_clk_p;

  top_level top_level_i
       (.CHIP_GPIO13(CHIP_GPIO13),
        .CHIP_GPIO15(CHIP_GPIO15),
        .CHIP_GPIO15_DIR(CHIP_GPIO15_DIR),
        .CHIP_GPIO_BYTE_DIR(CHIP_GPIO_BYTE_DIR),
        .CHIP_HSI_CLK(CHIP_HSI_CLK),
        .CHIP_PA_SYNC(CHIP_PA_SYNC),
        .CHIP_RS0(CHIP_RS0),
        .CHIP_RS256(CHIP_RS256),
        .CHIP_RSTB(CHIP_RSTB),
        .CHIP_SPI_CSN(CHIP_SPI_CSN),
        .CHIP_SPI_MISO(CHIP_SPI_MISO),
        .CHIP_SPI_MOSI(CHIP_SPI_MOSI),
        .CHIP_SPI_SCK(CHIP_SPI_SCK),
        .CHIP_VDD(CHIP_VDD),
        .CHIP_VDDA(CHIP_VDDA),
        .CHIP_VDDIO(CHIP_VDDIO),
        .CHIP_VDDLVDS(CHIP_VDDLVDS),
        .LVDS_CLK_clk_n(LVDS_CLK_clk_n),
        .LVDS_CLK_clk_p(LVDS_CLK_clk_p),
        .LVL_TRSL_OE_N(LVL_TRSL_OE_N),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .UCI_ADC_CSN(UCI_ADC_CSN),
        .UCI_ADC_MISO(UCI_ADC_MISO),
        .UCI_ADC_MOSI(UCI_ADC_MOSI),
        .UCI_ADC_SCK(UCI_ADC_SCK),
        .ch0_lpddr4_trip1_ca_a(ch0_lpddr4_trip1_ca_a),
        .ch0_lpddr4_trip1_ca_b(ch0_lpddr4_trip1_ca_b),
        .ch0_lpddr4_trip1_ck_c_a(ch0_lpddr4_trip1_ck_c_a),
        .ch0_lpddr4_trip1_ck_c_b(ch0_lpddr4_trip1_ck_c_b),
        .ch0_lpddr4_trip1_ck_t_a(ch0_lpddr4_trip1_ck_t_a),
        .ch0_lpddr4_trip1_ck_t_b(ch0_lpddr4_trip1_ck_t_b),
        .ch0_lpddr4_trip1_cke_a(ch0_lpddr4_trip1_cke_a),
        .ch0_lpddr4_trip1_cke_b(ch0_lpddr4_trip1_cke_b),
        .ch0_lpddr4_trip1_cs_a(ch0_lpddr4_trip1_cs_a),
        .ch0_lpddr4_trip1_cs_b(ch0_lpddr4_trip1_cs_b),
        .ch0_lpddr4_trip1_dmi_a(ch0_lpddr4_trip1_dmi_a),
        .ch0_lpddr4_trip1_dmi_b(ch0_lpddr4_trip1_dmi_b),
        .ch0_lpddr4_trip1_dq_a(ch0_lpddr4_trip1_dq_a),
        .ch0_lpddr4_trip1_dq_b(ch0_lpddr4_trip1_dq_b),
        .ch0_lpddr4_trip1_dqs_c_a(ch0_lpddr4_trip1_dqs_c_a),
        .ch0_lpddr4_trip1_dqs_c_b(ch0_lpddr4_trip1_dqs_c_b),
        .ch0_lpddr4_trip1_dqs_t_a(ch0_lpddr4_trip1_dqs_t_a),
        .ch0_lpddr4_trip1_dqs_t_b(ch0_lpddr4_trip1_dqs_t_b),
        .ch0_lpddr4_trip1_reset_n(ch0_lpddr4_trip1_reset_n),
        .ch0_lpddr4_trip2_ca_a(ch0_lpddr4_trip2_ca_a),
        .ch0_lpddr4_trip2_ca_b(ch0_lpddr4_trip2_ca_b),
        .ch0_lpddr4_trip2_ck_c_a(ch0_lpddr4_trip2_ck_c_a),
        .ch0_lpddr4_trip2_ck_c_b(ch0_lpddr4_trip2_ck_c_b),
        .ch0_lpddr4_trip2_ck_t_a(ch0_lpddr4_trip2_ck_t_a),
        .ch0_lpddr4_trip2_ck_t_b(ch0_lpddr4_trip2_ck_t_b),
        .ch0_lpddr4_trip2_cke_a(ch0_lpddr4_trip2_cke_a),
        .ch0_lpddr4_trip2_cke_b(ch0_lpddr4_trip2_cke_b),
        .ch0_lpddr4_trip2_cs_a(ch0_lpddr4_trip2_cs_a),
        .ch0_lpddr4_trip2_cs_b(ch0_lpddr4_trip2_cs_b),
        .ch0_lpddr4_trip2_dmi_a(ch0_lpddr4_trip2_dmi_a),
        .ch0_lpddr4_trip2_dmi_b(ch0_lpddr4_trip2_dmi_b),
        .ch0_lpddr4_trip2_dq_a(ch0_lpddr4_trip2_dq_a),
        .ch0_lpddr4_trip2_dq_b(ch0_lpddr4_trip2_dq_b),
        .ch0_lpddr4_trip2_dqs_c_a(ch0_lpddr4_trip2_dqs_c_a),
        .ch0_lpddr4_trip2_dqs_c_b(ch0_lpddr4_trip2_dqs_c_b),
        .ch0_lpddr4_trip2_dqs_t_a(ch0_lpddr4_trip2_dqs_t_a),
        .ch0_lpddr4_trip2_dqs_t_b(ch0_lpddr4_trip2_dqs_t_b),
        .ch0_lpddr4_trip2_reset_n(ch0_lpddr4_trip2_reset_n),
        .ch0_lpddr4_trip3_ca_a(ch0_lpddr4_trip3_ca_a),
        .ch0_lpddr4_trip3_ca_b(ch0_lpddr4_trip3_ca_b),
        .ch0_lpddr4_trip3_ck_c_a(ch0_lpddr4_trip3_ck_c_a),
        .ch0_lpddr4_trip3_ck_c_b(ch0_lpddr4_trip3_ck_c_b),
        .ch0_lpddr4_trip3_ck_t_a(ch0_lpddr4_trip3_ck_t_a),
        .ch0_lpddr4_trip3_ck_t_b(ch0_lpddr4_trip3_ck_t_b),
        .ch0_lpddr4_trip3_cke_a(ch0_lpddr4_trip3_cke_a),
        .ch0_lpddr4_trip3_cke_b(ch0_lpddr4_trip3_cke_b),
        .ch0_lpddr4_trip3_cs_a(ch0_lpddr4_trip3_cs_a),
        .ch0_lpddr4_trip3_cs_b(ch0_lpddr4_trip3_cs_b),
        .ch0_lpddr4_trip3_dmi_a(ch0_lpddr4_trip3_dmi_a),
        .ch0_lpddr4_trip3_dmi_b(ch0_lpddr4_trip3_dmi_b),
        .ch0_lpddr4_trip3_dq_a(ch0_lpddr4_trip3_dq_a),
        .ch0_lpddr4_trip3_dq_b(ch0_lpddr4_trip3_dq_b),
        .ch0_lpddr4_trip3_dqs_c_a(ch0_lpddr4_trip3_dqs_c_a),
        .ch0_lpddr4_trip3_dqs_c_b(ch0_lpddr4_trip3_dqs_c_b),
        .ch0_lpddr4_trip3_dqs_t_a(ch0_lpddr4_trip3_dqs_t_a),
        .ch0_lpddr4_trip3_dqs_t_b(ch0_lpddr4_trip3_dqs_t_b),
        .ch0_lpddr4_trip3_reset_n(ch0_lpddr4_trip3_reset_n),
        .ch1_lpddr4_trip1_ca_a(ch1_lpddr4_trip1_ca_a),
        .ch1_lpddr4_trip1_ca_b(ch1_lpddr4_trip1_ca_b),
        .ch1_lpddr4_trip1_ck_c_a(ch1_lpddr4_trip1_ck_c_a),
        .ch1_lpddr4_trip1_ck_c_b(ch1_lpddr4_trip1_ck_c_b),
        .ch1_lpddr4_trip1_ck_t_a(ch1_lpddr4_trip1_ck_t_a),
        .ch1_lpddr4_trip1_ck_t_b(ch1_lpddr4_trip1_ck_t_b),
        .ch1_lpddr4_trip1_cke_a(ch1_lpddr4_trip1_cke_a),
        .ch1_lpddr4_trip1_cke_b(ch1_lpddr4_trip1_cke_b),
        .ch1_lpddr4_trip1_cs_a(ch1_lpddr4_trip1_cs_a),
        .ch1_lpddr4_trip1_cs_b(ch1_lpddr4_trip1_cs_b),
        .ch1_lpddr4_trip1_dmi_a(ch1_lpddr4_trip1_dmi_a),
        .ch1_lpddr4_trip1_dmi_b(ch1_lpddr4_trip1_dmi_b),
        .ch1_lpddr4_trip1_dq_a(ch1_lpddr4_trip1_dq_a),
        .ch1_lpddr4_trip1_dq_b(ch1_lpddr4_trip1_dq_b),
        .ch1_lpddr4_trip1_dqs_c_a(ch1_lpddr4_trip1_dqs_c_a),
        .ch1_lpddr4_trip1_dqs_c_b(ch1_lpddr4_trip1_dqs_c_b),
        .ch1_lpddr4_trip1_dqs_t_a(ch1_lpddr4_trip1_dqs_t_a),
        .ch1_lpddr4_trip1_dqs_t_b(ch1_lpddr4_trip1_dqs_t_b),
        .ch1_lpddr4_trip1_reset_n(ch1_lpddr4_trip1_reset_n),
        .ch1_lpddr4_trip2_ca_a(ch1_lpddr4_trip2_ca_a),
        .ch1_lpddr4_trip2_ca_b(ch1_lpddr4_trip2_ca_b),
        .ch1_lpddr4_trip2_ck_c_a(ch1_lpddr4_trip2_ck_c_a),
        .ch1_lpddr4_trip2_ck_c_b(ch1_lpddr4_trip2_ck_c_b),
        .ch1_lpddr4_trip2_ck_t_a(ch1_lpddr4_trip2_ck_t_a),
        .ch1_lpddr4_trip2_ck_t_b(ch1_lpddr4_trip2_ck_t_b),
        .ch1_lpddr4_trip2_cke_a(ch1_lpddr4_trip2_cke_a),
        .ch1_lpddr4_trip2_cke_b(ch1_lpddr4_trip2_cke_b),
        .ch1_lpddr4_trip2_cs_a(ch1_lpddr4_trip2_cs_a),
        .ch1_lpddr4_trip2_cs_b(ch1_lpddr4_trip2_cs_b),
        .ch1_lpddr4_trip2_dmi_a(ch1_lpddr4_trip2_dmi_a),
        .ch1_lpddr4_trip2_dmi_b(ch1_lpddr4_trip2_dmi_b),
        .ch1_lpddr4_trip2_dq_a(ch1_lpddr4_trip2_dq_a),
        .ch1_lpddr4_trip2_dq_b(ch1_lpddr4_trip2_dq_b),
        .ch1_lpddr4_trip2_dqs_c_a(ch1_lpddr4_trip2_dqs_c_a),
        .ch1_lpddr4_trip2_dqs_c_b(ch1_lpddr4_trip2_dqs_c_b),
        .ch1_lpddr4_trip2_dqs_t_a(ch1_lpddr4_trip2_dqs_t_a),
        .ch1_lpddr4_trip2_dqs_t_b(ch1_lpddr4_trip2_dqs_t_b),
        .ch1_lpddr4_trip2_reset_n(ch1_lpddr4_trip2_reset_n),
        .ch1_lpddr4_trip3_ca_a(ch1_lpddr4_trip3_ca_a),
        .ch1_lpddr4_trip3_ca_b(ch1_lpddr4_trip3_ca_b),
        .ch1_lpddr4_trip3_ck_c_a(ch1_lpddr4_trip3_ck_c_a),
        .ch1_lpddr4_trip3_ck_c_b(ch1_lpddr4_trip3_ck_c_b),
        .ch1_lpddr4_trip3_ck_t_a(ch1_lpddr4_trip3_ck_t_a),
        .ch1_lpddr4_trip3_ck_t_b(ch1_lpddr4_trip3_ck_t_b),
        .ch1_lpddr4_trip3_cke_a(ch1_lpddr4_trip3_cke_a),
        .ch1_lpddr4_trip3_cke_b(ch1_lpddr4_trip3_cke_b),
        .ch1_lpddr4_trip3_cs_a(ch1_lpddr4_trip3_cs_a),
        .ch1_lpddr4_trip3_cs_b(ch1_lpddr4_trip3_cs_b),
        .ch1_lpddr4_trip3_dmi_a(ch1_lpddr4_trip3_dmi_a),
        .ch1_lpddr4_trip3_dmi_b(ch1_lpddr4_trip3_dmi_b),
        .ch1_lpddr4_trip3_dq_a(ch1_lpddr4_trip3_dq_a),
        .ch1_lpddr4_trip3_dq_b(ch1_lpddr4_trip3_dq_b),
        .ch1_lpddr4_trip3_dqs_c_a(ch1_lpddr4_trip3_dqs_c_a),
        .ch1_lpddr4_trip3_dqs_c_b(ch1_lpddr4_trip3_dqs_c_b),
        .ch1_lpddr4_trip3_dqs_t_a(ch1_lpddr4_trip3_dqs_t_a),
        .ch1_lpddr4_trip3_dqs_t_b(ch1_lpddr4_trip3_dqs_t_b),
        .ch1_lpddr4_trip3_reset_n(ch1_lpddr4_trip3_reset_n),
        .lpddr4_clk1_clk_n(lpddr4_clk1_clk_n),
        .lpddr4_clk1_clk_p(lpddr4_clk1_clk_p),
        .lpddr4_clk2_clk_n(lpddr4_clk2_clk_n),
        .lpddr4_clk2_clk_p(lpddr4_clk2_clk_p),
        .lpddr4_clk3_clk_n(lpddr4_clk3_clk_n),
        .lpddr4_clk3_clk_p(lpddr4_clk3_clk_p));
endmodule
