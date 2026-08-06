// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module top_level (
  ch0_lpddr4_trip1_dq_a,
  ch0_lpddr4_trip1_dq_b,
  ch0_lpddr4_trip1_dqs_t_a,
  ch0_lpddr4_trip1_dqs_t_b,
  ch0_lpddr4_trip1_dqs_c_a,
  ch0_lpddr4_trip1_dqs_c_b,
  ch0_lpddr4_trip1_ca_a,
  ch0_lpddr4_trip1_ca_b,
  ch0_lpddr4_trip1_cs_a,
  ch0_lpddr4_trip1_cs_b,
  ch0_lpddr4_trip1_ck_t_a,
  ch0_lpddr4_trip1_ck_t_b,
  ch0_lpddr4_trip1_ck_c_a,
  ch0_lpddr4_trip1_ck_c_b,
  ch0_lpddr4_trip1_cke_a,
  ch0_lpddr4_trip1_cke_b,
  ch0_lpddr4_trip1_dmi_a,
  ch0_lpddr4_trip1_dmi_b,
  ch0_lpddr4_trip1_reset_n,
  ch0_lpddr4_trip2_dq_a,
  ch0_lpddr4_trip2_dq_b,
  ch0_lpddr4_trip2_dqs_t_a,
  ch0_lpddr4_trip2_dqs_t_b,
  ch0_lpddr4_trip2_dqs_c_a,
  ch0_lpddr4_trip2_dqs_c_b,
  ch0_lpddr4_trip2_ca_a,
  ch0_lpddr4_trip2_ca_b,
  ch0_lpddr4_trip2_cs_a,
  ch0_lpddr4_trip2_cs_b,
  ch0_lpddr4_trip2_ck_t_a,
  ch0_lpddr4_trip2_ck_t_b,
  ch0_lpddr4_trip2_ck_c_a,
  ch0_lpddr4_trip2_ck_c_b,
  ch0_lpddr4_trip2_cke_a,
  ch0_lpddr4_trip2_cke_b,
  ch0_lpddr4_trip2_dmi_a,
  ch0_lpddr4_trip2_dmi_b,
  ch0_lpddr4_trip2_reset_n,
  ch0_lpddr4_trip3_dq_a,
  ch0_lpddr4_trip3_dq_b,
  ch0_lpddr4_trip3_dqs_t_a,
  ch0_lpddr4_trip3_dqs_t_b,
  ch0_lpddr4_trip3_dqs_c_a,
  ch0_lpddr4_trip3_dqs_c_b,
  ch0_lpddr4_trip3_ca_a,
  ch0_lpddr4_trip3_ca_b,
  ch0_lpddr4_trip3_cs_a,
  ch0_lpddr4_trip3_cs_b,
  ch0_lpddr4_trip3_ck_t_a,
  ch0_lpddr4_trip3_ck_t_b,
  ch0_lpddr4_trip3_ck_c_a,
  ch0_lpddr4_trip3_ck_c_b,
  ch0_lpddr4_trip3_cke_a,
  ch0_lpddr4_trip3_cke_b,
  ch0_lpddr4_trip3_dmi_a,
  ch0_lpddr4_trip3_dmi_b,
  ch0_lpddr4_trip3_reset_n,
  ch1_lpddr4_trip1_dq_a,
  ch1_lpddr4_trip1_dq_b,
  ch1_lpddr4_trip1_dqs_t_a,
  ch1_lpddr4_trip1_dqs_t_b,
  ch1_lpddr4_trip1_dqs_c_a,
  ch1_lpddr4_trip1_dqs_c_b,
  ch1_lpddr4_trip1_ca_a,
  ch1_lpddr4_trip1_ca_b,
  ch1_lpddr4_trip1_cs_a,
  ch1_lpddr4_trip1_cs_b,
  ch1_lpddr4_trip1_ck_t_a,
  ch1_lpddr4_trip1_ck_t_b,
  ch1_lpddr4_trip1_ck_c_a,
  ch1_lpddr4_trip1_ck_c_b,
  ch1_lpddr4_trip1_cke_a,
  ch1_lpddr4_trip1_cke_b,
  ch1_lpddr4_trip1_dmi_a,
  ch1_lpddr4_trip1_dmi_b,
  ch1_lpddr4_trip1_reset_n,
  ch1_lpddr4_trip2_dq_a,
  ch1_lpddr4_trip2_dq_b,
  ch1_lpddr4_trip2_dqs_t_a,
  ch1_lpddr4_trip2_dqs_t_b,
  ch1_lpddr4_trip2_dqs_c_a,
  ch1_lpddr4_trip2_dqs_c_b,
  ch1_lpddr4_trip2_ca_a,
  ch1_lpddr4_trip2_ca_b,
  ch1_lpddr4_trip2_cs_a,
  ch1_lpddr4_trip2_cs_b,
  ch1_lpddr4_trip2_ck_t_a,
  ch1_lpddr4_trip2_ck_t_b,
  ch1_lpddr4_trip2_ck_c_a,
  ch1_lpddr4_trip2_ck_c_b,
  ch1_lpddr4_trip2_cke_a,
  ch1_lpddr4_trip2_cke_b,
  ch1_lpddr4_trip2_dmi_a,
  ch1_lpddr4_trip2_dmi_b,
  ch1_lpddr4_trip2_reset_n,
  ch1_lpddr4_trip3_dq_a,
  ch1_lpddr4_trip3_dq_b,
  ch1_lpddr4_trip3_dqs_t_a,
  ch1_lpddr4_trip3_dqs_t_b,
  ch1_lpddr4_trip3_dqs_c_a,
  ch1_lpddr4_trip3_dqs_c_b,
  ch1_lpddr4_trip3_ca_a,
  ch1_lpddr4_trip3_ca_b,
  ch1_lpddr4_trip3_cs_a,
  ch1_lpddr4_trip3_cs_b,
  ch1_lpddr4_trip3_ck_t_a,
  ch1_lpddr4_trip3_ck_t_b,
  ch1_lpddr4_trip3_ck_c_a,
  ch1_lpddr4_trip3_ck_c_b,
  ch1_lpddr4_trip3_cke_a,
  ch1_lpddr4_trip3_cke_b,
  ch1_lpddr4_trip3_dmi_a,
  ch1_lpddr4_trip3_dmi_b,
  ch1_lpddr4_trip3_reset_n,
  lpddr4_clk1_clk_p,
  lpddr4_clk1_clk_n,
  lpddr4_clk2_clk_p,
  lpddr4_clk2_clk_n,
  lpddr4_clk3_clk_p,
  lpddr4_clk3_clk_n,
  UART_rxd,
  UART_txd,
  LVDS_CLK_clk_n,
  LVDS_CLK_clk_p,
  CHIP_SPI_CSN,
  CHIP_SPI_MOSI,
  CHIP_SPI_SCK,
  CHIP_SPI_MISO,
  UCI_ADC_CSN,
  UCI_ADC_SCK,
  UCI_ADC_MOSI,
  UCI_ADC_MISO,
  CHIP_RSTB,
  LVL_TRSL_OE_N,
  CHIP_HSI_CLK,
  CHIP_VDDIO,
  CHIP_VDDLVDS,
  CHIP_VDD,
  CHIP_VDDA,
  CHIP_RS0,
  CHIP_RS256,
  CHIP_GPIO_BYTE_DIR,
  CHIP_GPIO15,
  CHIP_GPIO13,
  CHIP_GPIO15_DIR,
  CHIP_PA_SYNC
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch0_lpddr4_trip1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip1, CAN_DEBUG false" *)
  inout [15:0]ch0_lpddr4_trip1_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQ_B" *)
  inout [15:0]ch0_lpddr4_trip1_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_T_A" *)
  inout [1:0]ch0_lpddr4_trip1_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_T_B" *)
  inout [1:0]ch0_lpddr4_trip1_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_C_A" *)
  inout [1:0]ch0_lpddr4_trip1_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_C_B" *)
  inout [1:0]ch0_lpddr4_trip1_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CA_A" *)
  output [5:0]ch0_lpddr4_trip1_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CA_B" *)
  output [5:0]ch0_lpddr4_trip1_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CS_A" *)
  output ch0_lpddr4_trip1_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CS_B" *)
  output ch0_lpddr4_trip1_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_T_A" *)
  output ch0_lpddr4_trip1_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_T_B" *)
  output ch0_lpddr4_trip1_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_C_A" *)
  output ch0_lpddr4_trip1_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_C_B" *)
  output ch0_lpddr4_trip1_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CKE_A" *)
  output ch0_lpddr4_trip1_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CKE_B" *)
  output ch0_lpddr4_trip1_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DMI_A" *)
  inout [1:0]ch0_lpddr4_trip1_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DMI_B" *)
  inout [1:0]ch0_lpddr4_trip1_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 RESET_N" *)
  output ch0_lpddr4_trip1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch0_lpddr4_trip2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip2, CAN_DEBUG false" *)
  inout [15:0]ch0_lpddr4_trip2_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQ_B" *)
  inout [15:0]ch0_lpddr4_trip2_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_T_A" *)
  inout [1:0]ch0_lpddr4_trip2_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_T_B" *)
  inout [1:0]ch0_lpddr4_trip2_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_C_A" *)
  inout [1:0]ch0_lpddr4_trip2_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_C_B" *)
  inout [1:0]ch0_lpddr4_trip2_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CA_A" *)
  output [5:0]ch0_lpddr4_trip2_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CA_B" *)
  output [5:0]ch0_lpddr4_trip2_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CS_A" *)
  output ch0_lpddr4_trip2_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CS_B" *)
  output ch0_lpddr4_trip2_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_T_A" *)
  output ch0_lpddr4_trip2_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_T_B" *)
  output ch0_lpddr4_trip2_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_C_A" *)
  output ch0_lpddr4_trip2_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_C_B" *)
  output ch0_lpddr4_trip2_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CKE_A" *)
  output ch0_lpddr4_trip2_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CKE_B" *)
  output ch0_lpddr4_trip2_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DMI_A" *)
  inout [1:0]ch0_lpddr4_trip2_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DMI_B" *)
  inout [1:0]ch0_lpddr4_trip2_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 RESET_N" *)
  output ch0_lpddr4_trip2_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch0_lpddr4_trip3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip3, CAN_DEBUG false" *)
  inout [15:0]ch0_lpddr4_trip3_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQ_B" *)
  inout [15:0]ch0_lpddr4_trip3_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_T_A" *)
  inout [1:0]ch0_lpddr4_trip3_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_T_B" *)
  inout [1:0]ch0_lpddr4_trip3_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_C_A" *)
  inout [1:0]ch0_lpddr4_trip3_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_C_B" *)
  inout [1:0]ch0_lpddr4_trip3_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CA_A" *)
  output [5:0]ch0_lpddr4_trip3_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CA_B" *)
  output [5:0]ch0_lpddr4_trip3_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CS_A" *)
  output ch0_lpddr4_trip3_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CS_B" *)
  output ch0_lpddr4_trip3_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_T_A" *)
  output ch0_lpddr4_trip3_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_T_B" *)
  output ch0_lpddr4_trip3_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_C_A" *)
  output ch0_lpddr4_trip3_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_C_B" *)
  output ch0_lpddr4_trip3_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CKE_A" *)
  output ch0_lpddr4_trip3_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CKE_B" *)
  output ch0_lpddr4_trip3_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DMI_A" *)
  inout [1:0]ch0_lpddr4_trip3_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DMI_B" *)
  inout [1:0]ch0_lpddr4_trip3_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 RESET_N" *)
  output ch0_lpddr4_trip3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch1_lpddr4_trip1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip1, CAN_DEBUG false" *)
  inout [15:0]ch1_lpddr4_trip1_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQ_B" *)
  inout [15:0]ch1_lpddr4_trip1_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_T_A" *)
  inout [1:0]ch1_lpddr4_trip1_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_T_B" *)
  inout [1:0]ch1_lpddr4_trip1_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_C_A" *)
  inout [1:0]ch1_lpddr4_trip1_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_C_B" *)
  inout [1:0]ch1_lpddr4_trip1_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CA_A" *)
  output [5:0]ch1_lpddr4_trip1_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CA_B" *)
  output [5:0]ch1_lpddr4_trip1_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CS_A" *)
  output ch1_lpddr4_trip1_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CS_B" *)
  output ch1_lpddr4_trip1_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_T_A" *)
  output ch1_lpddr4_trip1_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_T_B" *)
  output ch1_lpddr4_trip1_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_C_A" *)
  output ch1_lpddr4_trip1_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_C_B" *)
  output ch1_lpddr4_trip1_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CKE_A" *)
  output ch1_lpddr4_trip1_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CKE_B" *)
  output ch1_lpddr4_trip1_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DMI_A" *)
  inout [1:0]ch1_lpddr4_trip1_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DMI_B" *)
  inout [1:0]ch1_lpddr4_trip1_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 RESET_N" *)
  output ch1_lpddr4_trip1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch1_lpddr4_trip2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip2, CAN_DEBUG false" *)
  inout [15:0]ch1_lpddr4_trip2_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQ_B" *)
  inout [15:0]ch1_lpddr4_trip2_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_T_A" *)
  inout [1:0]ch1_lpddr4_trip2_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_T_B" *)
  inout [1:0]ch1_lpddr4_trip2_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_C_A" *)
  inout [1:0]ch1_lpddr4_trip2_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_C_B" *)
  inout [1:0]ch1_lpddr4_trip2_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CA_A" *)
  output [5:0]ch1_lpddr4_trip2_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CA_B" *)
  output [5:0]ch1_lpddr4_trip2_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CS_A" *)
  output ch1_lpddr4_trip2_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CS_B" *)
  output ch1_lpddr4_trip2_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_T_A" *)
  output ch1_lpddr4_trip2_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_T_B" *)
  output ch1_lpddr4_trip2_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_C_A" *)
  output ch1_lpddr4_trip2_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_C_B" *)
  output ch1_lpddr4_trip2_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CKE_A" *)
  output ch1_lpddr4_trip2_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CKE_B" *)
  output ch1_lpddr4_trip2_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DMI_A" *)
  inout [1:0]ch1_lpddr4_trip2_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DMI_B" *)
  inout [1:0]ch1_lpddr4_trip2_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 RESET_N" *)
  output ch1_lpddr4_trip2_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQ_A" *)
  (* X_INTERFACE_MODE = "master ch1_lpddr4_trip3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip3, CAN_DEBUG false" *)
  inout [15:0]ch1_lpddr4_trip3_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQ_B" *)
  inout [15:0]ch1_lpddr4_trip3_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_T_A" *)
  inout [1:0]ch1_lpddr4_trip3_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_T_B" *)
  inout [1:0]ch1_lpddr4_trip3_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_C_A" *)
  inout [1:0]ch1_lpddr4_trip3_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_C_B" *)
  inout [1:0]ch1_lpddr4_trip3_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CA_A" *)
  output [5:0]ch1_lpddr4_trip3_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CA_B" *)
  output [5:0]ch1_lpddr4_trip3_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CS_A" *)
  output ch1_lpddr4_trip3_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CS_B" *)
  output ch1_lpddr4_trip3_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_T_A" *)
  output ch1_lpddr4_trip3_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_T_B" *)
  output ch1_lpddr4_trip3_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_C_A" *)
  output ch1_lpddr4_trip3_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_C_B" *)
  output ch1_lpddr4_trip3_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CKE_A" *)
  output ch1_lpddr4_trip3_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CKE_B" *)
  output ch1_lpddr4_trip3_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DMI_A" *)
  inout [1:0]ch1_lpddr4_trip3_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DMI_B" *)
  inout [1:0]ch1_lpddr4_trip3_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 RESET_N" *)
  output ch1_lpddr4_trip3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk1 CLK_P" *)
  (* X_INTERFACE_MODE = "slave lpddr4_clk1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk1, CAN_DEBUG false, FREQ_HZ 200321000" *)
  input lpddr4_clk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk1 CLK_N" *)
  input lpddr4_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk2 CLK_P" *)
  (* X_INTERFACE_MODE = "slave lpddr4_clk2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk2, CAN_DEBUG false, FREQ_HZ 200321000" *)
  input lpddr4_clk2_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk2 CLK_N" *)
  input lpddr4_clk2_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk3 CLK_P" *)
  (* X_INTERFACE_MODE = "slave lpddr4_clk3" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk3, CAN_DEBUG false, FREQ_HZ 200321000" *)
  input lpddr4_clk3_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk3 CLK_N" *)
  input lpddr4_clk3_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *)
  (* X_INTERFACE_MODE = "master UART" *)
  input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *)
  output UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_N" *)
  (* X_INTERFACE_MODE = "master LVDS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LVDS_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *)
  output [0:0]LVDS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_P" *)
  output [0:0]LVDS_CLK_clk_p;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_SPI_CSN;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_SPI_MOSI;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_SPI_SCK;
  (* X_INTERFACE_IGNORE = "true" *)
  input CHIP_SPI_MISO;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]UCI_ADC_CSN;
  (* X_INTERFACE_IGNORE = "true" *)
  output UCI_ADC_SCK;
  (* X_INTERFACE_IGNORE = "true" *)
  output UCI_ADC_MOSI;
  (* X_INTERFACE_IGNORE = "true" *)
  input UCI_ADC_MISO;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_RSTB;
  (* X_INTERFACE_IGNORE = "true" *)
  output LVL_TRSL_OE_N;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_HSI_CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_VDDIO;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_VDDLVDS;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_VDD;
  (* X_INTERFACE_IGNORE = "true" *)
  output CHIP_VDDA;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_RS0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_RS256;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_GPIO_BYTE_DIR;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_GPIO15;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_GPIO13;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CHIP_GPIO15_DIR;
  (* X_INTERFACE_IGNORE = "true" *)
  input CHIP_PA_SYNC;

  // stub module has no contents

endmodule
