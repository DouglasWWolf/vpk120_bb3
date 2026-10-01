//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Wed Sep 30 17:34:38 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_bank_imp_1TWLDZ5
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    resetn,
    slave_select,
    spi_miso,
    spi_mosi,
    spi_sclk);
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  input resetn;
  output [2:0]slave_select;
  input spi_miso;
  output spi_mosi;
  output spi_sclk;

  wire [7:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire clk;
  wire [383:0]ltc1867l_adc_values;
  wire resetn;
  wire [2:0]slave_select;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sclk;

  top_level_axi_adc_bank_0_0 axi_adc_bank
       (.S_AXI_ARADDR(S_AXI_araddr),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR(S_AXI_awaddr),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA(S_AXI_wdata),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB(S_AXI_wstrb),
        .S_AXI_WVALID(S_AXI_wvalid),
        .adc(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn));
  top_level_ltc1867l_0_0 ltc1867l
       (.adc_values(ltc1867l_adc_values),
        .clk(clk),
        .resetn(resetn),
        .slave_select(slave_select),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sclk(spi_sclk));
endmodule

module advio_imp_1LMY484
   (LVDS_BANKA_clk_n,
    LVDS_BANKA_clk_p,
    LVDS_DN,
    LVDS_DP,
    clk_192,
    data_to_fabric_data_a,
    rxen_vtc_data_a,
    rxtx_cntvaluein_data_a,
    rxtx_ld_data_a,
    soft_reset);
  input [0:0]LVDS_BANKA_clk_n;
  input [0:0]LVDS_BANKA_clk_p;
  input [7:0]LVDS_DN;
  input [7:0]LVDS_DP;
  input clk_192;
  output [63:0]data_to_fabric_data_a;
  input [7:0]rxen_vtc_data_a;
  input [71:0]rxtx_cntvaluein_data_a;
  input [7:0]rxtx_ld_data_a;
  input soft_reset;

  wire [0:0]LVDS_BANKA_clk_n;
  wire [0:0]LVDS_BANKA_clk_p;
  wire [7:0]LVDS_DN;
  wire [7:0]LVDS_DP;
  wire advanced_io_wizard_0_intf_rdy;
  wire advanced_io_wizard_bank0_pll_locked;
  wire [8:0]advanced_io_wizard_dly_rdy;
  wire [8:0]advanced_io_wizard_fifo_empty;
  wire clk_192;
  wire [63:0]data_to_fabric_data_a;
  wire lvds_advio_reset_mgr_en_vtc;
  wire [8:0]lvds_advio_reset_mgr_fifo_rd_en;
  wire lvds_advio_reset_mgr_rst;
  wire [7:0]rxen_vtc_data_a;
  wire [71:0]rxtx_cntvaluein_data_a;
  wire [7:0]rxtx_ld_data_a;
  wire soft_reset;
  wire [0:0]zero_0_dout;
  wire [7:0]zero_8_dout;
  wire [8:0]zero_9_dout;
  wire zero_dout;

  top_level_advanced_io_wizard_0_0 advanced_io_wizard
       (.Strobe_0_n(LVDS_BANKA_clk_n),
        .Strobe_0_p(LVDS_BANKA_clk_p),
        .bank0_pll_clkin(clk_192),
        .bank0_pll_locked(advanced_io_wizard_bank0_pll_locked),
        .bank0_pll_rst_pll(zero_dout),
        .ctrl_clk(clk_192),
        .data_a_n(LVDS_DN),
        .data_a_p(LVDS_DP),
        .data_to_fabric_data_a(data_to_fabric_data_a),
        .dly_rdy(advanced_io_wizard_dly_rdy),
        .en_vtc(lvds_advio_reset_mgr_en_vtc),
        .fifo_empty(advanced_io_wizard_fifo_empty),
        .fifo_rd_clk(clk_192),
        .fifo_rd_en(lvds_advio_reset_mgr_fifo_rd_en),
        .intf_rdy(advanced_io_wizard_0_intf_rdy),
        .rst(lvds_advio_reset_mgr_rst),
        .rxen_vtc_Strobe_0(zero_0_dout),
        .rxen_vtc_data_a(rxen_vtc_data_a),
        .rxtx_ce_Strobe_0(zero_0_dout),
        .rxtx_ce_data_a(zero_8_dout),
        .rxtx_cntvaluein_Strobe_0(zero_9_dout),
        .rxtx_cntvaluein_data_a(rxtx_cntvaluein_data_a),
        .rxtx_inc_Strobe_0(zero_0_dout),
        .rxtx_inc_data_a(zero_8_dout),
        .rxtx_ld_Strobe_0(zero_0_dout),
        .rxtx_ld_data_a(rxtx_ld_data_a),
        .rxtx_sel_Strobe_0(zero_0_dout),
        .rxtx_sel_data_a(zero_8_dout),
        .txen_vtc_Strobe_0(zero_0_dout),
        .txen_vtc_data_a(zero_8_dout));
  top_level_lvds_advio_reset_mgr_0_0 lvds_advio_reset_mgr
       (.async_bank0_pll_locked(advanced_io_wizard_bank0_pll_locked),
        .async_dly_rdy(advanced_io_wizard_dly_rdy),
        .async_fifo_empty(advanced_io_wizard_fifo_empty),
        .async_intf_rdy(advanced_io_wizard_0_intf_rdy),
        .async_soft_reset(soft_reset),
        .clk(clk_192),
        .en_vtc(lvds_advio_reset_mgr_en_vtc),
        .fifo_rd_en(lvds_advio_reset_mgr_fifo_rd_en),
        .rst(lvds_advio_reset_mgr_rst));
  top_level_lvds_startup_0_0 lvds_startup
       (.clk(clk_192),
        .reset_out(zero_dout));
  assign zero_0_dout = 1'h0;
  assign zero_8_dout = 8'h00;
  assign zero_9_dout = 9'h000;
endmodule

module axi_uart_bridge_imp_SLJY4W
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    UART_rxd,
    UART_txd,
    aclk,
    aresetn);
  output [63:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  input aclk;
  input aresetn;

  wire [63:0]M_AXI_araddr;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire UART_rxd;
  wire UART_txd;
  wire aclk;
  wire aresetn;
  wire [31:0]axi_uart_bridge_M_UART_ARADDR;
  wire axi_uart_bridge_M_UART_ARREADY;
  wire axi_uart_bridge_M_UART_ARVALID;
  wire [31:0]axi_uart_bridge_M_UART_AWADDR;
  wire axi_uart_bridge_M_UART_AWREADY;
  wire axi_uart_bridge_M_UART_AWVALID;
  wire axi_uart_bridge_M_UART_BREADY;
  wire [1:0]axi_uart_bridge_M_UART_BRESP;
  wire axi_uart_bridge_M_UART_BVALID;
  wire [31:0]axi_uart_bridge_M_UART_RDATA;
  wire axi_uart_bridge_M_UART_RREADY;
  wire [1:0]axi_uart_bridge_M_UART_RRESP;
  wire axi_uart_bridge_M_UART_RVALID;
  wire [31:0]axi_uart_bridge_M_UART_WDATA;
  wire axi_uart_bridge_M_UART_WREADY;
  wire [3:0]axi_uart_bridge_M_UART_WSTRB;
  wire axi_uart_bridge_M_UART_WVALID;
  wire axi_uartlite_interrupt;

  top_level_axi_uart_bridge_0_0 axi_uart_bridge
       (.M_AXI_ARADDR(M_AXI_araddr),
        .M_AXI_ARREADY(M_AXI_arready),
        .M_AXI_ARVALID(M_AXI_arvalid),
        .M_AXI_AWADDR(M_AXI_awaddr),
        .M_AXI_AWREADY(M_AXI_awready),
        .M_AXI_AWVALID(M_AXI_awvalid),
        .M_AXI_BREADY(M_AXI_bready),
        .M_AXI_BRESP(M_AXI_bresp),
        .M_AXI_BVALID(M_AXI_bvalid),
        .M_AXI_RDATA(M_AXI_rdata),
        .M_AXI_RREADY(M_AXI_rready),
        .M_AXI_RRESP(M_AXI_rresp),
        .M_AXI_RVALID(M_AXI_rvalid),
        .M_AXI_WDATA(M_AXI_wdata),
        .M_AXI_WREADY(M_AXI_wready),
        .M_AXI_WSTRB(M_AXI_wstrb),
        .M_AXI_WVALID(M_AXI_wvalid),
        .M_UART_ARADDR(axi_uart_bridge_M_UART_ARADDR),
        .M_UART_ARREADY(axi_uart_bridge_M_UART_ARREADY),
        .M_UART_ARVALID(axi_uart_bridge_M_UART_ARVALID),
        .M_UART_AWADDR(axi_uart_bridge_M_UART_AWADDR),
        .M_UART_AWREADY(axi_uart_bridge_M_UART_AWREADY),
        .M_UART_AWVALID(axi_uart_bridge_M_UART_AWVALID),
        .M_UART_BREADY(axi_uart_bridge_M_UART_BREADY),
        .M_UART_BRESP(axi_uart_bridge_M_UART_BRESP),
        .M_UART_BVALID(axi_uart_bridge_M_UART_BVALID),
        .M_UART_RDATA(axi_uart_bridge_M_UART_RDATA),
        .M_UART_RREADY(axi_uart_bridge_M_UART_RREADY),
        .M_UART_RRESP(axi_uart_bridge_M_UART_RRESP),
        .M_UART_RVALID(axi_uart_bridge_M_UART_RVALID),
        .M_UART_WDATA(axi_uart_bridge_M_UART_WDATA),
        .M_UART_WREADY(axi_uart_bridge_M_UART_WREADY),
        .M_UART_WSTRB(axi_uart_bridge_M_UART_WSTRB),
        .M_UART_WVALID(axi_uart_bridge_M_UART_WVALID),
        .UART_INT(axi_uartlite_interrupt),
        .aclk(aclk),
        .aresetn(aresetn));
  top_level_axi_uartlite_0_0 axi_uartlite
       (.interrupt(axi_uartlite_interrupt),
        .rx(UART_rxd),
        .s_axi_aclk(aclk),
        .s_axi_araddr(axi_uart_bridge_M_UART_ARADDR[3:0]),
        .s_axi_aresetn(aresetn),
        .s_axi_arready(axi_uart_bridge_M_UART_ARREADY),
        .s_axi_arvalid(axi_uart_bridge_M_UART_ARVALID),
        .s_axi_awaddr(axi_uart_bridge_M_UART_AWADDR[3:0]),
        .s_axi_awready(axi_uart_bridge_M_UART_AWREADY),
        .s_axi_awvalid(axi_uart_bridge_M_UART_AWVALID),
        .s_axi_bready(axi_uart_bridge_M_UART_BREADY),
        .s_axi_bresp(axi_uart_bridge_M_UART_BRESP),
        .s_axi_bvalid(axi_uart_bridge_M_UART_BVALID),
        .s_axi_rdata(axi_uart_bridge_M_UART_RDATA),
        .s_axi_rready(axi_uart_bridge_M_UART_RREADY),
        .s_axi_rresp(axi_uart_bridge_M_UART_RRESP),
        .s_axi_rvalid(axi_uart_bridge_M_UART_RVALID),
        .s_axi_wdata(axi_uart_bridge_M_UART_WDATA),
        .s_axi_wready(axi_uart_bridge_M_UART_WREADY),
        .s_axi_wstrb(axi_uart_bridge_M_UART_WSTRB),
        .s_axi_wvalid(axi_uart_bridge_M_UART_WVALID),
        .tx(UART_txd));
endmodule

module clk_192_imp_1JPME8P
   (LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    clk_192,
    clk_200,
    resetn,
    resetn_192);
  output [0:0]LVDS_CLK_clk_n;
  output [0:0]LVDS_CLK_clk_p;
  output clk_192;
  input clk_200;
  input resetn;
  output resetn_192;

  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire clk_192;
  wire clk_200;
  wire clk_wizard_clk_768;
  wire resetn;
  wire resetn_192;

  top_level_clk_wizard_0_2 clk_wizard_192
       (.clk_192(clk_192),
        .clk_in1(clk_wizard_clk_768));
  top_level_clk_wizard_0_1 clk_wizard_768
       (.clk_768(clk_wizard_clk_768),
        .clk_in1(clk_200));
  top_level_util_ds_buf_0_0 util_ds_buf
       (.OBUF_DS_N(LVDS_CLK_clk_n),
        .OBUF_DS_P(LVDS_CLK_clk_p),
        .OBUF_IN(clk_wizard_clk_768));
  top_level_xpm_cdc_gen_0_0 xpm_aresetn_sync
       (.dest_arst(resetn_192),
        .dest_clk(clk_192),
        .src_arst(resetn));
endmodule

module frame_gen_imp_10O9CVK
   (CHIP_GPIO13,
    CHIP_GPIO15,
    CHIP_GPIO15_DIR,
    CHIP_GPIO_BYTE_DIR,
    CHIP_PA_SYNC,
    CHIP_RS0,
    CHIP_RS256,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axis_md_tdata,
    axis_md_tready,
    axis_md_tvalid,
    clk_192,
    sys_clk);
  output [0:0]CHIP_GPIO13;
  output [0:0]CHIP_GPIO15;
  output [0:0]CHIP_GPIO15_DIR;
  output [0:0]CHIP_GPIO_BYTE_DIR;
  input CHIP_PA_SYNC;
  output [0:0]CHIP_RS0;
  output [0:0]CHIP_RS256;
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [511:0]axis_md_tdata;
  input axis_md_tready;
  output axis_md_tvalid;
  input clk_192;
  input sys_clk;

  wire [0:0]CHIP_GPIO15;
  wire [0:0]CHIP_GPIO15_DIR;
  wire CHIP_PA_SYNC;
  wire \^CHIP_RS0 ;
  wire \^CHIP_RS256 ;
  wire [7:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [511:0]axis_md_tdata;
  wire axis_md_tready;
  wire axis_md_tvalid;
  wire [0:0]cdc_pa_sync_dest_out;
  wire clk_192_1;
  wire [511:0]framegen_ctl_axis_md_TDATA;
  wire framegen_ctl_axis_md_TREADY;
  wire framegen_ctl_axis_md_TVALID;
  wire sys_clk;

  assign CHIP_GPIO13[0] = CHIP_GPIO15;
  assign CHIP_GPIO_BYTE_DIR[0] = CHIP_GPIO15;
  assign CHIP_RS0[0] = \^CHIP_RS0 ;
  assign CHIP_RS256[0] = \^CHIP_RS256 ;
  assign clk_192_1 = clk_192;
  top_level_xpm_cdc_gen_0_1 cdc_pa_sync
       (.dest_clk(clk_192_1),
        .dest_out(cdc_pa_sync_dest_out),
        .src_clk(CHIP_GPIO15),
        .src_in(CHIP_PA_SYNC));
  top_level_framegen_ctl_0_0 framegen_ctl
       (.S_AXI_ARADDR(S_AXI_araddr),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR(S_AXI_awaddr),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA(S_AXI_wdata),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB(S_AXI_wstrb),
        .S_AXI_WVALID(S_AXI_wvalid),
        .axis_md_tdata(framegen_ctl_axis_md_TDATA),
        .axis_md_tready(framegen_ctl_axis_md_TREADY),
        .axis_md_tvalid(framegen_ctl_axis_md_TVALID),
        .clk(clk_192_1),
        .pa_sync_raw(CHIP_PA_SYNC),
        .resetn(CHIP_GPIO15_DIR),
        .rs0(\^CHIP_RS0 ),
        .rs256(\^CHIP_RS256 ));
  top_level_lvds_cdc_0 lvds_cdc
       (.m_axis_aclk(sys_clk),
        .m_axis_tdata(axis_md_tdata),
        .m_axis_tready(axis_md_tready),
        .m_axis_tvalid(axis_md_tvalid),
        .s_axis_aclk(clk_192_1),
        .s_axis_aresetn(CHIP_GPIO15_DIR),
        .s_axis_tdata(framegen_ctl_axis_md_TDATA),
        .s_axis_tready(framegen_ctl_axis_md_TREADY),
        .s_axis_tvalid(framegen_ctl_axis_md_TVALID));
  assign CHIP_GPIO15_DIR = 1'h1;
  top_level_axis_ila_0_1 pa_sync_ila
       (.clk(clk_192_1),
        .probe0(cdc_pa_sync_dest_out));
  assign CHIP_GPIO15 = 1'h0;
endmodule

module lvds_datapath_imp_18MX6XT
   (axis_out_tdata,
    axis_out_tready,
    axis_out_tvalid,
    clk_192,
    dbg_header_detected,
    frame_header,
    framing_errors,
    lvds_in,
    match_bits,
    max_lane_skew,
    missing_hdr_tdata,
    missing_hdr_tready,
    missing_hdr_tuser,
    missing_hdr_tvalid,
    resetn,
    sys_clk);
  output [511:0]axis_out_tdata;
  input axis_out_tready;
  output axis_out_tvalid;
  input clk_192;
  output [63:0]dbg_header_detected;
  input [31:0]frame_header;
  output [31:0]framing_errors;
  input [63:0]lvds_in;
  input [5:0]match_bits;
  output [7:0]max_lane_skew;
  output [31:0]missing_hdr_tdata;
  input missing_hdr_tready;
  output [63:0]missing_hdr_tuser;
  output missing_hdr_tvalid;
  input resetn;
  input sys_clk;

  wire [511:0]axis_out_tdata;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire clk_192;
  wire [63:0]dbg_header_detected;
  wire [31:0]frame_header;
  wire [31:0]framing_errors;
  wire [511:0]lvds_8to64_0_lvds_out;
  wire [511:0]lvds_framer_lvds_out;
  wire [63:0]lvds_framer_valid;
  wire [63:0]lvds_in;
  wire [511:0]lvds_lane_sync_axis_out1_TDATA;
  wire lvds_lane_sync_axis_out1_TVALID;
  wire [5:0]match_bits;
  wire [7:0]max_lane_skew;
  wire [31:0]missing_hdr_tdata;
  wire missing_hdr_tready;
  wire [63:0]missing_hdr_tuser;
  wire missing_hdr_tvalid;
  wire resetn;
  wire sys_clk;

  top_level_lvds_8to64_0_0 lvds_8to64
       (.clk(clk_192),
        .lvds_in(lvds_in),
        .lvds_out(lvds_8to64_0_lvds_out));
  top_level_axis_data_fifo_0_0 lvds_cdc
       (.m_axis_aclk(sys_clk),
        .m_axis_tdata(axis_out_tdata),
        .m_axis_tready(axis_out_tready),
        .m_axis_tvalid(axis_out_tvalid),
        .s_axis_aclk(clk_192),
        .s_axis_aresetn(resetn),
        .s_axis_tdata(lvds_lane_sync_axis_out1_TDATA),
        .s_axis_tvalid(lvds_lane_sync_axis_out1_TVALID));
  top_level_lvds_framer_0_0 lvds_framer
       (.clk(clk_192),
        .dbg_header_detected(dbg_header_detected),
        .frame_header(frame_header),
        .framing_errors(framing_errors),
        .lvds_in(lvds_8to64_0_lvds_out),
        .lvds_out(lvds_framer_lvds_out),
        .match_bits(match_bits),
        .max_lane_skew(max_lane_skew),
        .missing_hdr_tdata(missing_hdr_tdata),
        .missing_hdr_tready(missing_hdr_tready),
        .missing_hdr_tuser(missing_hdr_tuser),
        .missing_hdr_tvalid(missing_hdr_tvalid),
        .resetn(resetn),
        .valid(lvds_framer_valid));
  top_level_lvds_lane_sync_0_0 lvds_lane_sync
       (.axis_out_tdata(lvds_lane_sync_axis_out1_TDATA),
        .axis_out_tvalid(lvds_lane_sync_axis_out1_TVALID),
        .clk(clk_192),
        .in_valid(lvds_framer_valid),
        .lvds_in(lvds_framer_lvds_out),
        .resetn(resetn));
endmodule

module lvds_imp_1LT6GK4
   (LVDS_BANKA_clk_n,
    LVDS_BANKA_clk_p,
    LVDS_DN,
    LVDS_DP,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axis_out_tdata,
    axis_out_tready,
    axis_out_tvalid,
    clk_192,
    sys_clk);
  input [0:0]LVDS_BANKA_clk_n;
  input [0:0]LVDS_BANKA_clk_p;
  input [7:0]LVDS_DN;
  input [7:0]LVDS_DP;
  input [7:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [511:0]axis_out_tdata;
  input axis_out_tready;
  output axis_out_tvalid;
  input clk_192;
  input sys_clk;

  wire [0:0]LVDS_BANKA_clk_n;
  wire [0:0]LVDS_BANKA_clk_p;
  wire [7:0]LVDS_DN;
  wire [7:0]LVDS_DP;
  wire [7:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [7:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [63:0]advanced_io_wizard_0_data_to_fabric_data_a;
  wire [511:0]axis_out_tdata;
  wire axis_out_tready;
  wire axis_out_tvalid;
  wire clk_192_1;
  wire [2:0]lvds_advio_mgr_cal_write_en;
  wire [71:0]lvds_advio_mgr_rx_cntvaluein;
  wire [7:0]lvds_advio_mgr_rx_ld;
  wire [7:0]lvds_advio_mgr_rxen_vtc;
  wire [7:0]lvds_align_detect_0_align_err;
  wire [2:0]lvds_bitslip_0_bitslip_rd;
  wire [7:0]lvds_bitslip_0_dbg_lvds_lane;
  wire [63:0]lvds_bitslip_0_lvds_bus;
  wire [63:0]lvds_ctl_0_cal_mask;
  wire [11:0]lvds_ctl_0_cal_word;
  wire lvds_ctl_0_cal_word_wstb;
  wire lvds_ctl_clear_errors_stb;
  wire [31:0]lvds_ctl_frame_header;
  wire [5:0]lvds_ctl_hdr_match_bits;
  wire [5:0]lvds_ctl_lane_select;
  wire lvds_ctl_reset_hssio;
  wire [63:0]lvds_datapath_dbg_header_detected;
  wire [31:0]lvds_framer_framing_errors;
  wire [7:0]lvds_framer_max_lane_skew;
  wire [31:0]lvds_framer_missing_hdr_TDATA;
  wire lvds_framer_missing_hdr_TREADY;
  wire [63:0]lvds_framer_missing_hdr_TUSER;
  wire lvds_framer_missing_hdr_TVALID;
  wire [7:0]lvds_prbs15_check_0_prbs_err;
  wire [0:0]lvds_resetn_dout;
  wire sys_clk;

  assign clk_192_1 = clk_192;
  advio_imp_1LMY484 advio
       (.LVDS_BANKA_clk_n(LVDS_BANKA_clk_n),
        .LVDS_BANKA_clk_p(LVDS_BANKA_clk_p),
        .LVDS_DN(LVDS_DN),
        .LVDS_DP(LVDS_DP),
        .clk_192(clk_192_1),
        .data_to_fabric_data_a(advanced_io_wizard_0_data_to_fabric_data_a),
        .rxen_vtc_data_a(lvds_advio_mgr_rxen_vtc),
        .rxtx_cntvaluein_data_a(lvds_advio_mgr_rx_cntvaluein),
        .rxtx_ld_data_a(lvds_advio_mgr_rx_ld),
        .soft_reset(lvds_ctl_reset_hssio));
  top_level_axis_ila_0_2 axis_ila
       (.clk(clk_192_1),
        .probe0(lvds_datapath_dbg_header_detected),
        .probe1(lvds_bitslip_0_dbg_lvds_lane),
        .probe2(lvds_bitslip_0_lvds_bus));
  top_level_lvds_advio_mgr_0_0 lvds_advio_mgr
       (.cal_mask(lvds_ctl_0_cal_mask),
        .cal_word(lvds_ctl_0_cal_word),
        .cal_word_wstb(lvds_ctl_0_cal_word_wstb),
        .cal_write_en(lvds_advio_mgr_cal_write_en),
        .clk(clk_192_1),
        .resetn(lvds_resetn_dout),
        .rx_cntvaluein(lvds_advio_mgr_rx_cntvaluein),
        .rx_ld(lvds_advio_mgr_rx_ld),
        .rxen_vtc(lvds_advio_mgr_rxen_vtc));
  top_level_lvds_align_detect_0_0 lvds_align_detect
       (.align_err(lvds_align_detect_0_align_err),
        .clear_errors(lvds_ctl_clear_errors_stb),
        .clk(clk_192_1),
        .lvds_bus(lvds_bitslip_0_lvds_bus));
  top_level_lvds_bitslip_0_0 lvds_bitslip
       (.bitslip_rd(lvds_bitslip_0_bitslip_rd),
        .cal_mask(lvds_ctl_0_cal_mask),
        .cal_word(lvds_ctl_0_cal_word),
        .cal_word_wstb(lvds_ctl_0_cal_word_wstb),
        .clk(clk_192_1),
        .dbg_lvds_lane(lvds_bitslip_0_dbg_lvds_lane),
        .input_bus(advanced_io_wizard_0_data_to_fabric_data_a),
        .lane_select(lvds_ctl_lane_select),
        .lvds_bus(lvds_bitslip_0_lvds_bus),
        .resetn(lvds_resetn_dout));
  top_level_lvds_ctl_0_0 lvds_ctl
       (.S_AXI_ARADDR(S_AXI_araddr),
        .S_AXI_ARPROT(S_AXI_arprot),
        .S_AXI_ARREADY(S_AXI_arready),
        .S_AXI_ARVALID(S_AXI_arvalid),
        .S_AXI_AWADDR(S_AXI_awaddr),
        .S_AXI_AWPROT(S_AXI_awprot),
        .S_AXI_AWREADY(S_AXI_awready),
        .S_AXI_AWVALID(S_AXI_awvalid),
        .S_AXI_BREADY(S_AXI_bready),
        .S_AXI_BRESP(S_AXI_bresp),
        .S_AXI_BVALID(S_AXI_bvalid),
        .S_AXI_RDATA(S_AXI_rdata),
        .S_AXI_RREADY(S_AXI_rready),
        .S_AXI_RRESP(S_AXI_rresp),
        .S_AXI_RVALID(S_AXI_rvalid),
        .S_AXI_WDATA(S_AXI_wdata),
        .S_AXI_WREADY(S_AXI_wready),
        .S_AXI_WSTRB(S_AXI_wstrb),
        .S_AXI_WVALID(S_AXI_wvalid),
        .align_err({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,lvds_align_detect_0_align_err}),
        .cal_bitslip_rd(lvds_bitslip_0_bitslip_rd),
        .cal_delay_rd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cal_mask(lvds_ctl_0_cal_mask),
        .cal_word(lvds_ctl_0_cal_word),
        .cal_word_wstb(lvds_ctl_0_cal_word_wstb),
        .cal_write_en(lvds_advio_mgr_cal_write_en),
        .clear_errors_stb(lvds_ctl_clear_errors_stb),
        .clk(clk_192_1),
        .frame_header(lvds_ctl_frame_header),
        .framing_errors(lvds_framer_framing_errors),
        .hdr_match_bits(lvds_ctl_hdr_match_bits),
        .lane_select(lvds_ctl_lane_select),
        .max_lane_skew(lvds_framer_max_lane_skew),
        .missing_hdr_tdata(lvds_framer_missing_hdr_TDATA),
        .missing_hdr_tready(lvds_framer_missing_hdr_TREADY),
        .missing_hdr_tuser(lvds_framer_missing_hdr_TUSER),
        .missing_hdr_tvalid(lvds_framer_missing_hdr_TVALID),
        .prbs_err({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,lvds_prbs15_check_0_prbs_err}),
        .reset_hssio(lvds_ctl_reset_hssio),
        .resetn(lvds_resetn_dout));
  lvds_datapath_imp_18MX6XT lvds_datapath
       (.axis_out_tdata(axis_out_tdata),
        .axis_out_tready(axis_out_tready),
        .axis_out_tvalid(axis_out_tvalid),
        .clk_192(clk_192_1),
        .dbg_header_detected(lvds_datapath_dbg_header_detected),
        .frame_header(lvds_ctl_frame_header),
        .framing_errors(lvds_framer_framing_errors),
        .lvds_in(lvds_bitslip_0_lvds_bus),
        .match_bits(lvds_ctl_hdr_match_bits),
        .max_lane_skew(lvds_framer_max_lane_skew),
        .missing_hdr_tdata(lvds_framer_missing_hdr_TDATA),
        .missing_hdr_tready(lvds_framer_missing_hdr_TREADY),
        .missing_hdr_tuser(lvds_framer_missing_hdr_TUSER),
        .missing_hdr_tvalid(lvds_framer_missing_hdr_TVALID),
        .resetn(lvds_resetn_dout),
        .sys_clk(sys_clk));
  top_level_lvds_prbs15_check_0_0 lvds_prbs15_check_0
       (.clear_errors(lvds_ctl_clear_errors_stb),
        .clk(clk_192_1),
        .lvds_bus(lvds_bitslip_0_lvds_bus),
        .prbs_err(lvds_prbs15_check_0_prbs_err));
  assign lvds_resetn_dout = 1'h1;
endmodule

module mc_qsfp_imp_1T1R239
   (AXIS_FD_IN_tdata,
    AXIS_FD_IN_tready,
    AXIS_FD_IN_tvalid,
    AXIS_MD_IN_tdata,
    AXIS_MD_IN_tready,
    AXIS_MD_IN_tvalid,
    S_MC_CTL_araddr,
    S_MC_CTL_arprot,
    S_MC_CTL_arready,
    S_MC_CTL_arvalid,
    S_MC_CTL_awaddr,
    S_MC_CTL_awprot,
    S_MC_CTL_awready,
    S_MC_CTL_awvalid,
    S_MC_CTL_bready,
    S_MC_CTL_bresp,
    S_MC_CTL_bvalid,
    S_MC_CTL_rdata,
    S_MC_CTL_rready,
    S_MC_CTL_rresp,
    S_MC_CTL_rvalid,
    S_MC_CTL_wdata,
    S_MC_CTL_wready,
    S_MC_CTL_wstrb,
    S_MC_CTL_wvalid,
    aresetn,
    clk_250,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp_lpmode,
    rx0_aligned,
    rx1_aligned,
    s_qsfp_ctl_araddr,
    s_qsfp_ctl_arprot,
    s_qsfp_ctl_arready,
    s_qsfp_ctl_arvalid,
    s_qsfp_ctl_awaddr,
    s_qsfp_ctl_awprot,
    s_qsfp_ctl_awready,
    s_qsfp_ctl_awvalid,
    s_qsfp_ctl_bready,
    s_qsfp_ctl_bresp,
    s_qsfp_ctl_bvalid,
    s_qsfp_ctl_rdata,
    s_qsfp_ctl_rready,
    s_qsfp_ctl_rresp,
    s_qsfp_ctl_rvalid,
    s_qsfp_ctl_wdata,
    s_qsfp_ctl_wready,
    s_qsfp_ctl_wstrb,
    s_qsfp_ctl_wvalid);
  input [511:0]AXIS_FD_IN_tdata;
  output AXIS_FD_IN_tready;
  input AXIS_FD_IN_tvalid;
  input [511:0]AXIS_MD_IN_tdata;
  output AXIS_MD_IN_tready;
  input AXIS_MD_IN_tvalid;
  input [7:0]S_MC_CTL_araddr;
  input [2:0]S_MC_CTL_arprot;
  output S_MC_CTL_arready;
  input S_MC_CTL_arvalid;
  input [7:0]S_MC_CTL_awaddr;
  input [2:0]S_MC_CTL_awprot;
  output S_MC_CTL_awready;
  input S_MC_CTL_awvalid;
  input S_MC_CTL_bready;
  output [1:0]S_MC_CTL_bresp;
  output S_MC_CTL_bvalid;
  output [31:0]S_MC_CTL_rdata;
  input S_MC_CTL_rready;
  output [1:0]S_MC_CTL_rresp;
  output S_MC_CTL_rvalid;
  input [31:0]S_MC_CTL_wdata;
  output S_MC_CTL_wready;
  input [3:0]S_MC_CTL_wstrb;
  input S_MC_CTL_wvalid;
  input aresetn;
  input clk_250;
  input [0:0]qsfp0_clk_clk_n;
  input [0:0]qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  input [0:0]qsfp1_clk_clk_n;
  input [0:0]qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  output qsfp_lpmode;
  output rx0_aligned;
  output rx1_aligned;
  input [7:0]s_qsfp_ctl_araddr;
  input [2:0]s_qsfp_ctl_arprot;
  output s_qsfp_ctl_arready;
  input s_qsfp_ctl_arvalid;
  input [7:0]s_qsfp_ctl_awaddr;
  input [2:0]s_qsfp_ctl_awprot;
  output s_qsfp_ctl_awready;
  input s_qsfp_ctl_awvalid;
  input s_qsfp_ctl_bready;
  output [1:0]s_qsfp_ctl_bresp;
  output s_qsfp_ctl_bvalid;
  output [31:0]s_qsfp_ctl_rdata;
  input s_qsfp_ctl_rready;
  output [1:0]s_qsfp_ctl_rresp;
  output s_qsfp_ctl_rvalid;
  input [31:0]s_qsfp_ctl_wdata;
  output s_qsfp_ctl_wready;
  input [3:0]s_qsfp_ctl_wstrb;
  input s_qsfp_ctl_wvalid;

  wire [511:0]AXIS_FD_IN_tdata;
  wire AXIS_FD_IN_tready;
  wire AXIS_FD_IN_tvalid;
  wire [511:0]AXIS_MD_IN_tdata;
  wire AXIS_MD_IN_tready;
  wire AXIS_MD_IN_tvalid;
  wire [7:0]S_MC_CTL_araddr;
  wire [2:0]S_MC_CTL_arprot;
  wire S_MC_CTL_arready;
  wire S_MC_CTL_arvalid;
  wire [7:0]S_MC_CTL_awaddr;
  wire [2:0]S_MC_CTL_awprot;
  wire S_MC_CTL_awready;
  wire S_MC_CTL_awvalid;
  wire S_MC_CTL_bready;
  wire [1:0]S_MC_CTL_bresp;
  wire S_MC_CTL_bvalid;
  wire [31:0]S_MC_CTL_rdata;
  wire S_MC_CTL_rready;
  wire [1:0]S_MC_CTL_rresp;
  wire S_MC_CTL_rvalid;
  wire [31:0]S_MC_CTL_wdata;
  wire S_MC_CTL_wready;
  wire [3:0]S_MC_CTL_wstrb;
  wire S_MC_CTL_wvalid;
  wire aresetn;
  wire clk_250;
  wire [0:0]qsfp0_clk_clk_n;
  wire [0:0]qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [0:0]qsfp1_clk_clk_n;
  wire [0:0]qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire qsfp_lpmode;
  wire rx0_aligned;
  wire rx1_aligned;
  wire [7:0]s_qsfp_ctl_araddr;
  wire [2:0]s_qsfp_ctl_arprot;
  wire s_qsfp_ctl_arready;
  wire s_qsfp_ctl_arvalid;
  wire [7:0]s_qsfp_ctl_awaddr;
  wire [2:0]s_qsfp_ctl_awprot;
  wire s_qsfp_ctl_awready;
  wire s_qsfp_ctl_awvalid;
  wire s_qsfp_ctl_bready;
  wire [1:0]s_qsfp_ctl_bresp;
  wire s_qsfp_ctl_bvalid;
  wire [31:0]s_qsfp_ctl_rdata;
  wire s_qsfp_ctl_rready;
  wire [1:0]s_qsfp_ctl_rresp;
  wire s_qsfp_ctl_rvalid;
  wire [31:0]s_qsfp_ctl_wdata;
  wire s_qsfp_ctl_wready;
  wire [3:0]s_qsfp_ctl_wstrb;
  wire s_qsfp_ctl_wvalid;
  wire [511:0]tx0_user_1_TDATA;
  wire [63:0]tx0_user_1_TKEEP;
  wire tx0_user_1_TLAST;
  wire tx0_user_1_TREADY;
  wire tx0_user_1_TVALID;
  wire [511:0]tx1_user_1_TDATA;
  wire [63:0]tx1_user_1_TKEEP;
  wire tx1_user_1_TLAST;
  wire tx1_user_1_TREADY;
  wire tx1_user_1_TVALID;

  mindy_core_inst_0 mindy_core
       (.AXIS_FD_IN_tdata(AXIS_FD_IN_tdata),
        .AXIS_FD_IN_tready(AXIS_FD_IN_tready),
        .AXIS_FD_IN_tvalid(AXIS_FD_IN_tvalid),
        .AXIS_MD_IN_tdata(AXIS_MD_IN_tdata),
        .AXIS_MD_IN_tready(AXIS_MD_IN_tready),
        .AXIS_MD_IN_tvalid(AXIS_MD_IN_tvalid),
        .AXIS_TX0_tdata(tx0_user_1_TDATA),
        .AXIS_TX0_tkeep(tx0_user_1_TKEEP),
        .AXIS_TX0_tlast(tx0_user_1_TLAST),
        .AXIS_TX0_tready(tx0_user_1_TREADY),
        .AXIS_TX0_tvalid(tx0_user_1_TVALID),
        .AXIS_TX1_tdata(tx1_user_1_TDATA),
        .AXIS_TX1_tkeep(tx1_user_1_TKEEP),
        .AXIS_TX1_tlast(tx1_user_1_TLAST),
        .AXIS_TX1_tready(tx1_user_1_TREADY),
        .AXIS_TX1_tvalid(tx1_user_1_TVALID),
        .S_AXI_CTL_araddr(S_MC_CTL_araddr),
        .S_AXI_CTL_arprot(S_MC_CTL_arprot),
        .S_AXI_CTL_arready(S_MC_CTL_arready),
        .S_AXI_CTL_arvalid(S_MC_CTL_arvalid),
        .S_AXI_CTL_awaddr(S_MC_CTL_awaddr),
        .S_AXI_CTL_awprot(S_MC_CTL_awprot),
        .S_AXI_CTL_awready(S_MC_CTL_awready),
        .S_AXI_CTL_awvalid(S_MC_CTL_awvalid),
        .S_AXI_CTL_bready(S_MC_CTL_bready),
        .S_AXI_CTL_bresp(S_MC_CTL_bresp),
        .S_AXI_CTL_bvalid(S_MC_CTL_bvalid),
        .S_AXI_CTL_rdata(S_MC_CTL_rdata),
        .S_AXI_CTL_rready(S_MC_CTL_rready),
        .S_AXI_CTL_rresp(S_MC_CTL_rresp),
        .S_AXI_CTL_rvalid(S_MC_CTL_rvalid),
        .S_AXI_CTL_wdata(S_MC_CTL_wdata),
        .S_AXI_CTL_wready(S_MC_CTL_wready),
        .S_AXI_CTL_wstrb(S_MC_CTL_wstrb),
        .S_AXI_CTL_wvalid(S_MC_CTL_wvalid),
        .sys_clk(clk_250),
        .sys_resetn(aresetn));
  vpk120_eth2x100_inst_0 vpk120_eth2x100
       (.qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .qsfp_lpmode(qsfp_lpmode),
        .rx0_aligned(rx0_aligned),
        .rx0_user_clk(clk_250),
        .rx0_user_tready(1'b1),
        .rx1_aligned(rx1_aligned),
        .rx1_user_clk(clk_250),
        .rx1_user_tready(1'b1),
        .s_axi_aresetn(aresetn),
        .s_axi_clk(clk_250),
        .s_axi_ctl_araddr(s_qsfp_ctl_araddr),
        .s_axi_ctl_arprot(s_qsfp_ctl_arprot),
        .s_axi_ctl_arready(s_qsfp_ctl_arready),
        .s_axi_ctl_arvalid(s_qsfp_ctl_arvalid),
        .s_axi_ctl_awaddr(s_qsfp_ctl_awaddr),
        .s_axi_ctl_awprot(s_qsfp_ctl_awprot),
        .s_axi_ctl_awready(s_qsfp_ctl_awready),
        .s_axi_ctl_awvalid(s_qsfp_ctl_awvalid),
        .s_axi_ctl_bready(s_qsfp_ctl_bready),
        .s_axi_ctl_bresp(s_qsfp_ctl_bresp),
        .s_axi_ctl_bvalid(s_qsfp_ctl_bvalid),
        .s_axi_ctl_rdata(s_qsfp_ctl_rdata),
        .s_axi_ctl_rready(s_qsfp_ctl_rready),
        .s_axi_ctl_rresp(s_qsfp_ctl_rresp),
        .s_axi_ctl_rvalid(s_qsfp_ctl_rvalid),
        .s_axi_ctl_wdata(s_qsfp_ctl_wdata),
        .s_axi_ctl_wready(s_qsfp_ctl_wready),
        .s_axi_ctl_wstrb(s_qsfp_ctl_wstrb),
        .s_axi_ctl_wvalid(s_qsfp_ctl_wvalid),
        .tx0_user_clk(clk_250),
        .tx0_user_resetn(aresetn),
        .tx0_user_tdata(tx0_user_1_TDATA),
        .tx0_user_tkeep(tx0_user_1_TKEEP),
        .tx0_user_tlast(tx0_user_1_TLAST),
        .tx0_user_tready(tx0_user_1_TREADY),
        .tx0_user_tvalid(tx0_user_1_TVALID),
        .tx1_user_clk(clk_250),
        .tx1_user_resetn(aresetn),
        .tx1_user_tdata(tx1_user_1_TDATA),
        .tx1_user_tkeep(tx1_user_1_TKEEP),
        .tx1_user_tlast(tx1_user_1_TLAST),
        .tx1_user_tready(tx1_user_1_TREADY),
        .tx1_user_tvalid(tx1_user_1_TVALID));
endmodule

module pl_rtl_imp_QFYSB7
   (CHIP_GPIO13,
    CHIP_GPIO15,
    CHIP_GPIO15_DIR,
    CHIP_GPIO_BYTE_DIR,
    CHIP_PA_SYNC,
    CHIP_RS0,
    CHIP_RS256,
    CHIP_RSTB,
    CHIP_VDD,
    CHIP_VDDA,
    CHIP_VDDIO,
    CHIP_VDDLVDS,
    LVDS_BANKA_clk_n,
    LVDS_BANKA_clk_p,
    LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    LVDS_DN,
    LVDS_DP,
    LVL_TRSL_OE_N,
    M_AXI_RAM0_PCI_araddr,
    M_AXI_RAM0_PCI_arburst,
    M_AXI_RAM0_PCI_arcache,
    M_AXI_RAM0_PCI_arid,
    M_AXI_RAM0_PCI_arlen,
    M_AXI_RAM0_PCI_arlock,
    M_AXI_RAM0_PCI_arprot,
    M_AXI_RAM0_PCI_arqos,
    M_AXI_RAM0_PCI_arready,
    M_AXI_RAM0_PCI_arsize,
    M_AXI_RAM0_PCI_arvalid,
    M_AXI_RAM0_PCI_awaddr,
    M_AXI_RAM0_PCI_awburst,
    M_AXI_RAM0_PCI_awcache,
    M_AXI_RAM0_PCI_awid,
    M_AXI_RAM0_PCI_awlen,
    M_AXI_RAM0_PCI_awlock,
    M_AXI_RAM0_PCI_awprot,
    M_AXI_RAM0_PCI_awqos,
    M_AXI_RAM0_PCI_awready,
    M_AXI_RAM0_PCI_awsize,
    M_AXI_RAM0_PCI_awvalid,
    M_AXI_RAM0_PCI_bready,
    M_AXI_RAM0_PCI_bresp,
    M_AXI_RAM0_PCI_bvalid,
    M_AXI_RAM0_PCI_rdata,
    M_AXI_RAM0_PCI_rlast,
    M_AXI_RAM0_PCI_rready,
    M_AXI_RAM0_PCI_rresp,
    M_AXI_RAM0_PCI_rvalid,
    M_AXI_RAM0_PCI_wdata,
    M_AXI_RAM0_PCI_wlast,
    M_AXI_RAM0_PCI_wready,
    M_AXI_RAM0_PCI_wstrb,
    M_AXI_RAM0_PCI_wvalid,
    M_AXI_RAM1_PCI_araddr,
    M_AXI_RAM1_PCI_arburst,
    M_AXI_RAM1_PCI_arcache,
    M_AXI_RAM1_PCI_arid,
    M_AXI_RAM1_PCI_arlen,
    M_AXI_RAM1_PCI_arlock,
    M_AXI_RAM1_PCI_arprot,
    M_AXI_RAM1_PCI_arqos,
    M_AXI_RAM1_PCI_arready,
    M_AXI_RAM1_PCI_arsize,
    M_AXI_RAM1_PCI_arvalid,
    M_AXI_RAM1_PCI_awaddr,
    M_AXI_RAM1_PCI_awburst,
    M_AXI_RAM1_PCI_awcache,
    M_AXI_RAM1_PCI_awid,
    M_AXI_RAM1_PCI_awlen,
    M_AXI_RAM1_PCI_awlock,
    M_AXI_RAM1_PCI_awprot,
    M_AXI_RAM1_PCI_awqos,
    M_AXI_RAM1_PCI_awready,
    M_AXI_RAM1_PCI_awsize,
    M_AXI_RAM1_PCI_awvalid,
    M_AXI_RAM1_PCI_bready,
    M_AXI_RAM1_PCI_bresp,
    M_AXI_RAM1_PCI_bvalid,
    M_AXI_RAM1_PCI_rdata,
    M_AXI_RAM1_PCI_rlast,
    M_AXI_RAM1_PCI_rready,
    M_AXI_RAM1_PCI_rresp,
    M_AXI_RAM1_PCI_rvalid,
    M_AXI_RAM1_PCI_wdata,
    M_AXI_RAM1_PCI_wlast,
    M_AXI_RAM1_PCI_wready,
    M_AXI_RAM1_PCI_wstrb,
    M_AXI_RAM1_PCI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    UART_rxd,
    UART_txd,
    UCI_ADC_CSN,
    UCI_ADC_MISO,
    UCI_ADC_MOSI,
    UCI_ADC_SCK,
    aresetn,
    clk_200,
    clk_250,
    irq,
    pin_hsi_cmd,
    pin_hsi_data,
    pin_hsi_pclk,
    pin_hsi_valid,
    pin_spi_cs_n,
    pin_spi_miso,
    pin_spi_mosi,
    pin_spi_pclk,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp_lpmode,
    rx0_aligned,
    rx1_aligned);
  output [0:0]CHIP_GPIO13;
  output [0:0]CHIP_GPIO15;
  output [0:0]CHIP_GPIO15_DIR;
  output [0:0]CHIP_GPIO_BYTE_DIR;
  input CHIP_PA_SYNC;
  output [0:0]CHIP_RS0;
  output [0:0]CHIP_RS256;
  output CHIP_RSTB;
  output CHIP_VDD;
  output CHIP_VDDA;
  output CHIP_VDDIO;
  output CHIP_VDDLVDS;
  input [0:0]LVDS_BANKA_clk_n;
  input [0:0]LVDS_BANKA_clk_p;
  output [0:0]LVDS_CLK_clk_n;
  output [0:0]LVDS_CLK_clk_p;
  input [7:0]LVDS_DN;
  input [7:0]LVDS_DP;
  output LVL_TRSL_OE_N;
  output [63:0]M_AXI_RAM0_PCI_araddr;
  output [1:0]M_AXI_RAM0_PCI_arburst;
  output [3:0]M_AXI_RAM0_PCI_arcache;
  output [3:0]M_AXI_RAM0_PCI_arid;
  output [7:0]M_AXI_RAM0_PCI_arlen;
  output [0:0]M_AXI_RAM0_PCI_arlock;
  output [2:0]M_AXI_RAM0_PCI_arprot;
  output [3:0]M_AXI_RAM0_PCI_arqos;
  input [0:0]M_AXI_RAM0_PCI_arready;
  output [2:0]M_AXI_RAM0_PCI_arsize;
  output [0:0]M_AXI_RAM0_PCI_arvalid;
  output [63:0]M_AXI_RAM0_PCI_awaddr;
  output [1:0]M_AXI_RAM0_PCI_awburst;
  output [3:0]M_AXI_RAM0_PCI_awcache;
  output [3:0]M_AXI_RAM0_PCI_awid;
  output [7:0]M_AXI_RAM0_PCI_awlen;
  output [0:0]M_AXI_RAM0_PCI_awlock;
  output [2:0]M_AXI_RAM0_PCI_awprot;
  output [3:0]M_AXI_RAM0_PCI_awqos;
  input [0:0]M_AXI_RAM0_PCI_awready;
  output [2:0]M_AXI_RAM0_PCI_awsize;
  output [0:0]M_AXI_RAM0_PCI_awvalid;
  output [0:0]M_AXI_RAM0_PCI_bready;
  input [1:0]M_AXI_RAM0_PCI_bresp;
  input [0:0]M_AXI_RAM0_PCI_bvalid;
  input [511:0]M_AXI_RAM0_PCI_rdata;
  input [0:0]M_AXI_RAM0_PCI_rlast;
  output [0:0]M_AXI_RAM0_PCI_rready;
  input [1:0]M_AXI_RAM0_PCI_rresp;
  input [0:0]M_AXI_RAM0_PCI_rvalid;
  output [511:0]M_AXI_RAM0_PCI_wdata;
  output [0:0]M_AXI_RAM0_PCI_wlast;
  input [0:0]M_AXI_RAM0_PCI_wready;
  output [63:0]M_AXI_RAM0_PCI_wstrb;
  output [0:0]M_AXI_RAM0_PCI_wvalid;
  output [63:0]M_AXI_RAM1_PCI_araddr;
  output [1:0]M_AXI_RAM1_PCI_arburst;
  output [3:0]M_AXI_RAM1_PCI_arcache;
  output [3:0]M_AXI_RAM1_PCI_arid;
  output [7:0]M_AXI_RAM1_PCI_arlen;
  output [0:0]M_AXI_RAM1_PCI_arlock;
  output [2:0]M_AXI_RAM1_PCI_arprot;
  output [3:0]M_AXI_RAM1_PCI_arqos;
  input [0:0]M_AXI_RAM1_PCI_arready;
  output [2:0]M_AXI_RAM1_PCI_arsize;
  output [0:0]M_AXI_RAM1_PCI_arvalid;
  output [63:0]M_AXI_RAM1_PCI_awaddr;
  output [1:0]M_AXI_RAM1_PCI_awburst;
  output [3:0]M_AXI_RAM1_PCI_awcache;
  output [3:0]M_AXI_RAM1_PCI_awid;
  output [7:0]M_AXI_RAM1_PCI_awlen;
  output [0:0]M_AXI_RAM1_PCI_awlock;
  output [2:0]M_AXI_RAM1_PCI_awprot;
  output [3:0]M_AXI_RAM1_PCI_awqos;
  input [0:0]M_AXI_RAM1_PCI_awready;
  output [2:0]M_AXI_RAM1_PCI_awsize;
  output [0:0]M_AXI_RAM1_PCI_awvalid;
  output [0:0]M_AXI_RAM1_PCI_bready;
  input [1:0]M_AXI_RAM1_PCI_bresp;
  input [0:0]M_AXI_RAM1_PCI_bvalid;
  input [511:0]M_AXI_RAM1_PCI_rdata;
  input [0:0]M_AXI_RAM1_PCI_rlast;
  output [0:0]M_AXI_RAM1_PCI_rready;
  input [1:0]M_AXI_RAM1_PCI_rresp;
  input [0:0]M_AXI_RAM1_PCI_rvalid;
  output [511:0]M_AXI_RAM1_PCI_wdata;
  output [0:0]M_AXI_RAM1_PCI_wlast;
  input [0:0]M_AXI_RAM1_PCI_wready;
  output [63:0]M_AXI_RAM1_PCI_wstrb;
  output [0:0]M_AXI_RAM1_PCI_wvalid;
  input [43:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [43:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  input aresetn;
  input clk_200;
  input clk_250;
  output irq;
  output pin_hsi_cmd;
  output [31:0]pin_hsi_data;
  output pin_hsi_pclk;
  output pin_hsi_valid;
  output pin_spi_cs_n;
  input pin_spi_miso;
  output pin_spi_mosi;
  output pin_spi_pclk;
  input [0:0]qsfp0_clk_clk_n;
  input [0:0]qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  input [0:0]qsfp1_clk_clk_n;
  input [0:0]qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  output qsfp_lpmode;
  output rx0_aligned;
  output rx1_aligned;

  wire [7:0]AXI_CLOCK_CTL_1_ARADDR;
  wire [2:0]AXI_CLOCK_CTL_1_ARPROT;
  wire AXI_CLOCK_CTL_1_ARREADY;
  wire AXI_CLOCK_CTL_1_ARVALID;
  wire [7:0]AXI_CLOCK_CTL_1_AWADDR;
  wire [2:0]AXI_CLOCK_CTL_1_AWPROT;
  wire AXI_CLOCK_CTL_1_AWREADY;
  wire AXI_CLOCK_CTL_1_AWVALID;
  wire AXI_CLOCK_CTL_1_BREADY;
  wire [1:0]AXI_CLOCK_CTL_1_BRESP;
  wire AXI_CLOCK_CTL_1_BVALID;
  wire [31:0]AXI_CLOCK_CTL_1_RDATA;
  wire AXI_CLOCK_CTL_1_RREADY;
  wire [1:0]AXI_CLOCK_CTL_1_RRESP;
  wire AXI_CLOCK_CTL_1_RVALID;
  wire [31:0]AXI_CLOCK_CTL_1_WDATA;
  wire AXI_CLOCK_CTL_1_WREADY;
  wire [3:0]AXI_CLOCK_CTL_1_WSTRB;
  wire AXI_CLOCK_CTL_1_WVALID;
  wire [0:0]CHIP_GPIO13;
  wire [0:0]CHIP_GPIO15;
  wire [0:0]CHIP_GPIO15_DIR;
  wire [0:0]CHIP_GPIO_BYTE_DIR;
  wire CHIP_PA_SYNC;
  wire [0:0]CHIP_RS0;
  wire [0:0]CHIP_RS256;
  wire CHIP_RSTB;
  wire CHIP_VDD;
  wire CHIP_VDDA;
  wire CHIP_VDDIO;
  wire CHIP_VDDLVDS;
  wire [0:0]LVDS_BANKA_clk_n;
  wire [0:0]LVDS_BANKA_clk_p;
  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire [7:0]LVDS_DN;
  wire [7:0]LVDS_DP;
  wire LVL_TRSL_OE_N;
  wire [63:0]M_AXI_RAM0_PCI_araddr;
  wire [1:0]M_AXI_RAM0_PCI_arburst;
  wire [3:0]M_AXI_RAM0_PCI_arcache;
  wire [3:0]M_AXI_RAM0_PCI_arid;
  wire [7:0]M_AXI_RAM0_PCI_arlen;
  wire [0:0]M_AXI_RAM0_PCI_arlock;
  wire [2:0]M_AXI_RAM0_PCI_arprot;
  wire [3:0]M_AXI_RAM0_PCI_arqos;
  wire [0:0]M_AXI_RAM0_PCI_arready;
  wire [2:0]M_AXI_RAM0_PCI_arsize;
  wire [0:0]M_AXI_RAM0_PCI_arvalid;
  wire [63:0]M_AXI_RAM0_PCI_awaddr;
  wire [1:0]M_AXI_RAM0_PCI_awburst;
  wire [3:0]M_AXI_RAM0_PCI_awcache;
  wire [3:0]M_AXI_RAM0_PCI_awid;
  wire [7:0]M_AXI_RAM0_PCI_awlen;
  wire [0:0]M_AXI_RAM0_PCI_awlock;
  wire [2:0]M_AXI_RAM0_PCI_awprot;
  wire [3:0]M_AXI_RAM0_PCI_awqos;
  wire [0:0]M_AXI_RAM0_PCI_awready;
  wire [2:0]M_AXI_RAM0_PCI_awsize;
  wire [0:0]M_AXI_RAM0_PCI_awvalid;
  wire [0:0]M_AXI_RAM0_PCI_bready;
  wire [1:0]M_AXI_RAM0_PCI_bresp;
  wire [0:0]M_AXI_RAM0_PCI_bvalid;
  wire [511:0]M_AXI_RAM0_PCI_rdata;
  wire [0:0]M_AXI_RAM0_PCI_rlast;
  wire [0:0]M_AXI_RAM0_PCI_rready;
  wire [1:0]M_AXI_RAM0_PCI_rresp;
  wire [0:0]M_AXI_RAM0_PCI_rvalid;
  wire [511:0]M_AXI_RAM0_PCI_wdata;
  wire [0:0]M_AXI_RAM0_PCI_wlast;
  wire [0:0]M_AXI_RAM0_PCI_wready;
  wire [63:0]M_AXI_RAM0_PCI_wstrb;
  wire [0:0]M_AXI_RAM0_PCI_wvalid;
  wire [63:0]M_AXI_RAM1_PCI_araddr;
  wire [1:0]M_AXI_RAM1_PCI_arburst;
  wire [3:0]M_AXI_RAM1_PCI_arcache;
  wire [3:0]M_AXI_RAM1_PCI_arid;
  wire [7:0]M_AXI_RAM1_PCI_arlen;
  wire [0:0]M_AXI_RAM1_PCI_arlock;
  wire [2:0]M_AXI_RAM1_PCI_arprot;
  wire [3:0]M_AXI_RAM1_PCI_arqos;
  wire [0:0]M_AXI_RAM1_PCI_arready;
  wire [2:0]M_AXI_RAM1_PCI_arsize;
  wire [0:0]M_AXI_RAM1_PCI_arvalid;
  wire [63:0]M_AXI_RAM1_PCI_awaddr;
  wire [1:0]M_AXI_RAM1_PCI_awburst;
  wire [3:0]M_AXI_RAM1_PCI_awcache;
  wire [3:0]M_AXI_RAM1_PCI_awid;
  wire [7:0]M_AXI_RAM1_PCI_awlen;
  wire [0:0]M_AXI_RAM1_PCI_awlock;
  wire [2:0]M_AXI_RAM1_PCI_awprot;
  wire [3:0]M_AXI_RAM1_PCI_awqos;
  wire [0:0]M_AXI_RAM1_PCI_awready;
  wire [2:0]M_AXI_RAM1_PCI_awsize;
  wire [0:0]M_AXI_RAM1_PCI_awvalid;
  wire [0:0]M_AXI_RAM1_PCI_bready;
  wire [1:0]M_AXI_RAM1_PCI_bresp;
  wire [0:0]M_AXI_RAM1_PCI_bvalid;
  wire [511:0]M_AXI_RAM1_PCI_rdata;
  wire [0:0]M_AXI_RAM1_PCI_rlast;
  wire [0:0]M_AXI_RAM1_PCI_rready;
  wire [1:0]M_AXI_RAM1_PCI_rresp;
  wire [0:0]M_AXI_RAM1_PCI_rvalid;
  wire [511:0]M_AXI_RAM1_PCI_wdata;
  wire [0:0]M_AXI_RAM1_PCI_wlast;
  wire [0:0]M_AXI_RAM1_PCI_wready;
  wire [63:0]M_AXI_RAM1_PCI_wstrb;
  wire [0:0]M_AXI_RAM1_PCI_wvalid;
  wire [43:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [15:0]S00_AXI_aruser;
  wire S00_AXI_arvalid;
  wire [43:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [15:0]S00_AXI_awuser;
  wire S00_AXI_awvalid;
  wire [15:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [15:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [7:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [7:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [7:0]S_AXI_2_ARADDR;
  wire [2:0]S_AXI_2_ARPROT;
  wire S_AXI_2_ARREADY;
  wire S_AXI_2_ARVALID;
  wire [7:0]S_AXI_2_AWADDR;
  wire [2:0]S_AXI_2_AWPROT;
  wire S_AXI_2_AWREADY;
  wire S_AXI_2_AWVALID;
  wire S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire S_AXI_2_BVALID;
  wire [31:0]S_AXI_2_RDATA;
  wire S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire S_AXI_2_RVALID;
  wire [31:0]S_AXI_2_WDATA;
  wire S_AXI_2_WREADY;
  wire [3:0]S_AXI_2_WSTRB;
  wire S_AXI_2_WVALID;
  wire [7:0]S_AXI_3_ARADDR;
  wire [2:0]S_AXI_3_ARPROT;
  wire S_AXI_3_ARREADY;
  wire S_AXI_3_ARVALID;
  wire [7:0]S_AXI_3_AWADDR;
  wire [2:0]S_AXI_3_AWPROT;
  wire S_AXI_3_AWREADY;
  wire S_AXI_3_AWVALID;
  wire S_AXI_3_BREADY;
  wire [1:0]S_AXI_3_BRESP;
  wire S_AXI_3_BVALID;
  wire [31:0]S_AXI_3_RDATA;
  wire S_AXI_3_RREADY;
  wire [1:0]S_AXI_3_RRESP;
  wire S_AXI_3_RVALID;
  wire [31:0]S_AXI_3_WDATA;
  wire S_AXI_3_WREADY;
  wire [3:0]S_AXI_3_WSTRB;
  wire S_AXI_3_WVALID;
  wire [15:0]S_AXI_CTL_1_ARADDR;
  wire [2:0]S_AXI_CTL_1_ARPROT;
  wire [0:0]S_AXI_CTL_1_ARREADY;
  wire S_AXI_CTL_1_ARVALID;
  wire [15:0]S_AXI_CTL_1_AWADDR;
  wire [2:0]S_AXI_CTL_1_AWPROT;
  wire [0:0]S_AXI_CTL_1_AWREADY;
  wire S_AXI_CTL_1_AWVALID;
  wire S_AXI_CTL_1_BREADY;
  wire [1:0]S_AXI_CTL_1_BRESP;
  wire [0:0]S_AXI_CTL_1_BVALID;
  wire [31:0]S_AXI_CTL_1_RDATA;
  wire S_AXI_CTL_1_RREADY;
  wire [1:0]S_AXI_CTL_1_RRESP;
  wire [0:0]S_AXI_CTL_1_RVALID;
  wire [31:0]S_AXI_CTL_1_WDATA;
  wire [0:0]S_AXI_CTL_1_WREADY;
  wire [3:0]S_AXI_CTL_1_WSTRB;
  wire S_AXI_CTL_1_WVALID;
  wire [7:0]S_AXI_CTL_2_ARADDR;
  wire [2:0]S_AXI_CTL_2_ARPROT;
  wire S_AXI_CTL_2_ARREADY;
  wire S_AXI_CTL_2_ARVALID;
  wire [7:0]S_AXI_CTL_2_AWADDR;
  wire [2:0]S_AXI_CTL_2_AWPROT;
  wire S_AXI_CTL_2_AWREADY;
  wire S_AXI_CTL_2_AWVALID;
  wire S_AXI_CTL_2_BREADY;
  wire [1:0]S_AXI_CTL_2_BRESP;
  wire S_AXI_CTL_2_BVALID;
  wire [31:0]S_AXI_CTL_2_RDATA;
  wire S_AXI_CTL_2_RREADY;
  wire [1:0]S_AXI_CTL_2_RRESP;
  wire S_AXI_CTL_2_RVALID;
  wire [31:0]S_AXI_CTL_2_WDATA;
  wire S_AXI_CTL_2_WREADY;
  wire [3:0]S_AXI_CTL_2_WSTRB;
  wire S_AXI_CTL_2_WVALID;
  wire UART_rxd;
  wire UART_txd;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire aresetn;
  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire axi_uart_bridge_M_AXI_BVALID;
  wire [31:0]axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire clk_192_1;
  wire clk_200;
  wire clk_250;
  wire [0:0]dummy_intr_dout;
  wire [511:0]frame_gen_axis_md_TDATA;
  wire frame_gen_axis_md_TREADY;
  wire frame_gen_axis_md_TVALID;
  wire [8:0]icn_ctrl_M00_AXI_ARADDR;
  wire icn_ctrl_M00_AXI_ARREADY;
  wire icn_ctrl_M00_AXI_ARVALID;
  wire [8:0]icn_ctrl_M00_AXI_AWADDR;
  wire icn_ctrl_M00_AXI_AWREADY;
  wire icn_ctrl_M00_AXI_AWVALID;
  wire icn_ctrl_M00_AXI_BREADY;
  wire [1:0]icn_ctrl_M00_AXI_BRESP;
  wire icn_ctrl_M00_AXI_BVALID;
  wire [31:0]icn_ctrl_M00_AXI_RDATA;
  wire icn_ctrl_M00_AXI_RREADY;
  wire [1:0]icn_ctrl_M00_AXI_RRESP;
  wire icn_ctrl_M00_AXI_RVALID;
  wire [31:0]icn_ctrl_M00_AXI_WDATA;
  wire icn_ctrl_M00_AXI_WREADY;
  wire [3:0]icn_ctrl_M00_AXI_WSTRB;
  wire icn_ctrl_M00_AXI_WVALID;
  wire [6:0]icn_ctrl_M03_AXI_ARADDR;
  wire [2:0]icn_ctrl_M03_AXI_ARPROT;
  wire icn_ctrl_M03_AXI_ARREADY;
  wire icn_ctrl_M03_AXI_ARVALID;
  wire [6:0]icn_ctrl_M03_AXI_AWADDR;
  wire [2:0]icn_ctrl_M03_AXI_AWPROT;
  wire icn_ctrl_M03_AXI_AWREADY;
  wire icn_ctrl_M03_AXI_AWVALID;
  wire icn_ctrl_M03_AXI_BREADY;
  wire [1:0]icn_ctrl_M03_AXI_BRESP;
  wire icn_ctrl_M03_AXI_BVALID;
  wire [31:0]icn_ctrl_M03_AXI_RDATA;
  wire icn_ctrl_M03_AXI_RREADY;
  wire [1:0]icn_ctrl_M03_AXI_RRESP;
  wire icn_ctrl_M03_AXI_RVALID;
  wire [31:0]icn_ctrl_M03_AXI_WDATA;
  wire icn_ctrl_M03_AXI_WREADY;
  wire [3:0]icn_ctrl_M03_AXI_WSTRB;
  wire icn_ctrl_M03_AXI_WVALID;
  wire [7:0]icn_ctrl_M06_AXI_ARADDR;
  wire [2:0]icn_ctrl_M06_AXI_ARPROT;
  wire icn_ctrl_M06_AXI_ARREADY;
  wire icn_ctrl_M06_AXI_ARVALID;
  wire [7:0]icn_ctrl_M06_AXI_AWADDR;
  wire [2:0]icn_ctrl_M06_AXI_AWPROT;
  wire icn_ctrl_M06_AXI_AWREADY;
  wire icn_ctrl_M06_AXI_AWVALID;
  wire icn_ctrl_M06_AXI_BREADY;
  wire [1:0]icn_ctrl_M06_AXI_BRESP;
  wire icn_ctrl_M06_AXI_BVALID;
  wire [31:0]icn_ctrl_M06_AXI_RDATA;
  wire icn_ctrl_M06_AXI_RREADY;
  wire [1:0]icn_ctrl_M06_AXI_RRESP;
  wire icn_ctrl_M06_AXI_RVALID;
  wire [31:0]icn_ctrl_M06_AXI_WDATA;
  wire icn_ctrl_M06_AXI_WREADY;
  wire [3:0]icn_ctrl_M06_AXI_WSTRB;
  wire icn_ctrl_M06_AXI_WVALID;
  wire [7:0]icn_ctrl_M09_AXI_ARADDR;
  wire [2:0]icn_ctrl_M09_AXI_ARPROT;
  wire icn_ctrl_M09_AXI_ARREADY;
  wire icn_ctrl_M09_AXI_ARVALID;
  wire [7:0]icn_ctrl_M09_AXI_AWADDR;
  wire [2:0]icn_ctrl_M09_AXI_AWPROT;
  wire icn_ctrl_M09_AXI_AWREADY;
  wire icn_ctrl_M09_AXI_AWVALID;
  wire icn_ctrl_M09_AXI_BREADY;
  wire [1:0]icn_ctrl_M09_AXI_BRESP;
  wire icn_ctrl_M09_AXI_BVALID;
  wire [31:0]icn_ctrl_M09_AXI_RDATA;
  wire icn_ctrl_M09_AXI_RREADY;
  wire [1:0]icn_ctrl_M09_AXI_RRESP;
  wire icn_ctrl_M09_AXI_RVALID;
  wire [31:0]icn_ctrl_M09_AXI_WDATA;
  wire icn_ctrl_M09_AXI_WREADY;
  wire [3:0]icn_ctrl_M09_AXI_WSTRB;
  wire icn_ctrl_M09_AXI_WVALID;
  wire [0:0]ilconstant_0_dout;
  wire irq;
  wire [511:0]lvds_axis_out_TDATA;
  wire lvds_axis_out_TREADY;
  wire lvds_axis_out_TVALID;
  wire pin_hsi_cmd;
  wire [31:0]pin_hsi_data;
  wire pin_hsi_pclk;
  wire pin_hsi_valid;
  wire pin_spi_cs_n;
  wire pin_spi_miso;
  wire pin_spi_mosi;
  wire pin_spi_pclk;
  wire [0:0]qsfp0_clk_clk_n;
  wire [0:0]qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [0:0]qsfp1_clk_clk_n;
  wire [0:0]qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire qsfp_lpmode;
  wire rx0_aligned;
  wire rx1_aligned;

  abm_and_smem_inst_0 abm_and_smem
       (.AXI_CLOCK_CTL_araddr(AXI_CLOCK_CTL_1_ARADDR),
        .AXI_CLOCK_CTL_arprot(AXI_CLOCK_CTL_1_ARPROT),
        .AXI_CLOCK_CTL_arready(AXI_CLOCK_CTL_1_ARREADY),
        .AXI_CLOCK_CTL_arvalid(AXI_CLOCK_CTL_1_ARVALID),
        .AXI_CLOCK_CTL_awaddr(AXI_CLOCK_CTL_1_AWADDR),
        .AXI_CLOCK_CTL_awprot(AXI_CLOCK_CTL_1_AWPROT),
        .AXI_CLOCK_CTL_awready(AXI_CLOCK_CTL_1_AWREADY),
        .AXI_CLOCK_CTL_awvalid(AXI_CLOCK_CTL_1_AWVALID),
        .AXI_CLOCK_CTL_bready(AXI_CLOCK_CTL_1_BREADY),
        .AXI_CLOCK_CTL_bresp(AXI_CLOCK_CTL_1_BRESP),
        .AXI_CLOCK_CTL_bvalid(AXI_CLOCK_CTL_1_BVALID),
        .AXI_CLOCK_CTL_rdata(AXI_CLOCK_CTL_1_RDATA),
        .AXI_CLOCK_CTL_rready(AXI_CLOCK_CTL_1_RREADY),
        .AXI_CLOCK_CTL_rresp(AXI_CLOCK_CTL_1_RRESP),
        .AXI_CLOCK_CTL_rvalid(AXI_CLOCK_CTL_1_RVALID),
        .AXI_CLOCK_CTL_wdata(AXI_CLOCK_CTL_1_WDATA),
        .AXI_CLOCK_CTL_wready(AXI_CLOCK_CTL_1_WREADY),
        .AXI_CLOCK_CTL_wstrb(AXI_CLOCK_CTL_1_WSTRB),
        .AXI_CLOCK_CTL_wvalid(AXI_CLOCK_CTL_1_WVALID),
        .M_AXI_RAM0_PCI_araddr(M_AXI_RAM0_PCI_araddr),
        .M_AXI_RAM0_PCI_arburst(M_AXI_RAM0_PCI_arburst),
        .M_AXI_RAM0_PCI_arcache(M_AXI_RAM0_PCI_arcache),
        .M_AXI_RAM0_PCI_arid(M_AXI_RAM0_PCI_arid),
        .M_AXI_RAM0_PCI_arlen(M_AXI_RAM0_PCI_arlen),
        .M_AXI_RAM0_PCI_arlock(M_AXI_RAM0_PCI_arlock),
        .M_AXI_RAM0_PCI_arprot(M_AXI_RAM0_PCI_arprot),
        .M_AXI_RAM0_PCI_arqos(M_AXI_RAM0_PCI_arqos),
        .M_AXI_RAM0_PCI_arready(M_AXI_RAM0_PCI_arready),
        .M_AXI_RAM0_PCI_arsize(M_AXI_RAM0_PCI_arsize),
        .M_AXI_RAM0_PCI_arvalid(M_AXI_RAM0_PCI_arvalid),
        .M_AXI_RAM0_PCI_awaddr(M_AXI_RAM0_PCI_awaddr),
        .M_AXI_RAM0_PCI_awburst(M_AXI_RAM0_PCI_awburst),
        .M_AXI_RAM0_PCI_awcache(M_AXI_RAM0_PCI_awcache),
        .M_AXI_RAM0_PCI_awid(M_AXI_RAM0_PCI_awid),
        .M_AXI_RAM0_PCI_awlen(M_AXI_RAM0_PCI_awlen),
        .M_AXI_RAM0_PCI_awlock(M_AXI_RAM0_PCI_awlock),
        .M_AXI_RAM0_PCI_awprot(M_AXI_RAM0_PCI_awprot),
        .M_AXI_RAM0_PCI_awqos(M_AXI_RAM0_PCI_awqos),
        .M_AXI_RAM0_PCI_awready(M_AXI_RAM0_PCI_awready),
        .M_AXI_RAM0_PCI_awsize(M_AXI_RAM0_PCI_awsize),
        .M_AXI_RAM0_PCI_awvalid(M_AXI_RAM0_PCI_awvalid),
        .M_AXI_RAM0_PCI_bready(M_AXI_RAM0_PCI_bready),
        .M_AXI_RAM0_PCI_bresp(M_AXI_RAM0_PCI_bresp),
        .M_AXI_RAM0_PCI_bvalid(M_AXI_RAM0_PCI_bvalid),
        .M_AXI_RAM0_PCI_rdata(M_AXI_RAM0_PCI_rdata),
        .M_AXI_RAM0_PCI_rlast(M_AXI_RAM0_PCI_rlast),
        .M_AXI_RAM0_PCI_rready(M_AXI_RAM0_PCI_rready),
        .M_AXI_RAM0_PCI_rresp(M_AXI_RAM0_PCI_rresp),
        .M_AXI_RAM0_PCI_rvalid(M_AXI_RAM0_PCI_rvalid),
        .M_AXI_RAM0_PCI_wdata(M_AXI_RAM0_PCI_wdata),
        .M_AXI_RAM0_PCI_wlast(M_AXI_RAM0_PCI_wlast),
        .M_AXI_RAM0_PCI_wready(M_AXI_RAM0_PCI_wready),
        .M_AXI_RAM0_PCI_wstrb(M_AXI_RAM0_PCI_wstrb),
        .M_AXI_RAM0_PCI_wvalid(M_AXI_RAM0_PCI_wvalid),
        .M_AXI_RAM1_PCI_araddr(M_AXI_RAM1_PCI_araddr),
        .M_AXI_RAM1_PCI_arburst(M_AXI_RAM1_PCI_arburst),
        .M_AXI_RAM1_PCI_arcache(M_AXI_RAM1_PCI_arcache),
        .M_AXI_RAM1_PCI_arid(M_AXI_RAM1_PCI_arid),
        .M_AXI_RAM1_PCI_arlen(M_AXI_RAM1_PCI_arlen),
        .M_AXI_RAM1_PCI_arlock(M_AXI_RAM1_PCI_arlock),
        .M_AXI_RAM1_PCI_arprot(M_AXI_RAM1_PCI_arprot),
        .M_AXI_RAM1_PCI_arqos(M_AXI_RAM1_PCI_arqos),
        .M_AXI_RAM1_PCI_arready(M_AXI_RAM1_PCI_arready),
        .M_AXI_RAM1_PCI_arsize(M_AXI_RAM1_PCI_arsize),
        .M_AXI_RAM1_PCI_arvalid(M_AXI_RAM1_PCI_arvalid),
        .M_AXI_RAM1_PCI_awaddr(M_AXI_RAM1_PCI_awaddr),
        .M_AXI_RAM1_PCI_awburst(M_AXI_RAM1_PCI_awburst),
        .M_AXI_RAM1_PCI_awcache(M_AXI_RAM1_PCI_awcache),
        .M_AXI_RAM1_PCI_awid(M_AXI_RAM1_PCI_awid),
        .M_AXI_RAM1_PCI_awlen(M_AXI_RAM1_PCI_awlen),
        .M_AXI_RAM1_PCI_awlock(M_AXI_RAM1_PCI_awlock),
        .M_AXI_RAM1_PCI_awprot(M_AXI_RAM1_PCI_awprot),
        .M_AXI_RAM1_PCI_awqos(M_AXI_RAM1_PCI_awqos),
        .M_AXI_RAM1_PCI_awready(M_AXI_RAM1_PCI_awready),
        .M_AXI_RAM1_PCI_awsize(M_AXI_RAM1_PCI_awsize),
        .M_AXI_RAM1_PCI_awvalid(M_AXI_RAM1_PCI_awvalid),
        .M_AXI_RAM1_PCI_bready(M_AXI_RAM1_PCI_bready),
        .M_AXI_RAM1_PCI_bresp(M_AXI_RAM1_PCI_bresp),
        .M_AXI_RAM1_PCI_bvalid(M_AXI_RAM1_PCI_bvalid),
        .M_AXI_RAM1_PCI_rdata(M_AXI_RAM1_PCI_rdata),
        .M_AXI_RAM1_PCI_rlast(M_AXI_RAM1_PCI_rlast),
        .M_AXI_RAM1_PCI_rready(M_AXI_RAM1_PCI_rready),
        .M_AXI_RAM1_PCI_rresp(M_AXI_RAM1_PCI_rresp),
        .M_AXI_RAM1_PCI_rvalid(M_AXI_RAM1_PCI_rvalid),
        .M_AXI_RAM1_PCI_wdata(M_AXI_RAM1_PCI_wdata),
        .M_AXI_RAM1_PCI_wlast(M_AXI_RAM1_PCI_wlast),
        .M_AXI_RAM1_PCI_wready(M_AXI_RAM1_PCI_wready),
        .M_AXI_RAM1_PCI_wstrb(M_AXI_RAM1_PCI_wstrb),
        .M_AXI_RAM1_PCI_wvalid(M_AXI_RAM1_PCI_wvalid),
        .S_AXI_CTL_araddr(S_AXI_CTL_1_ARADDR),
        .S_AXI_CTL_arprot(S_AXI_CTL_1_ARPROT),
        .S_AXI_CTL_arready(S_AXI_CTL_1_ARREADY),
        .S_AXI_CTL_arvalid(S_AXI_CTL_1_ARVALID),
        .S_AXI_CTL_awaddr(S_AXI_CTL_1_AWADDR),
        .S_AXI_CTL_awprot(S_AXI_CTL_1_AWPROT),
        .S_AXI_CTL_awready(S_AXI_CTL_1_AWREADY),
        .S_AXI_CTL_awvalid(S_AXI_CTL_1_AWVALID),
        .S_AXI_CTL_bready(S_AXI_CTL_1_BREADY),
        .S_AXI_CTL_bresp(S_AXI_CTL_1_BRESP),
        .S_AXI_CTL_bvalid(S_AXI_CTL_1_BVALID),
        .S_AXI_CTL_rdata(S_AXI_CTL_1_RDATA),
        .S_AXI_CTL_rready(S_AXI_CTL_1_RREADY),
        .S_AXI_CTL_rresp(S_AXI_CTL_1_RRESP),
        .S_AXI_CTL_rvalid(S_AXI_CTL_1_RVALID),
        .S_AXI_CTL_wdata(S_AXI_CTL_1_WDATA),
        .S_AXI_CTL_wready(S_AXI_CTL_1_WREADY),
        .S_AXI_CTL_wstrb(S_AXI_CTL_1_WSTRB),
        .S_AXI_CTL_wvalid(S_AXI_CTL_1_WVALID),
        .S_AXI_RAM0_ETH_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_arburst({1'b0,1'b1}),
        .S_AXI_RAM0_ETH_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_RAM0_ETH_arid({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_arlock(1'b0),
        .S_AXI_RAM0_ETH_arprot({1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_arsize({1'b1,1'b1,1'b0}),
        .S_AXI_RAM0_ETH_arvalid(1'b0),
        .S_AXI_RAM0_ETH_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_awburst({1'b0,1'b1}),
        .S_AXI_RAM0_ETH_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_RAM0_ETH_awid({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_awlock(1'b0),
        .S_AXI_RAM0_ETH_awprot({1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_awsize({1'b1,1'b1,1'b0}),
        .S_AXI_RAM0_ETH_awvalid(1'b0),
        .S_AXI_RAM0_ETH_bready(1'b0),
        .S_AXI_RAM0_ETH_rready(1'b0),
        .S_AXI_RAM0_ETH_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM0_ETH_wlast(1'b0),
        .S_AXI_RAM0_ETH_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .S_AXI_RAM0_ETH_wvalid(1'b0),
        .S_AXI_RAM1_ETH_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_arburst({1'b0,1'b1}),
        .S_AXI_RAM1_ETH_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_RAM1_ETH_arid({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_arlock(1'b0),
        .S_AXI_RAM1_ETH_arprot({1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_arsize({1'b1,1'b1,1'b0}),
        .S_AXI_RAM1_ETH_arvalid(1'b0),
        .S_AXI_RAM1_ETH_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_awburst({1'b0,1'b1}),
        .S_AXI_RAM1_ETH_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_RAM1_ETH_awid({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_awlock(1'b0),
        .S_AXI_RAM1_ETH_awprot({1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_awsize({1'b1,1'b1,1'b0}),
        .S_AXI_RAM1_ETH_awvalid(1'b0),
        .S_AXI_RAM1_ETH_bready(1'b0),
        .S_AXI_RAM1_ETH_rready(1'b0),
        .S_AXI_RAM1_ETH_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_RAM1_ETH_wlast(1'b0),
        .S_AXI_RAM1_ETH_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .S_AXI_RAM1_ETH_wvalid(1'b0),
        .pin_hsi_cmd(pin_hsi_cmd),
        .pin_hsi_data(pin_hsi_data),
        .pin_hsi_pclk(pin_hsi_pclk),
        .pin_hsi_valid(pin_hsi_valid),
        .pin_spi_cs_n(pin_spi_cs_n),
        .pin_spi_miso(pin_spi_miso),
        .pin_spi_mosi(pin_spi_mosi),
        .pin_spi_pclk(pin_spi_pclk),
        .sys_clk(clk_250),
        .sys_resetn(aresetn),
        .sys_smem_wen(ilconstant_0_dout));
  adc_bank_imp_1TWLDZ5 adc_bank
       (.S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .clk(clk_250),
        .resetn(aresetn),
        .slave_select(UCI_ADC_CSN),
        .spi_miso(UCI_ADC_MISO),
        .spi_mosi(UCI_ADC_MOSI),
        .spi_sclk(UCI_ADC_SCK));
  top_level_axi_intc_0_0 axi_intc_0
       (.intr(dummy_intr_dout),
        .irq(irq),
        .s_axi_aclk(clk_250),
        .s_axi_araddr(icn_ctrl_M00_AXI_ARADDR),
        .s_axi_aresetn(aresetn),
        .s_axi_arready(icn_ctrl_M00_AXI_ARREADY),
        .s_axi_arvalid(icn_ctrl_M00_AXI_ARVALID),
        .s_axi_awaddr(icn_ctrl_M00_AXI_AWADDR),
        .s_axi_awready(icn_ctrl_M00_AXI_AWREADY),
        .s_axi_awvalid(icn_ctrl_M00_AXI_AWVALID),
        .s_axi_bready(icn_ctrl_M00_AXI_BREADY),
        .s_axi_bresp(icn_ctrl_M00_AXI_BRESP),
        .s_axi_bvalid(icn_ctrl_M00_AXI_BVALID),
        .s_axi_rdata(icn_ctrl_M00_AXI_RDATA),
        .s_axi_rready(icn_ctrl_M00_AXI_RREADY),
        .s_axi_rresp(icn_ctrl_M00_AXI_RRESP),
        .s_axi_rvalid(icn_ctrl_M00_AXI_RVALID),
        .s_axi_wdata(icn_ctrl_M00_AXI_WDATA),
        .s_axi_wready(icn_ctrl_M00_AXI_WREADY),
        .s_axi_wstrb(icn_ctrl_M00_AXI_WSTRB),
        .s_axi_wvalid(icn_ctrl_M00_AXI_WVALID));
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(clk_250),
        .AXI_ARESETN(aresetn),
        .S_AXI_ARADDR(icn_ctrl_M03_AXI_ARADDR),
        .S_AXI_ARPROT(icn_ctrl_M03_AXI_ARPROT),
        .S_AXI_ARREADY(icn_ctrl_M03_AXI_ARREADY),
        .S_AXI_ARVALID(icn_ctrl_M03_AXI_ARVALID),
        .S_AXI_AWADDR(icn_ctrl_M03_AXI_AWADDR),
        .S_AXI_AWPROT(icn_ctrl_M03_AXI_AWPROT),
        .S_AXI_AWREADY(icn_ctrl_M03_AXI_AWREADY),
        .S_AXI_AWVALID(icn_ctrl_M03_AXI_AWVALID),
        .S_AXI_BREADY(icn_ctrl_M03_AXI_BREADY),
        .S_AXI_BRESP(icn_ctrl_M03_AXI_BRESP),
        .S_AXI_BVALID(icn_ctrl_M03_AXI_BVALID),
        .S_AXI_RDATA(icn_ctrl_M03_AXI_RDATA),
        .S_AXI_RREADY(icn_ctrl_M03_AXI_RREADY),
        .S_AXI_RRESP(icn_ctrl_M03_AXI_RRESP),
        .S_AXI_RVALID(icn_ctrl_M03_AXI_RVALID),
        .S_AXI_WDATA(icn_ctrl_M03_AXI_WDATA),
        .S_AXI_WREADY(icn_ctrl_M03_AXI_WREADY),
        .S_AXI_WSTRB(icn_ctrl_M03_AXI_WSTRB),
        .S_AXI_WVALID(icn_ctrl_M03_AXI_WVALID));
  axi_uart_bridge_imp_SLJY4W axi_uart_bridge
       (.M_AXI_araddr(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_arready(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_arvalid(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_awaddr(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_awready(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_awvalid(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_bready(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_bresp(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_bvalid(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_rdata(axi_uart_bridge_M_AXI_RDATA),
        .M_AXI_rready(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_rresp(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_rvalid(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_wdata(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_wready(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_wstrb(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_wvalid(axi_uart_bridge_M_AXI_WVALID),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .aclk(clk_250),
        .aresetn(aresetn));
  top_level_chip_power_ctl_0_0 chip_power_ctl
       (.S_AXI_ARADDR(icn_ctrl_M06_AXI_ARADDR),
        .S_AXI_ARPROT(icn_ctrl_M06_AXI_ARPROT),
        .S_AXI_ARREADY(icn_ctrl_M06_AXI_ARREADY),
        .S_AXI_ARVALID(icn_ctrl_M06_AXI_ARVALID),
        .S_AXI_AWADDR(icn_ctrl_M06_AXI_AWADDR),
        .S_AXI_AWPROT(icn_ctrl_M06_AXI_AWPROT),
        .S_AXI_AWREADY(icn_ctrl_M06_AXI_AWREADY),
        .S_AXI_AWVALID(icn_ctrl_M06_AXI_AWVALID),
        .S_AXI_BREADY(icn_ctrl_M06_AXI_BREADY),
        .S_AXI_BRESP(icn_ctrl_M06_AXI_BRESP),
        .S_AXI_BVALID(icn_ctrl_M06_AXI_BVALID),
        .S_AXI_RDATA(icn_ctrl_M06_AXI_RDATA),
        .S_AXI_RREADY(icn_ctrl_M06_AXI_RREADY),
        .S_AXI_RRESP(icn_ctrl_M06_AXI_RRESP),
        .S_AXI_RVALID(icn_ctrl_M06_AXI_RVALID),
        .S_AXI_WDATA(icn_ctrl_M06_AXI_WDATA),
        .S_AXI_WREADY(icn_ctrl_M06_AXI_WREADY),
        .S_AXI_WSTRB(icn_ctrl_M06_AXI_WSTRB),
        .S_AXI_WVALID(icn_ctrl_M06_AXI_WVALID),
        .chip_reset_n(CHIP_RSTB),
        .chip_vdd(CHIP_VDD),
        .chip_vdda(CHIP_VDDA),
        .chip_vddio(CHIP_VDDIO),
        .chip_vddlvds(CHIP_VDDLVDS),
        .clk(clk_250),
        .lvl_trsl_oe_n(LVL_TRSL_OE_N),
        .resetn(aresetn));
  clk_192_imp_1JPME8P clk_192
       (.LVDS_CLK_clk_n(LVDS_CLK_clk_n),
        .LVDS_CLK_clk_p(LVDS_CLK_clk_p),
        .clk_192(clk_192_1),
        .clk_200(clk_200),
        .resetn(aresetn));
  assign dummy_intr_dout = 1'h0;
  frame_gen_imp_10O9CVK frame_gen
       (.CHIP_GPIO13(CHIP_GPIO13),
        .CHIP_GPIO15(CHIP_GPIO15),
        .CHIP_GPIO15_DIR(CHIP_GPIO15_DIR),
        .CHIP_GPIO_BYTE_DIR(CHIP_GPIO_BYTE_DIR),
        .CHIP_PA_SYNC(CHIP_PA_SYNC),
        .CHIP_RS0(CHIP_RS0),
        .CHIP_RS256(CHIP_RS256),
        .S_AXI_araddr(S_AXI_3_ARADDR),
        .S_AXI_arprot(S_AXI_3_ARPROT),
        .S_AXI_arready(S_AXI_3_ARREADY),
        .S_AXI_arvalid(S_AXI_3_ARVALID),
        .S_AXI_awaddr(S_AXI_3_AWADDR),
        .S_AXI_awprot(S_AXI_3_AWPROT),
        .S_AXI_awready(S_AXI_3_AWREADY),
        .S_AXI_awvalid(S_AXI_3_AWVALID),
        .S_AXI_bready(S_AXI_3_BREADY),
        .S_AXI_bresp(S_AXI_3_BRESP),
        .S_AXI_bvalid(S_AXI_3_BVALID),
        .S_AXI_rdata(S_AXI_3_RDATA),
        .S_AXI_rready(S_AXI_3_RREADY),
        .S_AXI_rresp(S_AXI_3_RRESP),
        .S_AXI_rvalid(S_AXI_3_RVALID),
        .S_AXI_wdata(S_AXI_3_WDATA),
        .S_AXI_wready(S_AXI_3_WREADY),
        .S_AXI_wstrb(S_AXI_3_WSTRB),
        .S_AXI_wvalid(S_AXI_3_WVALID),
        .axis_md_tdata(frame_gen_axis_md_TDATA),
        .axis_md_tready(frame_gen_axis_md_TREADY),
        .axis_md_tvalid(frame_gen_axis_md_TVALID),
        .clk_192(clk_192_1),
        .sys_clk(clk_250));
  top_level_icn_ctrl_0 icn_ctrl
       (.M00_AXI_araddr(icn_ctrl_M00_AXI_ARADDR),
        .M00_AXI_arready(icn_ctrl_M00_AXI_ARREADY),
        .M00_AXI_arvalid(icn_ctrl_M00_AXI_ARVALID),
        .M00_AXI_awaddr(icn_ctrl_M00_AXI_AWADDR),
        .M00_AXI_awready(icn_ctrl_M00_AXI_AWREADY),
        .M00_AXI_awvalid(icn_ctrl_M00_AXI_AWVALID),
        .M00_AXI_bready(icn_ctrl_M00_AXI_BREADY),
        .M00_AXI_bresp(icn_ctrl_M00_AXI_BRESP),
        .M00_AXI_bvalid(icn_ctrl_M00_AXI_BVALID),
        .M00_AXI_rdata(icn_ctrl_M00_AXI_RDATA),
        .M00_AXI_rready(icn_ctrl_M00_AXI_RREADY),
        .M00_AXI_rresp(icn_ctrl_M00_AXI_RRESP),
        .M00_AXI_rvalid(icn_ctrl_M00_AXI_RVALID),
        .M00_AXI_wdata(icn_ctrl_M00_AXI_WDATA),
        .M00_AXI_wready(icn_ctrl_M00_AXI_WREADY),
        .M00_AXI_wstrb(icn_ctrl_M00_AXI_WSTRB),
        .M00_AXI_wvalid(icn_ctrl_M00_AXI_WVALID),
        .M01_AXI_araddr(S_AXI_2_ARADDR),
        .M01_AXI_arprot(S_AXI_2_ARPROT),
        .M01_AXI_arready(S_AXI_2_ARREADY),
        .M01_AXI_arvalid(S_AXI_2_ARVALID),
        .M01_AXI_awaddr(S_AXI_2_AWADDR),
        .M01_AXI_awprot(S_AXI_2_AWPROT),
        .M01_AXI_awready(S_AXI_2_AWREADY),
        .M01_AXI_awvalid(S_AXI_2_AWVALID),
        .M01_AXI_bready(S_AXI_2_BREADY),
        .M01_AXI_bresp(S_AXI_2_BRESP),
        .M01_AXI_bvalid(S_AXI_2_BVALID),
        .M01_AXI_rdata(S_AXI_2_RDATA),
        .M01_AXI_rready(S_AXI_2_RREADY),
        .M01_AXI_rresp(S_AXI_2_RRESP),
        .M01_AXI_rvalid(S_AXI_2_RVALID),
        .M01_AXI_wdata(S_AXI_2_WDATA),
        .M01_AXI_wready(S_AXI_2_WREADY),
        .M01_AXI_wstrb(S_AXI_2_WSTRB),
        .M01_AXI_wvalid(S_AXI_2_WVALID),
        .M02_AXI_araddr(S_AXI_CTL_1_ARADDR),
        .M02_AXI_arprot(S_AXI_CTL_1_ARPROT),
        .M02_AXI_arready(S_AXI_CTL_1_ARREADY),
        .M02_AXI_arvalid(S_AXI_CTL_1_ARVALID),
        .M02_AXI_awaddr(S_AXI_CTL_1_AWADDR),
        .M02_AXI_awprot(S_AXI_CTL_1_AWPROT),
        .M02_AXI_awready(S_AXI_CTL_1_AWREADY),
        .M02_AXI_awvalid(S_AXI_CTL_1_AWVALID),
        .M02_AXI_bready(S_AXI_CTL_1_BREADY),
        .M02_AXI_bresp(S_AXI_CTL_1_BRESP),
        .M02_AXI_bvalid(S_AXI_CTL_1_BVALID),
        .M02_AXI_rdata(S_AXI_CTL_1_RDATA),
        .M02_AXI_rready(S_AXI_CTL_1_RREADY),
        .M02_AXI_rresp(S_AXI_CTL_1_RRESP),
        .M02_AXI_rvalid(S_AXI_CTL_1_RVALID),
        .M02_AXI_wdata(S_AXI_CTL_1_WDATA),
        .M02_AXI_wready(S_AXI_CTL_1_WREADY),
        .M02_AXI_wstrb(S_AXI_CTL_1_WSTRB),
        .M02_AXI_wvalid(S_AXI_CTL_1_WVALID),
        .M03_AXI_araddr(icn_ctrl_M03_AXI_ARADDR),
        .M03_AXI_arprot(icn_ctrl_M03_AXI_ARPROT),
        .M03_AXI_arready(icn_ctrl_M03_AXI_ARREADY),
        .M03_AXI_arvalid(icn_ctrl_M03_AXI_ARVALID),
        .M03_AXI_awaddr(icn_ctrl_M03_AXI_AWADDR),
        .M03_AXI_awprot(icn_ctrl_M03_AXI_AWPROT),
        .M03_AXI_awready(icn_ctrl_M03_AXI_AWREADY),
        .M03_AXI_awvalid(icn_ctrl_M03_AXI_AWVALID),
        .M03_AXI_bready(icn_ctrl_M03_AXI_BREADY),
        .M03_AXI_bresp(icn_ctrl_M03_AXI_BRESP),
        .M03_AXI_bvalid(icn_ctrl_M03_AXI_BVALID),
        .M03_AXI_rdata(icn_ctrl_M03_AXI_RDATA),
        .M03_AXI_rready(icn_ctrl_M03_AXI_RREADY),
        .M03_AXI_rresp(icn_ctrl_M03_AXI_RRESP),
        .M03_AXI_rvalid(icn_ctrl_M03_AXI_RVALID),
        .M03_AXI_wdata(icn_ctrl_M03_AXI_WDATA),
        .M03_AXI_wready(icn_ctrl_M03_AXI_WREADY),
        .M03_AXI_wstrb(icn_ctrl_M03_AXI_WSTRB),
        .M03_AXI_wvalid(icn_ctrl_M03_AXI_WVALID),
        .M04_AXI_araddr(AXI_CLOCK_CTL_1_ARADDR),
        .M04_AXI_arprot(AXI_CLOCK_CTL_1_ARPROT),
        .M04_AXI_arready(AXI_CLOCK_CTL_1_ARREADY),
        .M04_AXI_arvalid(AXI_CLOCK_CTL_1_ARVALID),
        .M04_AXI_awaddr(AXI_CLOCK_CTL_1_AWADDR),
        .M04_AXI_awprot(AXI_CLOCK_CTL_1_AWPROT),
        .M04_AXI_awready(AXI_CLOCK_CTL_1_AWREADY),
        .M04_AXI_awvalid(AXI_CLOCK_CTL_1_AWVALID),
        .M04_AXI_bready(AXI_CLOCK_CTL_1_BREADY),
        .M04_AXI_bresp(AXI_CLOCK_CTL_1_BRESP),
        .M04_AXI_bvalid(AXI_CLOCK_CTL_1_BVALID),
        .M04_AXI_rdata(AXI_CLOCK_CTL_1_RDATA),
        .M04_AXI_rready(AXI_CLOCK_CTL_1_RREADY),
        .M04_AXI_rresp(AXI_CLOCK_CTL_1_RRESP),
        .M04_AXI_rvalid(AXI_CLOCK_CTL_1_RVALID),
        .M04_AXI_wdata(AXI_CLOCK_CTL_1_WDATA),
        .M04_AXI_wready(AXI_CLOCK_CTL_1_WREADY),
        .M04_AXI_wstrb(AXI_CLOCK_CTL_1_WSTRB),
        .M04_AXI_wvalid(AXI_CLOCK_CTL_1_WVALID),
        .M05_AXI_araddr(S_AXI_1_ARADDR),
        .M05_AXI_arprot(S_AXI_1_ARPROT),
        .M05_AXI_arready(S_AXI_1_ARREADY),
        .M05_AXI_arvalid(S_AXI_1_ARVALID),
        .M05_AXI_awaddr(S_AXI_1_AWADDR),
        .M05_AXI_awprot(S_AXI_1_AWPROT),
        .M05_AXI_awready(S_AXI_1_AWREADY),
        .M05_AXI_awvalid(S_AXI_1_AWVALID),
        .M05_AXI_bready(S_AXI_1_BREADY),
        .M05_AXI_bresp(S_AXI_1_BRESP),
        .M05_AXI_bvalid(S_AXI_1_BVALID),
        .M05_AXI_rdata(S_AXI_1_RDATA),
        .M05_AXI_rready(S_AXI_1_RREADY),
        .M05_AXI_rresp(S_AXI_1_RRESP),
        .M05_AXI_rvalid(S_AXI_1_RVALID),
        .M05_AXI_wdata(S_AXI_1_WDATA),
        .M05_AXI_wready(S_AXI_1_WREADY),
        .M05_AXI_wstrb(S_AXI_1_WSTRB),
        .M05_AXI_wvalid(S_AXI_1_WVALID),
        .M06_AXI_araddr(icn_ctrl_M06_AXI_ARADDR),
        .M06_AXI_arprot(icn_ctrl_M06_AXI_ARPROT),
        .M06_AXI_arready(icn_ctrl_M06_AXI_ARREADY),
        .M06_AXI_arvalid(icn_ctrl_M06_AXI_ARVALID),
        .M06_AXI_awaddr(icn_ctrl_M06_AXI_AWADDR),
        .M06_AXI_awprot(icn_ctrl_M06_AXI_AWPROT),
        .M06_AXI_awready(icn_ctrl_M06_AXI_AWREADY),
        .M06_AXI_awvalid(icn_ctrl_M06_AXI_AWVALID),
        .M06_AXI_bready(icn_ctrl_M06_AXI_BREADY),
        .M06_AXI_bresp(icn_ctrl_M06_AXI_BRESP),
        .M06_AXI_bvalid(icn_ctrl_M06_AXI_BVALID),
        .M06_AXI_rdata(icn_ctrl_M06_AXI_RDATA),
        .M06_AXI_rready(icn_ctrl_M06_AXI_RREADY),
        .M06_AXI_rresp(icn_ctrl_M06_AXI_RRESP),
        .M06_AXI_rvalid(icn_ctrl_M06_AXI_RVALID),
        .M06_AXI_wdata(icn_ctrl_M06_AXI_WDATA),
        .M06_AXI_wready(icn_ctrl_M06_AXI_WREADY),
        .M06_AXI_wstrb(icn_ctrl_M06_AXI_WSTRB),
        .M06_AXI_wvalid(icn_ctrl_M06_AXI_WVALID),
        .M07_AXI_araddr(S_AXI_3_ARADDR),
        .M07_AXI_arprot(S_AXI_3_ARPROT),
        .M07_AXI_arready(S_AXI_3_ARREADY),
        .M07_AXI_arvalid(S_AXI_3_ARVALID),
        .M07_AXI_awaddr(S_AXI_3_AWADDR),
        .M07_AXI_awprot(S_AXI_3_AWPROT),
        .M07_AXI_awready(S_AXI_3_AWREADY),
        .M07_AXI_awvalid(S_AXI_3_AWVALID),
        .M07_AXI_bready(S_AXI_3_BREADY),
        .M07_AXI_bresp(S_AXI_3_BRESP),
        .M07_AXI_bvalid(S_AXI_3_BVALID),
        .M07_AXI_rdata(S_AXI_3_RDATA),
        .M07_AXI_rready(S_AXI_3_RREADY),
        .M07_AXI_rresp(S_AXI_3_RRESP),
        .M07_AXI_rvalid(S_AXI_3_RVALID),
        .M07_AXI_wdata(S_AXI_3_WDATA),
        .M07_AXI_wready(S_AXI_3_WREADY),
        .M07_AXI_wstrb(S_AXI_3_WSTRB),
        .M07_AXI_wvalid(S_AXI_3_WVALID),
        .M08_AXI_araddr(S_AXI_CTL_2_ARADDR),
        .M08_AXI_arprot(S_AXI_CTL_2_ARPROT),
        .M08_AXI_arready(S_AXI_CTL_2_ARREADY),
        .M08_AXI_arvalid(S_AXI_CTL_2_ARVALID),
        .M08_AXI_awaddr(S_AXI_CTL_2_AWADDR),
        .M08_AXI_awprot(S_AXI_CTL_2_AWPROT),
        .M08_AXI_awready(S_AXI_CTL_2_AWREADY),
        .M08_AXI_awvalid(S_AXI_CTL_2_AWVALID),
        .M08_AXI_bready(S_AXI_CTL_2_BREADY),
        .M08_AXI_bresp(S_AXI_CTL_2_BRESP),
        .M08_AXI_bvalid(S_AXI_CTL_2_BVALID),
        .M08_AXI_rdata(S_AXI_CTL_2_RDATA),
        .M08_AXI_rready(S_AXI_CTL_2_RREADY),
        .M08_AXI_rresp(S_AXI_CTL_2_RRESP),
        .M08_AXI_rvalid(S_AXI_CTL_2_RVALID),
        .M08_AXI_wdata(S_AXI_CTL_2_WDATA),
        .M08_AXI_wready(S_AXI_CTL_2_WREADY),
        .M08_AXI_wstrb(S_AXI_CTL_2_WSTRB),
        .M08_AXI_wvalid(S_AXI_CTL_2_WVALID),
        .M09_AXI_araddr(icn_ctrl_M09_AXI_ARADDR),
        .M09_AXI_arprot(icn_ctrl_M09_AXI_ARPROT),
        .M09_AXI_arready(icn_ctrl_M09_AXI_ARREADY),
        .M09_AXI_arvalid(icn_ctrl_M09_AXI_ARVALID),
        .M09_AXI_awaddr(icn_ctrl_M09_AXI_AWADDR),
        .M09_AXI_awprot(icn_ctrl_M09_AXI_AWPROT),
        .M09_AXI_awready(icn_ctrl_M09_AXI_AWREADY),
        .M09_AXI_awvalid(icn_ctrl_M09_AXI_AWVALID),
        .M09_AXI_bready(icn_ctrl_M09_AXI_BREADY),
        .M09_AXI_bresp(icn_ctrl_M09_AXI_BRESP),
        .M09_AXI_bvalid(icn_ctrl_M09_AXI_BVALID),
        .M09_AXI_rdata(icn_ctrl_M09_AXI_RDATA),
        .M09_AXI_rready(icn_ctrl_M09_AXI_RREADY),
        .M09_AXI_rresp(icn_ctrl_M09_AXI_RRESP),
        .M09_AXI_rvalid(icn_ctrl_M09_AXI_RVALID),
        .M09_AXI_wdata(icn_ctrl_M09_AXI_WDATA),
        .M09_AXI_wready(icn_ctrl_M09_AXI_WREADY),
        .M09_AXI_wstrb(icn_ctrl_M09_AXI_WSTRB),
        .M09_AXI_wvalid(icn_ctrl_M09_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_aruser(S00_AXI_aruser),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awuser(S00_AXI_awuser),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(axi_uart_bridge_M_AXI_ARADDR),
        .S01_AXI_arprot({1'b0,1'b0,1'b0}),
        .S01_AXI_arready(axi_uart_bridge_M_AXI_ARREADY),
        .S01_AXI_arvalid(axi_uart_bridge_M_AXI_ARVALID),
        .S01_AXI_awaddr(axi_uart_bridge_M_AXI_AWADDR),
        .S01_AXI_awprot({1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_uart_bridge_M_AXI_AWREADY),
        .S01_AXI_awvalid(axi_uart_bridge_M_AXI_AWVALID),
        .S01_AXI_bready(axi_uart_bridge_M_AXI_BREADY),
        .S01_AXI_bresp(axi_uart_bridge_M_AXI_BRESP),
        .S01_AXI_bvalid(axi_uart_bridge_M_AXI_BVALID),
        .S01_AXI_rdata(axi_uart_bridge_M_AXI_RDATA),
        .S01_AXI_rready(axi_uart_bridge_M_AXI_RREADY),
        .S01_AXI_rresp(axi_uart_bridge_M_AXI_RRESP),
        .S01_AXI_rvalid(axi_uart_bridge_M_AXI_RVALID),
        .S01_AXI_wdata(axi_uart_bridge_M_AXI_WDATA),
        .S01_AXI_wready(axi_uart_bridge_M_AXI_WREADY),
        .S01_AXI_wstrb(axi_uart_bridge_M_AXI_WSTRB),
        .S01_AXI_wvalid(axi_uart_bridge_M_AXI_WVALID),
        .aclk(clk_250),
        .aclk1(clk_192_1),
        .aresetn(aresetn));
  lvds_imp_1LT6GK4 lvds
       (.LVDS_BANKA_clk_n(LVDS_BANKA_clk_n),
        .LVDS_BANKA_clk_p(LVDS_BANKA_clk_p),
        .LVDS_DN(LVDS_DN),
        .LVDS_DP(LVDS_DP),
        .S_AXI_araddr(S_AXI_2_ARADDR),
        .S_AXI_arprot(S_AXI_2_ARPROT),
        .S_AXI_arready(S_AXI_2_ARREADY),
        .S_AXI_arvalid(S_AXI_2_ARVALID),
        .S_AXI_awaddr(S_AXI_2_AWADDR),
        .S_AXI_awprot(S_AXI_2_AWPROT),
        .S_AXI_awready(S_AXI_2_AWREADY),
        .S_AXI_awvalid(S_AXI_2_AWVALID),
        .S_AXI_bready(S_AXI_2_BREADY),
        .S_AXI_bresp(S_AXI_2_BRESP),
        .S_AXI_bvalid(S_AXI_2_BVALID),
        .S_AXI_rdata(S_AXI_2_RDATA),
        .S_AXI_rready(S_AXI_2_RREADY),
        .S_AXI_rresp(S_AXI_2_RRESP),
        .S_AXI_rvalid(S_AXI_2_RVALID),
        .S_AXI_wdata(S_AXI_2_WDATA),
        .S_AXI_wready(S_AXI_2_WREADY),
        .S_AXI_wstrb(S_AXI_2_WSTRB),
        .S_AXI_wvalid(S_AXI_2_WVALID),
        .axis_out_tdata(lvds_axis_out_TDATA),
        .axis_out_tready(lvds_axis_out_TREADY),
        .axis_out_tvalid(lvds_axis_out_TVALID),
        .clk_192(clk_192_1),
        .sys_clk(clk_250));
  mc_qsfp_imp_1T1R239 mc_qsfp
       (.AXIS_FD_IN_tdata(lvds_axis_out_TDATA),
        .AXIS_FD_IN_tready(lvds_axis_out_TREADY),
        .AXIS_FD_IN_tvalid(lvds_axis_out_TVALID),
        .AXIS_MD_IN_tdata(frame_gen_axis_md_TDATA),
        .AXIS_MD_IN_tready(frame_gen_axis_md_TREADY),
        .AXIS_MD_IN_tvalid(frame_gen_axis_md_TVALID),
        .S_MC_CTL_araddr(S_AXI_CTL_2_ARADDR),
        .S_MC_CTL_arprot(S_AXI_CTL_2_ARPROT),
        .S_MC_CTL_arready(S_AXI_CTL_2_ARREADY),
        .S_MC_CTL_arvalid(S_AXI_CTL_2_ARVALID),
        .S_MC_CTL_awaddr(S_AXI_CTL_2_AWADDR),
        .S_MC_CTL_awprot(S_AXI_CTL_2_AWPROT),
        .S_MC_CTL_awready(S_AXI_CTL_2_AWREADY),
        .S_MC_CTL_awvalid(S_AXI_CTL_2_AWVALID),
        .S_MC_CTL_bready(S_AXI_CTL_2_BREADY),
        .S_MC_CTL_bresp(S_AXI_CTL_2_BRESP),
        .S_MC_CTL_bvalid(S_AXI_CTL_2_BVALID),
        .S_MC_CTL_rdata(S_AXI_CTL_2_RDATA),
        .S_MC_CTL_rready(S_AXI_CTL_2_RREADY),
        .S_MC_CTL_rresp(S_AXI_CTL_2_RRESP),
        .S_MC_CTL_rvalid(S_AXI_CTL_2_RVALID),
        .S_MC_CTL_wdata(S_AXI_CTL_2_WDATA),
        .S_MC_CTL_wready(S_AXI_CTL_2_WREADY),
        .S_MC_CTL_wstrb(S_AXI_CTL_2_WSTRB),
        .S_MC_CTL_wvalid(S_AXI_CTL_2_WVALID),
        .aresetn(aresetn),
        .clk_250(clk_250),
        .qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .qsfp_lpmode(qsfp_lpmode),
        .rx0_aligned(rx0_aligned),
        .rx1_aligned(rx1_aligned),
        .s_qsfp_ctl_araddr(icn_ctrl_M09_AXI_ARADDR),
        .s_qsfp_ctl_arprot(icn_ctrl_M09_AXI_ARPROT),
        .s_qsfp_ctl_arready(icn_ctrl_M09_AXI_ARREADY),
        .s_qsfp_ctl_arvalid(icn_ctrl_M09_AXI_ARVALID),
        .s_qsfp_ctl_awaddr(icn_ctrl_M09_AXI_AWADDR),
        .s_qsfp_ctl_awprot(icn_ctrl_M09_AXI_AWPROT),
        .s_qsfp_ctl_awready(icn_ctrl_M09_AXI_AWREADY),
        .s_qsfp_ctl_awvalid(icn_ctrl_M09_AXI_AWVALID),
        .s_qsfp_ctl_bready(icn_ctrl_M09_AXI_BREADY),
        .s_qsfp_ctl_bresp(icn_ctrl_M09_AXI_BRESP),
        .s_qsfp_ctl_bvalid(icn_ctrl_M09_AXI_BVALID),
        .s_qsfp_ctl_rdata(icn_ctrl_M09_AXI_RDATA),
        .s_qsfp_ctl_rready(icn_ctrl_M09_AXI_RREADY),
        .s_qsfp_ctl_rresp(icn_ctrl_M09_AXI_RRESP),
        .s_qsfp_ctl_rvalid(icn_ctrl_M09_AXI_RVALID),
        .s_qsfp_ctl_wdata(icn_ctrl_M09_AXI_WDATA),
        .s_qsfp_ctl_wready(icn_ctrl_M09_AXI_WREADY),
        .s_qsfp_ctl_wstrb(icn_ctrl_M09_AXI_WSTRB),
        .s_qsfp_ctl_wvalid(icn_ctrl_M09_AXI_WVALID));
  assign ilconstant_0_dout = 1'h1;
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=132,numReposBlks=108,numNonXlnxBlks=0,numHierBlks=24,maxHierDepth=4,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=56,numPkgbdBlks=3,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
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
    LVDS_BANKA_clk_n,
    LVDS_BANKA_clk_p,
    LVDS_CLK_clk_n,
    LVDS_CLK_clk_p,
    LVDS_DN,
    LVDS_DP,
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
    lpddr4_clk3_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp_lpmode,
    rx0_aligned,
    rx1_aligned);
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
  input [0:0]LVDS_BANKA_clk_n;
  input [0:0]LVDS_BANKA_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LVDS_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) output [0:0]LVDS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 LVDS_CLK CLK_P" *) output [0:0]LVDS_CLK_clk_p;
  input [7:0]LVDS_DN;
  input [7:0]LVDS_DP;
  output LVL_TRSL_OE_N;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) (* X_INTERFACE_MODE = "Master" *) input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;
  output [2:0]UCI_ADC_CSN;
  input UCI_ADC_MISO;
  output UCI_ADC_MOSI;
  output UCI_ADC_SCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip1, CAN_DEBUG false" *) output [5:0]ch0_lpddr4_trip1_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CA_B" *) output [5:0]ch0_lpddr4_trip1_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_C_A" *) output ch0_lpddr4_trip1_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_C_B" *) output ch0_lpddr4_trip1_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_T_A" *) output ch0_lpddr4_trip1_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CK_T_B" *) output ch0_lpddr4_trip1_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CKE_A" *) output ch0_lpddr4_trip1_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CKE_B" *) output ch0_lpddr4_trip1_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CS_A" *) output ch0_lpddr4_trip1_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 CS_B" *) output ch0_lpddr4_trip1_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DMI_A" *) inout [1:0]ch0_lpddr4_trip1_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DMI_B" *) inout [1:0]ch0_lpddr4_trip1_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQ_A" *) inout [15:0]ch0_lpddr4_trip1_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQ_B" *) inout [15:0]ch0_lpddr4_trip1_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_C_A" *) inout [1:0]ch0_lpddr4_trip1_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_C_B" *) inout [1:0]ch0_lpddr4_trip1_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_T_A" *) inout [1:0]ch0_lpddr4_trip1_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 DQS_T_B" *) inout [1:0]ch0_lpddr4_trip1_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip1 RESET_N" *) output ch0_lpddr4_trip1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip2, CAN_DEBUG false" *) output [5:0]ch0_lpddr4_trip2_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CA_B" *) output [5:0]ch0_lpddr4_trip2_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_C_A" *) output ch0_lpddr4_trip2_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_C_B" *) output ch0_lpddr4_trip2_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_T_A" *) output ch0_lpddr4_trip2_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CK_T_B" *) output ch0_lpddr4_trip2_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CKE_A" *) output ch0_lpddr4_trip2_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CKE_B" *) output ch0_lpddr4_trip2_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CS_A" *) output ch0_lpddr4_trip2_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 CS_B" *) output ch0_lpddr4_trip2_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DMI_A" *) inout [1:0]ch0_lpddr4_trip2_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DMI_B" *) inout [1:0]ch0_lpddr4_trip2_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQ_A" *) inout [15:0]ch0_lpddr4_trip2_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQ_B" *) inout [15:0]ch0_lpddr4_trip2_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_C_A" *) inout [1:0]ch0_lpddr4_trip2_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_C_B" *) inout [1:0]ch0_lpddr4_trip2_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_T_A" *) inout [1:0]ch0_lpddr4_trip2_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 DQS_T_B" *) inout [1:0]ch0_lpddr4_trip2_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip2 RESET_N" *) output ch0_lpddr4_trip2_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch0_lpddr4_trip3, CAN_DEBUG false" *) output [5:0]ch0_lpddr4_trip3_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CA_B" *) output [5:0]ch0_lpddr4_trip3_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_C_A" *) output ch0_lpddr4_trip3_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_C_B" *) output ch0_lpddr4_trip3_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_T_A" *) output ch0_lpddr4_trip3_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CK_T_B" *) output ch0_lpddr4_trip3_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CKE_A" *) output ch0_lpddr4_trip3_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CKE_B" *) output ch0_lpddr4_trip3_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CS_A" *) output ch0_lpddr4_trip3_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 CS_B" *) output ch0_lpddr4_trip3_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DMI_A" *) inout [1:0]ch0_lpddr4_trip3_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DMI_B" *) inout [1:0]ch0_lpddr4_trip3_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQ_A" *) inout [15:0]ch0_lpddr4_trip3_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQ_B" *) inout [15:0]ch0_lpddr4_trip3_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_C_A" *) inout [1:0]ch0_lpddr4_trip3_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_C_B" *) inout [1:0]ch0_lpddr4_trip3_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_T_A" *) inout [1:0]ch0_lpddr4_trip3_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 DQS_T_B" *) inout [1:0]ch0_lpddr4_trip3_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch0_lpddr4_trip3 RESET_N" *) output ch0_lpddr4_trip3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip1, CAN_DEBUG false" *) output [5:0]ch1_lpddr4_trip1_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CA_B" *) output [5:0]ch1_lpddr4_trip1_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_C_A" *) output ch1_lpddr4_trip1_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_C_B" *) output ch1_lpddr4_trip1_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_T_A" *) output ch1_lpddr4_trip1_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CK_T_B" *) output ch1_lpddr4_trip1_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CKE_A" *) output ch1_lpddr4_trip1_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CKE_B" *) output ch1_lpddr4_trip1_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CS_A" *) output ch1_lpddr4_trip1_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 CS_B" *) output ch1_lpddr4_trip1_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DMI_A" *) inout [1:0]ch1_lpddr4_trip1_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DMI_B" *) inout [1:0]ch1_lpddr4_trip1_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQ_A" *) inout [15:0]ch1_lpddr4_trip1_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQ_B" *) inout [15:0]ch1_lpddr4_trip1_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_C_A" *) inout [1:0]ch1_lpddr4_trip1_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_C_B" *) inout [1:0]ch1_lpddr4_trip1_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_T_A" *) inout [1:0]ch1_lpddr4_trip1_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 DQS_T_B" *) inout [1:0]ch1_lpddr4_trip1_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip1 RESET_N" *) output ch1_lpddr4_trip1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip2, CAN_DEBUG false" *) output [5:0]ch1_lpddr4_trip2_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CA_B" *) output [5:0]ch1_lpddr4_trip2_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_C_A" *) output ch1_lpddr4_trip2_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_C_B" *) output ch1_lpddr4_trip2_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_T_A" *) output ch1_lpddr4_trip2_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CK_T_B" *) output ch1_lpddr4_trip2_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CKE_A" *) output ch1_lpddr4_trip2_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CKE_B" *) output ch1_lpddr4_trip2_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CS_A" *) output ch1_lpddr4_trip2_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 CS_B" *) output ch1_lpddr4_trip2_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DMI_A" *) inout [1:0]ch1_lpddr4_trip2_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DMI_B" *) inout [1:0]ch1_lpddr4_trip2_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQ_A" *) inout [15:0]ch1_lpddr4_trip2_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQ_B" *) inout [15:0]ch1_lpddr4_trip2_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_C_A" *) inout [1:0]ch1_lpddr4_trip2_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_C_B" *) inout [1:0]ch1_lpddr4_trip2_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_T_A" *) inout [1:0]ch1_lpddr4_trip2_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 DQS_T_B" *) inout [1:0]ch1_lpddr4_trip2_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip2 RESET_N" *) output ch1_lpddr4_trip2_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CA_A" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ch1_lpddr4_trip3, CAN_DEBUG false" *) output [5:0]ch1_lpddr4_trip3_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CA_B" *) output [5:0]ch1_lpddr4_trip3_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_C_A" *) output ch1_lpddr4_trip3_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_C_B" *) output ch1_lpddr4_trip3_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_T_A" *) output ch1_lpddr4_trip3_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CK_T_B" *) output ch1_lpddr4_trip3_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CKE_A" *) output ch1_lpddr4_trip3_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CKE_B" *) output ch1_lpddr4_trip3_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CS_A" *) output ch1_lpddr4_trip3_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 CS_B" *) output ch1_lpddr4_trip3_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DMI_A" *) inout [1:0]ch1_lpddr4_trip3_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DMI_B" *) inout [1:0]ch1_lpddr4_trip3_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQ_A" *) inout [15:0]ch1_lpddr4_trip3_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQ_B" *) inout [15:0]ch1_lpddr4_trip3_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_C_A" *) inout [1:0]ch1_lpddr4_trip3_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_C_B" *) inout [1:0]ch1_lpddr4_trip3_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_T_A" *) inout [1:0]ch1_lpddr4_trip3_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 DQS_T_B" *) inout [1:0]ch1_lpddr4_trip3_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 ch1_lpddr4_trip3 RESET_N" *) output ch1_lpddr4_trip3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk1 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk1, CAN_DEBUG false, FREQ_HZ 200321000" *) input lpddr4_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk1 CLK_P" *) input lpddr4_clk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk2 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk2, CAN_DEBUG false, FREQ_HZ 200321000" *) input lpddr4_clk2_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk2 CLK_P" *) input lpddr4_clk2_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk3 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpddr4_clk3, CAN_DEBUG false, FREQ_HZ 200321000" *) input lpddr4_clk3_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 lpddr4_clk3 CLK_P" *) input lpddr4_clk3_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 156250000" *) input [0:0]qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input [0:0]qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 156250000" *) input [0:0]qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input [0:0]qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output qsfp_lpmode;
  output rx0_aligned;
  output rx1_aligned;

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
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_AXI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_AXI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_AXI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_AXI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_AXI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_AXI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_AXI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_AXI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_AXI_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_AXI_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_AXI_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_AXI_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_AXI_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_AXI_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_AXI_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_AXI_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_1_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_AXI_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_AXI_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_AXI_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_AXI_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_AXI_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_AXI_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_FPD_CCI_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_1_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_FPD_CCI_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_2_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_2_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_2_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_2_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_2_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_2_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_2_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_2_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_2_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_2_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_2_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_2_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_2_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_2_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_2_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_2_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_2_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_2_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_2_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_2_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_2_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_2_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_2_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_2_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_2_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_2_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_FPD_CCI_NOC_2_WUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_2_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_3_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_3_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_3_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_3_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_3_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_3_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_3_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_3_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_3_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_FPD_CCI_NOC_3_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_3_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_3_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_3_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_FPD_CCI_NOC_3_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_3_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_FPD_CCI_NOC_3_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_FPD_CCI_NOC_3_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_FPD_CCI_NOC_3_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_3_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_3_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_3_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_3_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_FPD_CCI_NOC_3_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_FPD_CCI_NOC_3_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_FPD_CCI_NOC_3_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_FPD_CCI_NOC_3_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_FPD_CCI_NOC_3_WUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_FPD_CCI_NOC_3_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_LPD_AXI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_LPD_AXI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_LPD_AXI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_LPD_AXI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_LPD_AXI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_LPD_AXI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_LPD_AXI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_LPD_AXI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_LPD_AXI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_LPD_AXI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_LPD_AXI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_LPD_AXI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_LPD_AXI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_LPD_AXI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_LPD_AXI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_LPD_AXI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_LPD_AXI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_LPD_AXI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_LPD_AXI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_LPD_AXI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_LPD_AXI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_LPD_AXI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_LPD_AXI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_LPD_AXI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_LPD_AXI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_LPD_AXI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire CIPS_0_LPD_AXI_NOC_0_WVALID;
  wire [43:0]CIPS_0_M_AXI_GP0_ARADDR;
  wire [1:0]CIPS_0_M_AXI_GP0_ARBURST;
  wire [3:0]CIPS_0_M_AXI_GP0_ARCACHE;
  wire [15:0]CIPS_0_M_AXI_GP0_ARID;
  wire [7:0]CIPS_0_M_AXI_GP0_ARLEN;
  wire CIPS_0_M_AXI_GP0_ARLOCK;
  wire [2:0]CIPS_0_M_AXI_GP0_ARPROT;
  wire [3:0]CIPS_0_M_AXI_GP0_ARQOS;
  wire CIPS_0_M_AXI_GP0_ARREADY;
  wire [2:0]CIPS_0_M_AXI_GP0_ARSIZE;
  wire [15:0]CIPS_0_M_AXI_GP0_ARUSER;
  wire CIPS_0_M_AXI_GP0_ARVALID;
  wire [43:0]CIPS_0_M_AXI_GP0_AWADDR;
  wire [1:0]CIPS_0_M_AXI_GP0_AWBURST;
  wire [3:0]CIPS_0_M_AXI_GP0_AWCACHE;
  wire [15:0]CIPS_0_M_AXI_GP0_AWID;
  wire [7:0]CIPS_0_M_AXI_GP0_AWLEN;
  wire CIPS_0_M_AXI_GP0_AWLOCK;
  wire [2:0]CIPS_0_M_AXI_GP0_AWPROT;
  wire [3:0]CIPS_0_M_AXI_GP0_AWQOS;
  wire CIPS_0_M_AXI_GP0_AWREADY;
  wire [2:0]CIPS_0_M_AXI_GP0_AWSIZE;
  wire [15:0]CIPS_0_M_AXI_GP0_AWUSER;
  wire CIPS_0_M_AXI_GP0_AWVALID;
  wire [15:0]CIPS_0_M_AXI_GP0_BID;
  wire CIPS_0_M_AXI_GP0_BREADY;
  wire [1:0]CIPS_0_M_AXI_GP0_BRESP;
  wire CIPS_0_M_AXI_GP0_BVALID;
  wire [127:0]CIPS_0_M_AXI_GP0_RDATA;
  wire [15:0]CIPS_0_M_AXI_GP0_RID;
  wire CIPS_0_M_AXI_GP0_RLAST;
  wire CIPS_0_M_AXI_GP0_RREADY;
  wire [1:0]CIPS_0_M_AXI_GP0_RRESP;
  wire CIPS_0_M_AXI_GP0_RVALID;
  wire [127:0]CIPS_0_M_AXI_GP0_WDATA;
  wire CIPS_0_M_AXI_GP0_WLAST;
  wire CIPS_0_M_AXI_GP0_WREADY;
  wire [15:0]CIPS_0_M_AXI_GP0_WSTRB;
  wire CIPS_0_M_AXI_GP0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_PMC_NOC_AXI_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_PMC_NOC_AXI_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_PMC_NOC_AXI_0_ARLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_PMC_NOC_AXI_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_PMC_NOC_AXI_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_PMC_NOC_AXI_0_ARUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]CIPS_0_PMC_NOC_AXI_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_PMC_NOC_AXI_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]CIPS_0_PMC_NOC_AXI_0_AWLEN;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_PMC_NOC_AXI_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]CIPS_0_PMC_NOC_AXI_0_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]CIPS_0_PMC_NOC_AXI_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]CIPS_0_PMC_NOC_AXI_0_AWUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_BID;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_PMC_NOC_AXI_0_BRESP;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_BUSER;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_PMC_NOC_AXI_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_RLAST;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]CIPS_0_PMC_NOC_AXI_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_PMC_NOC_AXI_0_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]CIPS_0_PMC_NOC_AXI_0_WDATA;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]CIPS_0_PMC_NOC_AXI_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]CIPS_0_PMC_NOC_AXI_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]CIPS_0_PMC_NOC_AXI_0_WUSER;
  (* HARD_CONN = "true" *) wire CIPS_0_PMC_NOC_AXI_0_WVALID;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_axi_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_axi_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_cci_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_cci_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_cci_noc_axi2_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_fpd_cci_noc_axi3_clk;
  (* HARD_CONN = "true" *) wire CIPS_0_lpd_axi_noc_clk;
  wire CIPS_0_pl_clk0;
  wire CIPS_0_pl_resetn1;
  (* HARD_CONN = "true" *) wire CIPS_0_pmc_axi_noc_axi0_clk;
  wire [0:0]LVDS_BANKA_clk_n;
  wire [0:0]LVDS_BANKA_clk_p;
  wire [0:0]LVDS_CLK_clk_n;
  wire [0:0]LVDS_CLK_clk_p;
  wire [7:0]LVDS_DN;
  wire [7:0]LVDS_DP;
  wire LVL_TRSL_OE_N;
  wire UART_rxd;
  wire UART_txd;
  wire [2:0]UCI_ADC_CSN;
  wire UCI_ADC_MISO;
  wire UCI_ADC_MOSI;
  wire UCI_ADC_SCK;
  wire [5:0]ch0_lpddr4_trip1_ca_a;
  wire [5:0]ch0_lpddr4_trip1_ca_b;
  wire [0:0]\^ch0_lpddr4_trip1_ck_c_a ;
  wire [0:0]\^ch0_lpddr4_trip1_ck_c_b ;
  wire [0:0]\^ch0_lpddr4_trip1_ck_t_a ;
  wire [0:0]\^ch0_lpddr4_trip1_ck_t_b ;
  wire [0:0]\^ch0_lpddr4_trip1_cke_a ;
  wire [0:0]\^ch0_lpddr4_trip1_cke_b ;
  wire [0:0]\^ch0_lpddr4_trip1_cs_a ;
  wire [0:0]\^ch0_lpddr4_trip1_cs_b ;
  wire [1:0]ch0_lpddr4_trip1_dmi_a;
  wire [1:0]ch0_lpddr4_trip1_dmi_b;
  wire [15:0]ch0_lpddr4_trip1_dq_a;
  wire [15:0]ch0_lpddr4_trip1_dq_b;
  wire [1:0]ch0_lpddr4_trip1_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip1_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip1_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip1_dqs_t_b;
  wire [0:0]\^ch0_lpddr4_trip1_reset_n ;
  wire [5:0]ch0_lpddr4_trip2_ca_a;
  wire [5:0]ch0_lpddr4_trip2_ca_b;
  wire [0:0]\^ch0_lpddr4_trip2_ck_c_a ;
  wire [0:0]\^ch0_lpddr4_trip2_ck_c_b ;
  wire [0:0]\^ch0_lpddr4_trip2_ck_t_a ;
  wire [0:0]\^ch0_lpddr4_trip2_ck_t_b ;
  wire [0:0]\^ch0_lpddr4_trip2_cke_a ;
  wire [0:0]\^ch0_lpddr4_trip2_cke_b ;
  wire [0:0]\^ch0_lpddr4_trip2_cs_a ;
  wire [0:0]\^ch0_lpddr4_trip2_cs_b ;
  wire [1:0]ch0_lpddr4_trip2_dmi_a;
  wire [1:0]ch0_lpddr4_trip2_dmi_b;
  wire [15:0]ch0_lpddr4_trip2_dq_a;
  wire [15:0]ch0_lpddr4_trip2_dq_b;
  wire [1:0]ch0_lpddr4_trip2_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip2_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip2_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip2_dqs_t_b;
  wire [0:0]\^ch0_lpddr4_trip2_reset_n ;
  wire [5:0]ch0_lpddr4_trip3_ca_a;
  wire [5:0]ch0_lpddr4_trip3_ca_b;
  wire [0:0]\^ch0_lpddr4_trip3_ck_c_a ;
  wire [0:0]\^ch0_lpddr4_trip3_ck_c_b ;
  wire [0:0]\^ch0_lpddr4_trip3_ck_t_a ;
  wire [0:0]\^ch0_lpddr4_trip3_ck_t_b ;
  wire [0:0]\^ch0_lpddr4_trip3_cke_a ;
  wire [0:0]\^ch0_lpddr4_trip3_cke_b ;
  wire [0:0]\^ch0_lpddr4_trip3_cs_a ;
  wire [0:0]\^ch0_lpddr4_trip3_cs_b ;
  wire [1:0]ch0_lpddr4_trip3_dmi_a;
  wire [1:0]ch0_lpddr4_trip3_dmi_b;
  wire [15:0]ch0_lpddr4_trip3_dq_a;
  wire [15:0]ch0_lpddr4_trip3_dq_b;
  wire [1:0]ch0_lpddr4_trip3_dqs_c_a;
  wire [1:0]ch0_lpddr4_trip3_dqs_c_b;
  wire [1:0]ch0_lpddr4_trip3_dqs_t_a;
  wire [1:0]ch0_lpddr4_trip3_dqs_t_b;
  wire [0:0]\^ch0_lpddr4_trip3_reset_n ;
  wire [5:0]ch1_lpddr4_trip1_ca_a;
  wire [5:0]ch1_lpddr4_trip1_ca_b;
  wire [0:0]\^ch1_lpddr4_trip1_ck_c_a ;
  wire [0:0]\^ch1_lpddr4_trip1_ck_c_b ;
  wire [0:0]\^ch1_lpddr4_trip1_ck_t_a ;
  wire [0:0]\^ch1_lpddr4_trip1_ck_t_b ;
  wire [0:0]\^ch1_lpddr4_trip1_cke_a ;
  wire [0:0]\^ch1_lpddr4_trip1_cke_b ;
  wire [0:0]\^ch1_lpddr4_trip1_cs_a ;
  wire [0:0]\^ch1_lpddr4_trip1_cs_b ;
  wire [1:0]ch1_lpddr4_trip1_dmi_a;
  wire [1:0]ch1_lpddr4_trip1_dmi_b;
  wire [15:0]ch1_lpddr4_trip1_dq_a;
  wire [15:0]ch1_lpddr4_trip1_dq_b;
  wire [1:0]ch1_lpddr4_trip1_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip1_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip1_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip1_dqs_t_b;
  wire [0:0]\^ch1_lpddr4_trip1_reset_n ;
  wire [5:0]ch1_lpddr4_trip2_ca_a;
  wire [5:0]ch1_lpddr4_trip2_ca_b;
  wire [0:0]\^ch1_lpddr4_trip2_ck_c_a ;
  wire [0:0]\^ch1_lpddr4_trip2_ck_c_b ;
  wire [0:0]\^ch1_lpddr4_trip2_ck_t_a ;
  wire [0:0]\^ch1_lpddr4_trip2_ck_t_b ;
  wire [0:0]\^ch1_lpddr4_trip2_cke_a ;
  wire [0:0]\^ch1_lpddr4_trip2_cke_b ;
  wire [0:0]\^ch1_lpddr4_trip2_cs_a ;
  wire [0:0]\^ch1_lpddr4_trip2_cs_b ;
  wire [1:0]ch1_lpddr4_trip2_dmi_a;
  wire [1:0]ch1_lpddr4_trip2_dmi_b;
  wire [15:0]ch1_lpddr4_trip2_dq_a;
  wire [15:0]ch1_lpddr4_trip2_dq_b;
  wire [1:0]ch1_lpddr4_trip2_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip2_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip2_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip2_dqs_t_b;
  wire [0:0]\^ch1_lpddr4_trip2_reset_n ;
  wire [5:0]ch1_lpddr4_trip3_ca_a;
  wire [5:0]ch1_lpddr4_trip3_ca_b;
  wire [0:0]\^ch1_lpddr4_trip3_ck_c_a ;
  wire [0:0]\^ch1_lpddr4_trip3_ck_c_b ;
  wire [0:0]\^ch1_lpddr4_trip3_ck_t_a ;
  wire [0:0]\^ch1_lpddr4_trip3_ck_t_b ;
  wire [0:0]\^ch1_lpddr4_trip3_cke_a ;
  wire [0:0]\^ch1_lpddr4_trip3_cke_b ;
  wire [0:0]\^ch1_lpddr4_trip3_cs_a ;
  wire [0:0]\^ch1_lpddr4_trip3_cs_b ;
  wire [1:0]ch1_lpddr4_trip3_dmi_a;
  wire [1:0]ch1_lpddr4_trip3_dmi_b;
  wire [15:0]ch1_lpddr4_trip3_dq_a;
  wire [15:0]ch1_lpddr4_trip3_dq_b;
  wire [1:0]ch1_lpddr4_trip3_dqs_c_a;
  wire [1:0]ch1_lpddr4_trip3_dqs_c_b;
  wire [1:0]ch1_lpddr4_trip3_dqs_t_a;
  wire [1:0]ch1_lpddr4_trip3_dqs_t_b;
  wire [0:0]\^ch1_lpddr4_trip3_reset_n ;
  wire [0:0]cips_noc_M00_INI_INTERNOC;
  wire [0:0]cips_noc_M01_INI_INTERNOC;
  wire [0:0]cips_noc_M02_INI_INTERNOC;
  wire [0:0]cips_noc_M03_INI_INTERNOC;
  wire [0:0]cips_noc_M04_INI_INTERNOC;
  wire [0:0]cips_noc_M05_INI_INTERNOC;
  wire [0:0]cips_noc_M06_INI_INTERNOC;
  wire [0:0]cips_noc_M07_INI_INTERNOC;
  wire clk_wizard_0_clk_out1;
  wire clk_wizard_0_locked;
  wire clk_wizard_clk_200;
  wire lpddr4_clk1_clk_n;
  wire lpddr4_clk1_clk_p;
  wire lpddr4_clk2_clk_n;
  wire lpddr4_clk2_clk_p;
  wire lpddr4_clk3_clk_n;
  wire lpddr4_clk3_clk_p;
  wire [63:0]pl_rtl_M_AXI_RAM1_PCI_ARADDR;
  wire [1:0]pl_rtl_M_AXI_RAM1_PCI_ARBURST;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_ARCACHE;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_ARID;
  wire [7:0]pl_rtl_M_AXI_RAM1_PCI_ARLEN;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_ARLOCK;
  wire [2:0]pl_rtl_M_AXI_RAM1_PCI_ARPROT;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_ARQOS;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_ARREADY;
  wire [2:0]pl_rtl_M_AXI_RAM1_PCI_ARSIZE;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_ARVALID;
  wire [63:0]pl_rtl_M_AXI_RAM1_PCI_AWADDR;
  wire [1:0]pl_rtl_M_AXI_RAM1_PCI_AWBURST;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_AWCACHE;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_AWID;
  wire [7:0]pl_rtl_M_AXI_RAM1_PCI_AWLEN;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_AWLOCK;
  wire [2:0]pl_rtl_M_AXI_RAM1_PCI_AWPROT;
  wire [3:0]pl_rtl_M_AXI_RAM1_PCI_AWQOS;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_AWREADY;
  wire [2:0]pl_rtl_M_AXI_RAM1_PCI_AWSIZE;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_AWVALID;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_BREADY;
  wire [1:0]pl_rtl_M_AXI_RAM1_PCI_BRESP;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_BVALID;
  wire [511:0]pl_rtl_M_AXI_RAM1_PCI_RDATA;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_RLAST;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_RREADY;
  wire [1:0]pl_rtl_M_AXI_RAM1_PCI_RRESP;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_RVALID;
  wire [511:0]pl_rtl_M_AXI_RAM1_PCI_WDATA;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_WLAST;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_WREADY;
  wire [63:0]pl_rtl_M_AXI_RAM1_PCI_WSTRB;
  wire [0:0]pl_rtl_M_AXI_RAM1_PCI_WVALID;
  wire [63:0]pl_rtl_M_AXI_SYSRAM_ARADDR;
  wire [1:0]pl_rtl_M_AXI_SYSRAM_ARBURST;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_ARCACHE;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_ARID;
  wire [7:0]pl_rtl_M_AXI_SYSRAM_ARLEN;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_ARLOCK;
  wire [2:0]pl_rtl_M_AXI_SYSRAM_ARPROT;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_ARQOS;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_ARREADY;
  wire [2:0]pl_rtl_M_AXI_SYSRAM_ARSIZE;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_ARVALID;
  wire [63:0]pl_rtl_M_AXI_SYSRAM_AWADDR;
  wire [1:0]pl_rtl_M_AXI_SYSRAM_AWBURST;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_AWCACHE;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_AWID;
  wire [7:0]pl_rtl_M_AXI_SYSRAM_AWLEN;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_AWLOCK;
  wire [2:0]pl_rtl_M_AXI_SYSRAM_AWPROT;
  wire [3:0]pl_rtl_M_AXI_SYSRAM_AWQOS;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_AWREADY;
  wire [2:0]pl_rtl_M_AXI_SYSRAM_AWSIZE;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_AWVALID;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_BREADY;
  wire [1:0]pl_rtl_M_AXI_SYSRAM_BRESP;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_BVALID;
  wire [511:0]pl_rtl_M_AXI_SYSRAM_RDATA;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_RLAST;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_RREADY;
  wire [1:0]pl_rtl_M_AXI_SYSRAM_RRESP;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_RVALID;
  wire [511:0]pl_rtl_M_AXI_SYSRAM_WDATA;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_WLAST;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_WREADY;
  wire [63:0]pl_rtl_M_AXI_SYSRAM_WSTRB;
  wire [0:0]pl_rtl_M_AXI_SYSRAM_WVALID;
  wire pl_rtl_irq;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]qsfp0_clk_clk_n;
  wire [0:0]qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [0:0]qsfp1_clk_clk_n;
  wire [0:0]qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire qsfp_lpmode;
  wire rx0_aligned;
  wire rx1_aligned;

  assign ch0_lpddr4_trip1_ck_c_a = \^ch0_lpddr4_trip1_ck_c_a [0];
  assign ch0_lpddr4_trip1_ck_c_b = \^ch0_lpddr4_trip1_ck_c_b [0];
  assign ch0_lpddr4_trip1_ck_t_a = \^ch0_lpddr4_trip1_ck_t_a [0];
  assign ch0_lpddr4_trip1_ck_t_b = \^ch0_lpddr4_trip1_ck_t_b [0];
  assign ch0_lpddr4_trip1_cke_a = \^ch0_lpddr4_trip1_cke_a [0];
  assign ch0_lpddr4_trip1_cke_b = \^ch0_lpddr4_trip1_cke_b [0];
  assign ch0_lpddr4_trip1_cs_a = \^ch0_lpddr4_trip1_cs_a [0];
  assign ch0_lpddr4_trip1_cs_b = \^ch0_lpddr4_trip1_cs_b [0];
  assign ch0_lpddr4_trip1_reset_n = \^ch0_lpddr4_trip1_reset_n [0];
  assign ch0_lpddr4_trip2_ck_c_a = \^ch0_lpddr4_trip2_ck_c_a [0];
  assign ch0_lpddr4_trip2_ck_c_b = \^ch0_lpddr4_trip2_ck_c_b [0];
  assign ch0_lpddr4_trip2_ck_t_a = \^ch0_lpddr4_trip2_ck_t_a [0];
  assign ch0_lpddr4_trip2_ck_t_b = \^ch0_lpddr4_trip2_ck_t_b [0];
  assign ch0_lpddr4_trip2_cke_a = \^ch0_lpddr4_trip2_cke_a [0];
  assign ch0_lpddr4_trip2_cke_b = \^ch0_lpddr4_trip2_cke_b [0];
  assign ch0_lpddr4_trip2_cs_a = \^ch0_lpddr4_trip2_cs_a [0];
  assign ch0_lpddr4_trip2_cs_b = \^ch0_lpddr4_trip2_cs_b [0];
  assign ch0_lpddr4_trip2_reset_n = \^ch0_lpddr4_trip2_reset_n [0];
  assign ch0_lpddr4_trip3_ck_c_a = \^ch0_lpddr4_trip3_ck_c_a [0];
  assign ch0_lpddr4_trip3_ck_c_b = \^ch0_lpddr4_trip3_ck_c_b [0];
  assign ch0_lpddr4_trip3_ck_t_a = \^ch0_lpddr4_trip3_ck_t_a [0];
  assign ch0_lpddr4_trip3_ck_t_b = \^ch0_lpddr4_trip3_ck_t_b [0];
  assign ch0_lpddr4_trip3_cke_a = \^ch0_lpddr4_trip3_cke_a [0];
  assign ch0_lpddr4_trip3_cke_b = \^ch0_lpddr4_trip3_cke_b [0];
  assign ch0_lpddr4_trip3_cs_a = \^ch0_lpddr4_trip3_cs_a [0];
  assign ch0_lpddr4_trip3_cs_b = \^ch0_lpddr4_trip3_cs_b [0];
  assign ch0_lpddr4_trip3_reset_n = \^ch0_lpddr4_trip3_reset_n [0];
  assign ch1_lpddr4_trip1_ck_c_a = \^ch1_lpddr4_trip1_ck_c_a [0];
  assign ch1_lpddr4_trip1_ck_c_b = \^ch1_lpddr4_trip1_ck_c_b [0];
  assign ch1_lpddr4_trip1_ck_t_a = \^ch1_lpddr4_trip1_ck_t_a [0];
  assign ch1_lpddr4_trip1_ck_t_b = \^ch1_lpddr4_trip1_ck_t_b [0];
  assign ch1_lpddr4_trip1_cke_a = \^ch1_lpddr4_trip1_cke_a [0];
  assign ch1_lpddr4_trip1_cke_b = \^ch1_lpddr4_trip1_cke_b [0];
  assign ch1_lpddr4_trip1_cs_a = \^ch1_lpddr4_trip1_cs_a [0];
  assign ch1_lpddr4_trip1_cs_b = \^ch1_lpddr4_trip1_cs_b [0];
  assign ch1_lpddr4_trip1_reset_n = \^ch1_lpddr4_trip1_reset_n [0];
  assign ch1_lpddr4_trip2_ck_c_a = \^ch1_lpddr4_trip2_ck_c_a [0];
  assign ch1_lpddr4_trip2_ck_c_b = \^ch1_lpddr4_trip2_ck_c_b [0];
  assign ch1_lpddr4_trip2_ck_t_a = \^ch1_lpddr4_trip2_ck_t_a [0];
  assign ch1_lpddr4_trip2_ck_t_b = \^ch1_lpddr4_trip2_ck_t_b [0];
  assign ch1_lpddr4_trip2_cke_a = \^ch1_lpddr4_trip2_cke_a [0];
  assign ch1_lpddr4_trip2_cke_b = \^ch1_lpddr4_trip2_cke_b [0];
  assign ch1_lpddr4_trip2_cs_a = \^ch1_lpddr4_trip2_cs_a [0];
  assign ch1_lpddr4_trip2_cs_b = \^ch1_lpddr4_trip2_cs_b [0];
  assign ch1_lpddr4_trip2_reset_n = \^ch1_lpddr4_trip2_reset_n [0];
  assign ch1_lpddr4_trip3_ck_c_a = \^ch1_lpddr4_trip3_ck_c_a [0];
  assign ch1_lpddr4_trip3_ck_c_b = \^ch1_lpddr4_trip3_ck_c_b [0];
  assign ch1_lpddr4_trip3_ck_t_a = \^ch1_lpddr4_trip3_ck_t_a [0];
  assign ch1_lpddr4_trip3_ck_t_b = \^ch1_lpddr4_trip3_ck_t_b [0];
  assign ch1_lpddr4_trip3_cke_a = \^ch1_lpddr4_trip3_cke_a [0];
  assign ch1_lpddr4_trip3_cke_b = \^ch1_lpddr4_trip3_cke_b [0];
  assign ch1_lpddr4_trip3_cs_a = \^ch1_lpddr4_trip3_cs_a [0];
  assign ch1_lpddr4_trip3_cs_b = \^ch1_lpddr4_trip3_cs_b [0];
  assign ch1_lpddr4_trip3_reset_n = \^ch1_lpddr4_trip3_reset_n [0];
  top_level_CIPS_0_0 CIPS
       (.FPD_AXI_NOC_0_araddr(CIPS_0_FPD_AXI_NOC_0_ARADDR),
        .FPD_AXI_NOC_0_arburst(CIPS_0_FPD_AXI_NOC_0_ARBURST),
        .FPD_AXI_NOC_0_arcache(CIPS_0_FPD_AXI_NOC_0_ARCACHE),
        .FPD_AXI_NOC_0_arid(CIPS_0_FPD_AXI_NOC_0_ARID),
        .FPD_AXI_NOC_0_arlen(CIPS_0_FPD_AXI_NOC_0_ARLEN),
        .FPD_AXI_NOC_0_arlock(CIPS_0_FPD_AXI_NOC_0_ARLOCK),
        .FPD_AXI_NOC_0_arprot(CIPS_0_FPD_AXI_NOC_0_ARPROT),
        .FPD_AXI_NOC_0_arqos(CIPS_0_FPD_AXI_NOC_0_ARQOS),
        .FPD_AXI_NOC_0_arready(CIPS_0_FPD_AXI_NOC_0_ARREADY),
        .FPD_AXI_NOC_0_arsize(CIPS_0_FPD_AXI_NOC_0_ARSIZE),
        .FPD_AXI_NOC_0_aruser(CIPS_0_FPD_AXI_NOC_0_ARUSER),
        .FPD_AXI_NOC_0_arvalid(CIPS_0_FPD_AXI_NOC_0_ARVALID),
        .FPD_AXI_NOC_0_awaddr(CIPS_0_FPD_AXI_NOC_0_AWADDR),
        .FPD_AXI_NOC_0_awburst(CIPS_0_FPD_AXI_NOC_0_AWBURST),
        .FPD_AXI_NOC_0_awcache(CIPS_0_FPD_AXI_NOC_0_AWCACHE),
        .FPD_AXI_NOC_0_awid(CIPS_0_FPD_AXI_NOC_0_AWID),
        .FPD_AXI_NOC_0_awlen(CIPS_0_FPD_AXI_NOC_0_AWLEN),
        .FPD_AXI_NOC_0_awlock(CIPS_0_FPD_AXI_NOC_0_AWLOCK),
        .FPD_AXI_NOC_0_awprot(CIPS_0_FPD_AXI_NOC_0_AWPROT),
        .FPD_AXI_NOC_0_awqos(CIPS_0_FPD_AXI_NOC_0_AWQOS),
        .FPD_AXI_NOC_0_awready(CIPS_0_FPD_AXI_NOC_0_AWREADY),
        .FPD_AXI_NOC_0_awsize(CIPS_0_FPD_AXI_NOC_0_AWSIZE),
        .FPD_AXI_NOC_0_awuser(CIPS_0_FPD_AXI_NOC_0_AWUSER),
        .FPD_AXI_NOC_0_awvalid(CIPS_0_FPD_AXI_NOC_0_AWVALID),
        .FPD_AXI_NOC_0_bid(CIPS_0_FPD_AXI_NOC_0_BID),
        .FPD_AXI_NOC_0_bready(CIPS_0_FPD_AXI_NOC_0_BREADY),
        .FPD_AXI_NOC_0_bresp(CIPS_0_FPD_AXI_NOC_0_BRESP),
        .FPD_AXI_NOC_0_bvalid(CIPS_0_FPD_AXI_NOC_0_BVALID),
        .FPD_AXI_NOC_0_rdata(CIPS_0_FPD_AXI_NOC_0_RDATA),
        .FPD_AXI_NOC_0_rid(CIPS_0_FPD_AXI_NOC_0_RID),
        .FPD_AXI_NOC_0_rlast(CIPS_0_FPD_AXI_NOC_0_RLAST),
        .FPD_AXI_NOC_0_rready(CIPS_0_FPD_AXI_NOC_0_RREADY),
        .FPD_AXI_NOC_0_rresp(CIPS_0_FPD_AXI_NOC_0_RRESP),
        .FPD_AXI_NOC_0_rvalid(CIPS_0_FPD_AXI_NOC_0_RVALID),
        .FPD_AXI_NOC_0_wdata(CIPS_0_FPD_AXI_NOC_0_WDATA),
        .FPD_AXI_NOC_0_wlast(CIPS_0_FPD_AXI_NOC_0_WLAST),
        .FPD_AXI_NOC_0_wready(CIPS_0_FPD_AXI_NOC_0_WREADY),
        .FPD_AXI_NOC_0_wstrb(CIPS_0_FPD_AXI_NOC_0_WSTRB),
        .FPD_AXI_NOC_0_wvalid(CIPS_0_FPD_AXI_NOC_0_WVALID),
        .FPD_AXI_NOC_1_araddr(CIPS_0_FPD_AXI_NOC_1_ARADDR),
        .FPD_AXI_NOC_1_arburst(CIPS_0_FPD_AXI_NOC_1_ARBURST),
        .FPD_AXI_NOC_1_arcache(CIPS_0_FPD_AXI_NOC_1_ARCACHE),
        .FPD_AXI_NOC_1_arid(CIPS_0_FPD_AXI_NOC_1_ARID),
        .FPD_AXI_NOC_1_arlen(CIPS_0_FPD_AXI_NOC_1_ARLEN),
        .FPD_AXI_NOC_1_arlock(CIPS_0_FPD_AXI_NOC_1_ARLOCK),
        .FPD_AXI_NOC_1_arprot(CIPS_0_FPD_AXI_NOC_1_ARPROT),
        .FPD_AXI_NOC_1_arqos(CIPS_0_FPD_AXI_NOC_1_ARQOS),
        .FPD_AXI_NOC_1_arready(CIPS_0_FPD_AXI_NOC_1_ARREADY),
        .FPD_AXI_NOC_1_arsize(CIPS_0_FPD_AXI_NOC_1_ARSIZE),
        .FPD_AXI_NOC_1_aruser(CIPS_0_FPD_AXI_NOC_1_ARUSER),
        .FPD_AXI_NOC_1_arvalid(CIPS_0_FPD_AXI_NOC_1_ARVALID),
        .FPD_AXI_NOC_1_awaddr(CIPS_0_FPD_AXI_NOC_1_AWADDR),
        .FPD_AXI_NOC_1_awburst(CIPS_0_FPD_AXI_NOC_1_AWBURST),
        .FPD_AXI_NOC_1_awcache(CIPS_0_FPD_AXI_NOC_1_AWCACHE),
        .FPD_AXI_NOC_1_awid(CIPS_0_FPD_AXI_NOC_1_AWID),
        .FPD_AXI_NOC_1_awlen(CIPS_0_FPD_AXI_NOC_1_AWLEN),
        .FPD_AXI_NOC_1_awlock(CIPS_0_FPD_AXI_NOC_1_AWLOCK),
        .FPD_AXI_NOC_1_awprot(CIPS_0_FPD_AXI_NOC_1_AWPROT),
        .FPD_AXI_NOC_1_awqos(CIPS_0_FPD_AXI_NOC_1_AWQOS),
        .FPD_AXI_NOC_1_awready(CIPS_0_FPD_AXI_NOC_1_AWREADY),
        .FPD_AXI_NOC_1_awsize(CIPS_0_FPD_AXI_NOC_1_AWSIZE),
        .FPD_AXI_NOC_1_awuser(CIPS_0_FPD_AXI_NOC_1_AWUSER),
        .FPD_AXI_NOC_1_awvalid(CIPS_0_FPD_AXI_NOC_1_AWVALID),
        .FPD_AXI_NOC_1_bid(CIPS_0_FPD_AXI_NOC_1_BID),
        .FPD_AXI_NOC_1_bready(CIPS_0_FPD_AXI_NOC_1_BREADY),
        .FPD_AXI_NOC_1_bresp(CIPS_0_FPD_AXI_NOC_1_BRESP),
        .FPD_AXI_NOC_1_bvalid(CIPS_0_FPD_AXI_NOC_1_BVALID),
        .FPD_AXI_NOC_1_rdata(CIPS_0_FPD_AXI_NOC_1_RDATA),
        .FPD_AXI_NOC_1_rid(CIPS_0_FPD_AXI_NOC_1_RID),
        .FPD_AXI_NOC_1_rlast(CIPS_0_FPD_AXI_NOC_1_RLAST),
        .FPD_AXI_NOC_1_rready(CIPS_0_FPD_AXI_NOC_1_RREADY),
        .FPD_AXI_NOC_1_rresp(CIPS_0_FPD_AXI_NOC_1_RRESP),
        .FPD_AXI_NOC_1_rvalid(CIPS_0_FPD_AXI_NOC_1_RVALID),
        .FPD_AXI_NOC_1_wdata(CIPS_0_FPD_AXI_NOC_1_WDATA),
        .FPD_AXI_NOC_1_wlast(CIPS_0_FPD_AXI_NOC_1_WLAST),
        .FPD_AXI_NOC_1_wready(CIPS_0_FPD_AXI_NOC_1_WREADY),
        .FPD_AXI_NOC_1_wstrb(CIPS_0_FPD_AXI_NOC_1_WSTRB),
        .FPD_AXI_NOC_1_wvalid(CIPS_0_FPD_AXI_NOC_1_WVALID),
        .FPD_CCI_NOC_0_araddr(CIPS_0_FPD_CCI_NOC_0_ARADDR),
        .FPD_CCI_NOC_0_arburst(CIPS_0_FPD_CCI_NOC_0_ARBURST),
        .FPD_CCI_NOC_0_arcache(CIPS_0_FPD_CCI_NOC_0_ARCACHE),
        .FPD_CCI_NOC_0_arid(CIPS_0_FPD_CCI_NOC_0_ARID),
        .FPD_CCI_NOC_0_arlen(CIPS_0_FPD_CCI_NOC_0_ARLEN),
        .FPD_CCI_NOC_0_arlock(CIPS_0_FPD_CCI_NOC_0_ARLOCK),
        .FPD_CCI_NOC_0_arprot(CIPS_0_FPD_CCI_NOC_0_ARPROT),
        .FPD_CCI_NOC_0_arqos(CIPS_0_FPD_CCI_NOC_0_ARQOS),
        .FPD_CCI_NOC_0_arready(CIPS_0_FPD_CCI_NOC_0_ARREADY),
        .FPD_CCI_NOC_0_arsize(CIPS_0_FPD_CCI_NOC_0_ARSIZE),
        .FPD_CCI_NOC_0_aruser(CIPS_0_FPD_CCI_NOC_0_ARUSER),
        .FPD_CCI_NOC_0_arvalid(CIPS_0_FPD_CCI_NOC_0_ARVALID),
        .FPD_CCI_NOC_0_awaddr(CIPS_0_FPD_CCI_NOC_0_AWADDR),
        .FPD_CCI_NOC_0_awburst(CIPS_0_FPD_CCI_NOC_0_AWBURST),
        .FPD_CCI_NOC_0_awcache(CIPS_0_FPD_CCI_NOC_0_AWCACHE),
        .FPD_CCI_NOC_0_awid(CIPS_0_FPD_CCI_NOC_0_AWID),
        .FPD_CCI_NOC_0_awlen(CIPS_0_FPD_CCI_NOC_0_AWLEN),
        .FPD_CCI_NOC_0_awlock(CIPS_0_FPD_CCI_NOC_0_AWLOCK),
        .FPD_CCI_NOC_0_awprot(CIPS_0_FPD_CCI_NOC_0_AWPROT),
        .FPD_CCI_NOC_0_awqos(CIPS_0_FPD_CCI_NOC_0_AWQOS),
        .FPD_CCI_NOC_0_awready(CIPS_0_FPD_CCI_NOC_0_AWREADY),
        .FPD_CCI_NOC_0_awsize(CIPS_0_FPD_CCI_NOC_0_AWSIZE),
        .FPD_CCI_NOC_0_awuser(CIPS_0_FPD_CCI_NOC_0_AWUSER),
        .FPD_CCI_NOC_0_awvalid(CIPS_0_FPD_CCI_NOC_0_AWVALID),
        .FPD_CCI_NOC_0_bid(CIPS_0_FPD_CCI_NOC_0_BID),
        .FPD_CCI_NOC_0_bready(CIPS_0_FPD_CCI_NOC_0_BREADY),
        .FPD_CCI_NOC_0_bresp(CIPS_0_FPD_CCI_NOC_0_BRESP),
        .FPD_CCI_NOC_0_bvalid(CIPS_0_FPD_CCI_NOC_0_BVALID),
        .FPD_CCI_NOC_0_rdata(CIPS_0_FPD_CCI_NOC_0_RDATA),
        .FPD_CCI_NOC_0_rid(CIPS_0_FPD_CCI_NOC_0_RID),
        .FPD_CCI_NOC_0_rlast(CIPS_0_FPD_CCI_NOC_0_RLAST),
        .FPD_CCI_NOC_0_rready(CIPS_0_FPD_CCI_NOC_0_RREADY),
        .FPD_CCI_NOC_0_rresp(CIPS_0_FPD_CCI_NOC_0_RRESP),
        .FPD_CCI_NOC_0_rvalid(CIPS_0_FPD_CCI_NOC_0_RVALID),
        .FPD_CCI_NOC_0_wdata(CIPS_0_FPD_CCI_NOC_0_WDATA),
        .FPD_CCI_NOC_0_wlast(CIPS_0_FPD_CCI_NOC_0_WLAST),
        .FPD_CCI_NOC_0_wready(CIPS_0_FPD_CCI_NOC_0_WREADY),
        .FPD_CCI_NOC_0_wstrb(CIPS_0_FPD_CCI_NOC_0_WSTRB),
        .FPD_CCI_NOC_0_wuser(CIPS_0_FPD_CCI_NOC_0_WUSER),
        .FPD_CCI_NOC_0_wvalid(CIPS_0_FPD_CCI_NOC_0_WVALID),
        .FPD_CCI_NOC_1_araddr(CIPS_0_FPD_CCI_NOC_1_ARADDR),
        .FPD_CCI_NOC_1_arburst(CIPS_0_FPD_CCI_NOC_1_ARBURST),
        .FPD_CCI_NOC_1_arcache(CIPS_0_FPD_CCI_NOC_1_ARCACHE),
        .FPD_CCI_NOC_1_arid(CIPS_0_FPD_CCI_NOC_1_ARID),
        .FPD_CCI_NOC_1_arlen(CIPS_0_FPD_CCI_NOC_1_ARLEN),
        .FPD_CCI_NOC_1_arlock(CIPS_0_FPD_CCI_NOC_1_ARLOCK),
        .FPD_CCI_NOC_1_arprot(CIPS_0_FPD_CCI_NOC_1_ARPROT),
        .FPD_CCI_NOC_1_arqos(CIPS_0_FPD_CCI_NOC_1_ARQOS),
        .FPD_CCI_NOC_1_arready(CIPS_0_FPD_CCI_NOC_1_ARREADY),
        .FPD_CCI_NOC_1_arsize(CIPS_0_FPD_CCI_NOC_1_ARSIZE),
        .FPD_CCI_NOC_1_aruser(CIPS_0_FPD_CCI_NOC_1_ARUSER),
        .FPD_CCI_NOC_1_arvalid(CIPS_0_FPD_CCI_NOC_1_ARVALID),
        .FPD_CCI_NOC_1_awaddr(CIPS_0_FPD_CCI_NOC_1_AWADDR),
        .FPD_CCI_NOC_1_awburst(CIPS_0_FPD_CCI_NOC_1_AWBURST),
        .FPD_CCI_NOC_1_awcache(CIPS_0_FPD_CCI_NOC_1_AWCACHE),
        .FPD_CCI_NOC_1_awid(CIPS_0_FPD_CCI_NOC_1_AWID),
        .FPD_CCI_NOC_1_awlen(CIPS_0_FPD_CCI_NOC_1_AWLEN),
        .FPD_CCI_NOC_1_awlock(CIPS_0_FPD_CCI_NOC_1_AWLOCK),
        .FPD_CCI_NOC_1_awprot(CIPS_0_FPD_CCI_NOC_1_AWPROT),
        .FPD_CCI_NOC_1_awqos(CIPS_0_FPD_CCI_NOC_1_AWQOS),
        .FPD_CCI_NOC_1_awready(CIPS_0_FPD_CCI_NOC_1_AWREADY),
        .FPD_CCI_NOC_1_awsize(CIPS_0_FPD_CCI_NOC_1_AWSIZE),
        .FPD_CCI_NOC_1_awuser(CIPS_0_FPD_CCI_NOC_1_AWUSER),
        .FPD_CCI_NOC_1_awvalid(CIPS_0_FPD_CCI_NOC_1_AWVALID),
        .FPD_CCI_NOC_1_bid(CIPS_0_FPD_CCI_NOC_1_BID),
        .FPD_CCI_NOC_1_bready(CIPS_0_FPD_CCI_NOC_1_BREADY),
        .FPD_CCI_NOC_1_bresp(CIPS_0_FPD_CCI_NOC_1_BRESP),
        .FPD_CCI_NOC_1_bvalid(CIPS_0_FPD_CCI_NOC_1_BVALID),
        .FPD_CCI_NOC_1_rdata(CIPS_0_FPD_CCI_NOC_1_RDATA),
        .FPD_CCI_NOC_1_rid(CIPS_0_FPD_CCI_NOC_1_RID),
        .FPD_CCI_NOC_1_rlast(CIPS_0_FPD_CCI_NOC_1_RLAST),
        .FPD_CCI_NOC_1_rready(CIPS_0_FPD_CCI_NOC_1_RREADY),
        .FPD_CCI_NOC_1_rresp(CIPS_0_FPD_CCI_NOC_1_RRESP),
        .FPD_CCI_NOC_1_rvalid(CIPS_0_FPD_CCI_NOC_1_RVALID),
        .FPD_CCI_NOC_1_wdata(CIPS_0_FPD_CCI_NOC_1_WDATA),
        .FPD_CCI_NOC_1_wlast(CIPS_0_FPD_CCI_NOC_1_WLAST),
        .FPD_CCI_NOC_1_wready(CIPS_0_FPD_CCI_NOC_1_WREADY),
        .FPD_CCI_NOC_1_wstrb(CIPS_0_FPD_CCI_NOC_1_WSTRB),
        .FPD_CCI_NOC_1_wuser(CIPS_0_FPD_CCI_NOC_1_WUSER),
        .FPD_CCI_NOC_1_wvalid(CIPS_0_FPD_CCI_NOC_1_WVALID),
        .FPD_CCI_NOC_2_araddr(CIPS_0_FPD_CCI_NOC_2_ARADDR),
        .FPD_CCI_NOC_2_arburst(CIPS_0_FPD_CCI_NOC_2_ARBURST),
        .FPD_CCI_NOC_2_arcache(CIPS_0_FPD_CCI_NOC_2_ARCACHE),
        .FPD_CCI_NOC_2_arid(CIPS_0_FPD_CCI_NOC_2_ARID),
        .FPD_CCI_NOC_2_arlen(CIPS_0_FPD_CCI_NOC_2_ARLEN),
        .FPD_CCI_NOC_2_arlock(CIPS_0_FPD_CCI_NOC_2_ARLOCK),
        .FPD_CCI_NOC_2_arprot(CIPS_0_FPD_CCI_NOC_2_ARPROT),
        .FPD_CCI_NOC_2_arqos(CIPS_0_FPD_CCI_NOC_2_ARQOS),
        .FPD_CCI_NOC_2_arready(CIPS_0_FPD_CCI_NOC_2_ARREADY),
        .FPD_CCI_NOC_2_arsize(CIPS_0_FPD_CCI_NOC_2_ARSIZE),
        .FPD_CCI_NOC_2_aruser(CIPS_0_FPD_CCI_NOC_2_ARUSER),
        .FPD_CCI_NOC_2_arvalid(CIPS_0_FPD_CCI_NOC_2_ARVALID),
        .FPD_CCI_NOC_2_awaddr(CIPS_0_FPD_CCI_NOC_2_AWADDR),
        .FPD_CCI_NOC_2_awburst(CIPS_0_FPD_CCI_NOC_2_AWBURST),
        .FPD_CCI_NOC_2_awcache(CIPS_0_FPD_CCI_NOC_2_AWCACHE),
        .FPD_CCI_NOC_2_awid(CIPS_0_FPD_CCI_NOC_2_AWID),
        .FPD_CCI_NOC_2_awlen(CIPS_0_FPD_CCI_NOC_2_AWLEN),
        .FPD_CCI_NOC_2_awlock(CIPS_0_FPD_CCI_NOC_2_AWLOCK),
        .FPD_CCI_NOC_2_awprot(CIPS_0_FPD_CCI_NOC_2_AWPROT),
        .FPD_CCI_NOC_2_awqos(CIPS_0_FPD_CCI_NOC_2_AWQOS),
        .FPD_CCI_NOC_2_awready(CIPS_0_FPD_CCI_NOC_2_AWREADY),
        .FPD_CCI_NOC_2_awsize(CIPS_0_FPD_CCI_NOC_2_AWSIZE),
        .FPD_CCI_NOC_2_awuser(CIPS_0_FPD_CCI_NOC_2_AWUSER),
        .FPD_CCI_NOC_2_awvalid(CIPS_0_FPD_CCI_NOC_2_AWVALID),
        .FPD_CCI_NOC_2_bid(CIPS_0_FPD_CCI_NOC_2_BID),
        .FPD_CCI_NOC_2_bready(CIPS_0_FPD_CCI_NOC_2_BREADY),
        .FPD_CCI_NOC_2_bresp(CIPS_0_FPD_CCI_NOC_2_BRESP),
        .FPD_CCI_NOC_2_bvalid(CIPS_0_FPD_CCI_NOC_2_BVALID),
        .FPD_CCI_NOC_2_rdata(CIPS_0_FPD_CCI_NOC_2_RDATA),
        .FPD_CCI_NOC_2_rid(CIPS_0_FPD_CCI_NOC_2_RID),
        .FPD_CCI_NOC_2_rlast(CIPS_0_FPD_CCI_NOC_2_RLAST),
        .FPD_CCI_NOC_2_rready(CIPS_0_FPD_CCI_NOC_2_RREADY),
        .FPD_CCI_NOC_2_rresp(CIPS_0_FPD_CCI_NOC_2_RRESP),
        .FPD_CCI_NOC_2_rvalid(CIPS_0_FPD_CCI_NOC_2_RVALID),
        .FPD_CCI_NOC_2_wdata(CIPS_0_FPD_CCI_NOC_2_WDATA),
        .FPD_CCI_NOC_2_wlast(CIPS_0_FPD_CCI_NOC_2_WLAST),
        .FPD_CCI_NOC_2_wready(CIPS_0_FPD_CCI_NOC_2_WREADY),
        .FPD_CCI_NOC_2_wstrb(CIPS_0_FPD_CCI_NOC_2_WSTRB),
        .FPD_CCI_NOC_2_wuser(CIPS_0_FPD_CCI_NOC_2_WUSER),
        .FPD_CCI_NOC_2_wvalid(CIPS_0_FPD_CCI_NOC_2_WVALID),
        .FPD_CCI_NOC_3_araddr(CIPS_0_FPD_CCI_NOC_3_ARADDR),
        .FPD_CCI_NOC_3_arburst(CIPS_0_FPD_CCI_NOC_3_ARBURST),
        .FPD_CCI_NOC_3_arcache(CIPS_0_FPD_CCI_NOC_3_ARCACHE),
        .FPD_CCI_NOC_3_arid(CIPS_0_FPD_CCI_NOC_3_ARID),
        .FPD_CCI_NOC_3_arlen(CIPS_0_FPD_CCI_NOC_3_ARLEN),
        .FPD_CCI_NOC_3_arlock(CIPS_0_FPD_CCI_NOC_3_ARLOCK),
        .FPD_CCI_NOC_3_arprot(CIPS_0_FPD_CCI_NOC_3_ARPROT),
        .FPD_CCI_NOC_3_arqos(CIPS_0_FPD_CCI_NOC_3_ARQOS),
        .FPD_CCI_NOC_3_arready(CIPS_0_FPD_CCI_NOC_3_ARREADY),
        .FPD_CCI_NOC_3_arsize(CIPS_0_FPD_CCI_NOC_3_ARSIZE),
        .FPD_CCI_NOC_3_aruser(CIPS_0_FPD_CCI_NOC_3_ARUSER),
        .FPD_CCI_NOC_3_arvalid(CIPS_0_FPD_CCI_NOC_3_ARVALID),
        .FPD_CCI_NOC_3_awaddr(CIPS_0_FPD_CCI_NOC_3_AWADDR),
        .FPD_CCI_NOC_3_awburst(CIPS_0_FPD_CCI_NOC_3_AWBURST),
        .FPD_CCI_NOC_3_awcache(CIPS_0_FPD_CCI_NOC_3_AWCACHE),
        .FPD_CCI_NOC_3_awid(CIPS_0_FPD_CCI_NOC_3_AWID),
        .FPD_CCI_NOC_3_awlen(CIPS_0_FPD_CCI_NOC_3_AWLEN),
        .FPD_CCI_NOC_3_awlock(CIPS_0_FPD_CCI_NOC_3_AWLOCK),
        .FPD_CCI_NOC_3_awprot(CIPS_0_FPD_CCI_NOC_3_AWPROT),
        .FPD_CCI_NOC_3_awqos(CIPS_0_FPD_CCI_NOC_3_AWQOS),
        .FPD_CCI_NOC_3_awready(CIPS_0_FPD_CCI_NOC_3_AWREADY),
        .FPD_CCI_NOC_3_awsize(CIPS_0_FPD_CCI_NOC_3_AWSIZE),
        .FPD_CCI_NOC_3_awuser(CIPS_0_FPD_CCI_NOC_3_AWUSER),
        .FPD_CCI_NOC_3_awvalid(CIPS_0_FPD_CCI_NOC_3_AWVALID),
        .FPD_CCI_NOC_3_bid(CIPS_0_FPD_CCI_NOC_3_BID),
        .FPD_CCI_NOC_3_bready(CIPS_0_FPD_CCI_NOC_3_BREADY),
        .FPD_CCI_NOC_3_bresp(CIPS_0_FPD_CCI_NOC_3_BRESP),
        .FPD_CCI_NOC_3_bvalid(CIPS_0_FPD_CCI_NOC_3_BVALID),
        .FPD_CCI_NOC_3_rdata(CIPS_0_FPD_CCI_NOC_3_RDATA),
        .FPD_CCI_NOC_3_rid(CIPS_0_FPD_CCI_NOC_3_RID),
        .FPD_CCI_NOC_3_rlast(CIPS_0_FPD_CCI_NOC_3_RLAST),
        .FPD_CCI_NOC_3_rready(CIPS_0_FPD_CCI_NOC_3_RREADY),
        .FPD_CCI_NOC_3_rresp(CIPS_0_FPD_CCI_NOC_3_RRESP),
        .FPD_CCI_NOC_3_rvalid(CIPS_0_FPD_CCI_NOC_3_RVALID),
        .FPD_CCI_NOC_3_wdata(CIPS_0_FPD_CCI_NOC_3_WDATA),
        .FPD_CCI_NOC_3_wlast(CIPS_0_FPD_CCI_NOC_3_WLAST),
        .FPD_CCI_NOC_3_wready(CIPS_0_FPD_CCI_NOC_3_WREADY),
        .FPD_CCI_NOC_3_wstrb(CIPS_0_FPD_CCI_NOC_3_WSTRB),
        .FPD_CCI_NOC_3_wuser(CIPS_0_FPD_CCI_NOC_3_WUSER),
        .FPD_CCI_NOC_3_wvalid(CIPS_0_FPD_CCI_NOC_3_WVALID),
        .LPD_AXI_NOC_0_araddr(CIPS_0_LPD_AXI_NOC_0_ARADDR),
        .LPD_AXI_NOC_0_arburst(CIPS_0_LPD_AXI_NOC_0_ARBURST),
        .LPD_AXI_NOC_0_arcache(CIPS_0_LPD_AXI_NOC_0_ARCACHE),
        .LPD_AXI_NOC_0_arid(CIPS_0_LPD_AXI_NOC_0_ARID),
        .LPD_AXI_NOC_0_arlen(CIPS_0_LPD_AXI_NOC_0_ARLEN),
        .LPD_AXI_NOC_0_arlock(CIPS_0_LPD_AXI_NOC_0_ARLOCK),
        .LPD_AXI_NOC_0_arprot(CIPS_0_LPD_AXI_NOC_0_ARPROT),
        .LPD_AXI_NOC_0_arqos(CIPS_0_LPD_AXI_NOC_0_ARQOS),
        .LPD_AXI_NOC_0_arready(CIPS_0_LPD_AXI_NOC_0_ARREADY),
        .LPD_AXI_NOC_0_arsize(CIPS_0_LPD_AXI_NOC_0_ARSIZE),
        .LPD_AXI_NOC_0_aruser(CIPS_0_LPD_AXI_NOC_0_ARUSER),
        .LPD_AXI_NOC_0_arvalid(CIPS_0_LPD_AXI_NOC_0_ARVALID),
        .LPD_AXI_NOC_0_awaddr(CIPS_0_LPD_AXI_NOC_0_AWADDR),
        .LPD_AXI_NOC_0_awburst(CIPS_0_LPD_AXI_NOC_0_AWBURST),
        .LPD_AXI_NOC_0_awcache(CIPS_0_LPD_AXI_NOC_0_AWCACHE),
        .LPD_AXI_NOC_0_awid(CIPS_0_LPD_AXI_NOC_0_AWID),
        .LPD_AXI_NOC_0_awlen(CIPS_0_LPD_AXI_NOC_0_AWLEN),
        .LPD_AXI_NOC_0_awlock(CIPS_0_LPD_AXI_NOC_0_AWLOCK),
        .LPD_AXI_NOC_0_awprot(CIPS_0_LPD_AXI_NOC_0_AWPROT),
        .LPD_AXI_NOC_0_awqos(CIPS_0_LPD_AXI_NOC_0_AWQOS),
        .LPD_AXI_NOC_0_awready(CIPS_0_LPD_AXI_NOC_0_AWREADY),
        .LPD_AXI_NOC_0_awsize(CIPS_0_LPD_AXI_NOC_0_AWSIZE),
        .LPD_AXI_NOC_0_awuser(CIPS_0_LPD_AXI_NOC_0_AWUSER),
        .LPD_AXI_NOC_0_awvalid(CIPS_0_LPD_AXI_NOC_0_AWVALID),
        .LPD_AXI_NOC_0_bid(CIPS_0_LPD_AXI_NOC_0_BID),
        .LPD_AXI_NOC_0_bready(CIPS_0_LPD_AXI_NOC_0_BREADY),
        .LPD_AXI_NOC_0_bresp(CIPS_0_LPD_AXI_NOC_0_BRESP),
        .LPD_AXI_NOC_0_bvalid(CIPS_0_LPD_AXI_NOC_0_BVALID),
        .LPD_AXI_NOC_0_rdata(CIPS_0_LPD_AXI_NOC_0_RDATA),
        .LPD_AXI_NOC_0_rid(CIPS_0_LPD_AXI_NOC_0_RID),
        .LPD_AXI_NOC_0_rlast(CIPS_0_LPD_AXI_NOC_0_RLAST),
        .LPD_AXI_NOC_0_rready(CIPS_0_LPD_AXI_NOC_0_RREADY),
        .LPD_AXI_NOC_0_rresp(CIPS_0_LPD_AXI_NOC_0_RRESP),
        .LPD_AXI_NOC_0_rvalid(CIPS_0_LPD_AXI_NOC_0_RVALID),
        .LPD_AXI_NOC_0_wdata(CIPS_0_LPD_AXI_NOC_0_WDATA),
        .LPD_AXI_NOC_0_wlast(CIPS_0_LPD_AXI_NOC_0_WLAST),
        .LPD_AXI_NOC_0_wready(CIPS_0_LPD_AXI_NOC_0_WREADY),
        .LPD_AXI_NOC_0_wstrb(CIPS_0_LPD_AXI_NOC_0_WSTRB),
        .LPD_AXI_NOC_0_wvalid(CIPS_0_LPD_AXI_NOC_0_WVALID),
        .M_AXI_FPD_araddr(CIPS_0_M_AXI_GP0_ARADDR),
        .M_AXI_FPD_arburst(CIPS_0_M_AXI_GP0_ARBURST),
        .M_AXI_FPD_arcache(CIPS_0_M_AXI_GP0_ARCACHE),
        .M_AXI_FPD_arid(CIPS_0_M_AXI_GP0_ARID),
        .M_AXI_FPD_arlen(CIPS_0_M_AXI_GP0_ARLEN),
        .M_AXI_FPD_arlock(CIPS_0_M_AXI_GP0_ARLOCK),
        .M_AXI_FPD_arprot(CIPS_0_M_AXI_GP0_ARPROT),
        .M_AXI_FPD_arqos(CIPS_0_M_AXI_GP0_ARQOS),
        .M_AXI_FPD_arready(CIPS_0_M_AXI_GP0_ARREADY),
        .M_AXI_FPD_arsize(CIPS_0_M_AXI_GP0_ARSIZE),
        .M_AXI_FPD_aruser(CIPS_0_M_AXI_GP0_ARUSER),
        .M_AXI_FPD_arvalid(CIPS_0_M_AXI_GP0_ARVALID),
        .M_AXI_FPD_awaddr(CIPS_0_M_AXI_GP0_AWADDR),
        .M_AXI_FPD_awburst(CIPS_0_M_AXI_GP0_AWBURST),
        .M_AXI_FPD_awcache(CIPS_0_M_AXI_GP0_AWCACHE),
        .M_AXI_FPD_awid(CIPS_0_M_AXI_GP0_AWID),
        .M_AXI_FPD_awlen(CIPS_0_M_AXI_GP0_AWLEN),
        .M_AXI_FPD_awlock(CIPS_0_M_AXI_GP0_AWLOCK),
        .M_AXI_FPD_awprot(CIPS_0_M_AXI_GP0_AWPROT),
        .M_AXI_FPD_awqos(CIPS_0_M_AXI_GP0_AWQOS),
        .M_AXI_FPD_awready(CIPS_0_M_AXI_GP0_AWREADY),
        .M_AXI_FPD_awsize(CIPS_0_M_AXI_GP0_AWSIZE),
        .M_AXI_FPD_awuser(CIPS_0_M_AXI_GP0_AWUSER),
        .M_AXI_FPD_awvalid(CIPS_0_M_AXI_GP0_AWVALID),
        .M_AXI_FPD_bid(CIPS_0_M_AXI_GP0_BID),
        .M_AXI_FPD_bready(CIPS_0_M_AXI_GP0_BREADY),
        .M_AXI_FPD_bresp(CIPS_0_M_AXI_GP0_BRESP),
        .M_AXI_FPD_bvalid(CIPS_0_M_AXI_GP0_BVALID),
        .M_AXI_FPD_rdata(CIPS_0_M_AXI_GP0_RDATA),
        .M_AXI_FPD_rid(CIPS_0_M_AXI_GP0_RID),
        .M_AXI_FPD_rlast(CIPS_0_M_AXI_GP0_RLAST),
        .M_AXI_FPD_rready(CIPS_0_M_AXI_GP0_RREADY),
        .M_AXI_FPD_rresp(CIPS_0_M_AXI_GP0_RRESP),
        .M_AXI_FPD_rvalid(CIPS_0_M_AXI_GP0_RVALID),
        .M_AXI_FPD_wdata(CIPS_0_M_AXI_GP0_WDATA),
        .M_AXI_FPD_wlast(CIPS_0_M_AXI_GP0_WLAST),
        .M_AXI_FPD_wready(CIPS_0_M_AXI_GP0_WREADY),
        .M_AXI_FPD_wstrb(CIPS_0_M_AXI_GP0_WSTRB),
        .M_AXI_FPD_wvalid(CIPS_0_M_AXI_GP0_WVALID),
        .PMC_NOC_AXI_0_araddr(CIPS_0_PMC_NOC_AXI_0_ARADDR),
        .PMC_NOC_AXI_0_arburst(CIPS_0_PMC_NOC_AXI_0_ARBURST),
        .PMC_NOC_AXI_0_arcache(CIPS_0_PMC_NOC_AXI_0_ARCACHE),
        .PMC_NOC_AXI_0_arid(CIPS_0_PMC_NOC_AXI_0_ARID),
        .PMC_NOC_AXI_0_arlen(CIPS_0_PMC_NOC_AXI_0_ARLEN),
        .PMC_NOC_AXI_0_arlock(CIPS_0_PMC_NOC_AXI_0_ARLOCK),
        .PMC_NOC_AXI_0_arprot(CIPS_0_PMC_NOC_AXI_0_ARPROT),
        .PMC_NOC_AXI_0_arqos(CIPS_0_PMC_NOC_AXI_0_ARQOS),
        .PMC_NOC_AXI_0_arready(CIPS_0_PMC_NOC_AXI_0_ARREADY),
        .PMC_NOC_AXI_0_arregion(CIPS_0_PMC_NOC_AXI_0_ARREGION),
        .PMC_NOC_AXI_0_arsize(CIPS_0_PMC_NOC_AXI_0_ARSIZE),
        .PMC_NOC_AXI_0_aruser(CIPS_0_PMC_NOC_AXI_0_ARUSER),
        .PMC_NOC_AXI_0_arvalid(CIPS_0_PMC_NOC_AXI_0_ARVALID),
        .PMC_NOC_AXI_0_awaddr(CIPS_0_PMC_NOC_AXI_0_AWADDR),
        .PMC_NOC_AXI_0_awburst(CIPS_0_PMC_NOC_AXI_0_AWBURST),
        .PMC_NOC_AXI_0_awcache(CIPS_0_PMC_NOC_AXI_0_AWCACHE),
        .PMC_NOC_AXI_0_awid(CIPS_0_PMC_NOC_AXI_0_AWID),
        .PMC_NOC_AXI_0_awlen(CIPS_0_PMC_NOC_AXI_0_AWLEN),
        .PMC_NOC_AXI_0_awlock(CIPS_0_PMC_NOC_AXI_0_AWLOCK),
        .PMC_NOC_AXI_0_awprot(CIPS_0_PMC_NOC_AXI_0_AWPROT),
        .PMC_NOC_AXI_0_awqos(CIPS_0_PMC_NOC_AXI_0_AWQOS),
        .PMC_NOC_AXI_0_awready(CIPS_0_PMC_NOC_AXI_0_AWREADY),
        .PMC_NOC_AXI_0_awregion(CIPS_0_PMC_NOC_AXI_0_AWREGION),
        .PMC_NOC_AXI_0_awsize(CIPS_0_PMC_NOC_AXI_0_AWSIZE),
        .PMC_NOC_AXI_0_awuser(CIPS_0_PMC_NOC_AXI_0_AWUSER),
        .PMC_NOC_AXI_0_awvalid(CIPS_0_PMC_NOC_AXI_0_AWVALID),
        .PMC_NOC_AXI_0_bid(CIPS_0_PMC_NOC_AXI_0_BID),
        .PMC_NOC_AXI_0_bready(CIPS_0_PMC_NOC_AXI_0_BREADY),
        .PMC_NOC_AXI_0_bresp(CIPS_0_PMC_NOC_AXI_0_BRESP),
        .PMC_NOC_AXI_0_buser(CIPS_0_PMC_NOC_AXI_0_BUSER),
        .PMC_NOC_AXI_0_bvalid(CIPS_0_PMC_NOC_AXI_0_BVALID),
        .PMC_NOC_AXI_0_rdata(CIPS_0_PMC_NOC_AXI_0_RDATA),
        .PMC_NOC_AXI_0_rid(CIPS_0_PMC_NOC_AXI_0_RID),
        .PMC_NOC_AXI_0_rlast(CIPS_0_PMC_NOC_AXI_0_RLAST),
        .PMC_NOC_AXI_0_rready(CIPS_0_PMC_NOC_AXI_0_RREADY),
        .PMC_NOC_AXI_0_rresp(CIPS_0_PMC_NOC_AXI_0_RRESP),
        .PMC_NOC_AXI_0_ruser(CIPS_0_PMC_NOC_AXI_0_RUSER),
        .PMC_NOC_AXI_0_rvalid(CIPS_0_PMC_NOC_AXI_0_RVALID),
        .PMC_NOC_AXI_0_wdata(CIPS_0_PMC_NOC_AXI_0_WDATA),
        .PMC_NOC_AXI_0_wlast(CIPS_0_PMC_NOC_AXI_0_WLAST),
        .PMC_NOC_AXI_0_wready(CIPS_0_PMC_NOC_AXI_0_WREADY),
        .PMC_NOC_AXI_0_wstrb(CIPS_0_PMC_NOC_AXI_0_WSTRB),
        .PMC_NOC_AXI_0_wuser(CIPS_0_PMC_NOC_AXI_0_WUSER),
        .PMC_NOC_AXI_0_wvalid(CIPS_0_PMC_NOC_AXI_0_WVALID),
        .fpd_axi_noc_axi0_clk(CIPS_0_fpd_axi_noc_axi0_clk),
        .fpd_axi_noc_axi1_clk(CIPS_0_fpd_axi_noc_axi1_clk),
        .fpd_cci_noc_axi0_clk(CIPS_0_fpd_cci_noc_axi0_clk),
        .fpd_cci_noc_axi1_clk(CIPS_0_fpd_cci_noc_axi1_clk),
        .fpd_cci_noc_axi2_clk(CIPS_0_fpd_cci_noc_axi2_clk),
        .fpd_cci_noc_axi3_clk(CIPS_0_fpd_cci_noc_axi3_clk),
        .lpd_axi_noc_clk(CIPS_0_lpd_axi_noc_clk),
        .m_axi_fpd_aclk(clk_wizard_0_clk_out1),
        .pl0_ref_clk(CIPS_0_pl_clk0),
        .pl0_resetn(CIPS_0_pl_resetn1),
        .pl_ps_irq0(pl_rtl_irq),
        .pmc_axi_noc_axi0_clk(CIPS_0_pmc_axi_noc_axi0_clk));
  top_level_cips_noc_0 cips_noc
       (.M00_INI_internoc(cips_noc_M00_INI_INTERNOC),
        .M01_INI_internoc(cips_noc_M01_INI_INTERNOC),
        .M02_INI_internoc(cips_noc_M02_INI_INTERNOC),
        .M03_INI_internoc(cips_noc_M03_INI_INTERNOC),
        .M04_INI_internoc(cips_noc_M04_INI_INTERNOC),
        .M05_INI_internoc(cips_noc_M05_INI_INTERNOC),
        .M06_INI_internoc(cips_noc_M06_INI_INTERNOC),
        .M07_INI_internoc(cips_noc_M07_INI_INTERNOC),
        .S00_AXI_araddr(CIPS_0_FPD_CCI_NOC_0_ARADDR),
        .S00_AXI_arburst(CIPS_0_FPD_CCI_NOC_0_ARBURST),
        .S00_AXI_arcache(CIPS_0_FPD_CCI_NOC_0_ARCACHE),
        .S00_AXI_arid(CIPS_0_FPD_CCI_NOC_0_ARID),
        .S00_AXI_arlen(CIPS_0_FPD_CCI_NOC_0_ARLEN),
        .S00_AXI_arlock(CIPS_0_FPD_CCI_NOC_0_ARLOCK),
        .S00_AXI_arprot(CIPS_0_FPD_CCI_NOC_0_ARPROT),
        .S00_AXI_arqos(CIPS_0_FPD_CCI_NOC_0_ARQOS),
        .S00_AXI_arready(CIPS_0_FPD_CCI_NOC_0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(CIPS_0_FPD_CCI_NOC_0_ARSIZE),
        .S00_AXI_aruser(CIPS_0_FPD_CCI_NOC_0_ARUSER),
        .S00_AXI_arvalid(CIPS_0_FPD_CCI_NOC_0_ARVALID),
        .S00_AXI_awaddr(CIPS_0_FPD_CCI_NOC_0_AWADDR),
        .S00_AXI_awburst(CIPS_0_FPD_CCI_NOC_0_AWBURST),
        .S00_AXI_awcache(CIPS_0_FPD_CCI_NOC_0_AWCACHE),
        .S00_AXI_awid(CIPS_0_FPD_CCI_NOC_0_AWID),
        .S00_AXI_awlen(CIPS_0_FPD_CCI_NOC_0_AWLEN),
        .S00_AXI_awlock(CIPS_0_FPD_CCI_NOC_0_AWLOCK),
        .S00_AXI_awprot(CIPS_0_FPD_CCI_NOC_0_AWPROT),
        .S00_AXI_awqos(CIPS_0_FPD_CCI_NOC_0_AWQOS),
        .S00_AXI_awready(CIPS_0_FPD_CCI_NOC_0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(CIPS_0_FPD_CCI_NOC_0_AWSIZE),
        .S00_AXI_awuser(CIPS_0_FPD_CCI_NOC_0_AWUSER),
        .S00_AXI_awvalid(CIPS_0_FPD_CCI_NOC_0_AWVALID),
        .S00_AXI_bid(CIPS_0_FPD_CCI_NOC_0_BID),
        .S00_AXI_bready(CIPS_0_FPD_CCI_NOC_0_BREADY),
        .S00_AXI_bresp(CIPS_0_FPD_CCI_NOC_0_BRESP),
        .S00_AXI_bvalid(CIPS_0_FPD_CCI_NOC_0_BVALID),
        .S00_AXI_rdata(CIPS_0_FPD_CCI_NOC_0_RDATA),
        .S00_AXI_rid(CIPS_0_FPD_CCI_NOC_0_RID),
        .S00_AXI_rlast(CIPS_0_FPD_CCI_NOC_0_RLAST),
        .S00_AXI_rready(CIPS_0_FPD_CCI_NOC_0_RREADY),
        .S00_AXI_rresp(CIPS_0_FPD_CCI_NOC_0_RRESP),
        .S00_AXI_rvalid(CIPS_0_FPD_CCI_NOC_0_RVALID),
        .S00_AXI_wdata(CIPS_0_FPD_CCI_NOC_0_WDATA),
        .S00_AXI_wlast(CIPS_0_FPD_CCI_NOC_0_WLAST),
        .S00_AXI_wready(CIPS_0_FPD_CCI_NOC_0_WREADY),
        .S00_AXI_wstrb(CIPS_0_FPD_CCI_NOC_0_WSTRB),
        .S00_AXI_wuser(CIPS_0_FPD_CCI_NOC_0_WUSER),
        .S00_AXI_wvalid(CIPS_0_FPD_CCI_NOC_0_WVALID),
        .S01_AXI_araddr(CIPS_0_FPD_CCI_NOC_1_ARADDR),
        .S01_AXI_arburst(CIPS_0_FPD_CCI_NOC_1_ARBURST),
        .S01_AXI_arcache(CIPS_0_FPD_CCI_NOC_1_ARCACHE),
        .S01_AXI_arid(CIPS_0_FPD_CCI_NOC_1_ARID),
        .S01_AXI_arlen(CIPS_0_FPD_CCI_NOC_1_ARLEN),
        .S01_AXI_arlock(CIPS_0_FPD_CCI_NOC_1_ARLOCK),
        .S01_AXI_arprot(CIPS_0_FPD_CCI_NOC_1_ARPROT),
        .S01_AXI_arqos(CIPS_0_FPD_CCI_NOC_1_ARQOS),
        .S01_AXI_arready(CIPS_0_FPD_CCI_NOC_1_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(CIPS_0_FPD_CCI_NOC_1_ARSIZE),
        .S01_AXI_aruser(CIPS_0_FPD_CCI_NOC_1_ARUSER),
        .S01_AXI_arvalid(CIPS_0_FPD_CCI_NOC_1_ARVALID),
        .S01_AXI_awaddr(CIPS_0_FPD_CCI_NOC_1_AWADDR),
        .S01_AXI_awburst(CIPS_0_FPD_CCI_NOC_1_AWBURST),
        .S01_AXI_awcache(CIPS_0_FPD_CCI_NOC_1_AWCACHE),
        .S01_AXI_awid(CIPS_0_FPD_CCI_NOC_1_AWID),
        .S01_AXI_awlen(CIPS_0_FPD_CCI_NOC_1_AWLEN),
        .S01_AXI_awlock(CIPS_0_FPD_CCI_NOC_1_AWLOCK),
        .S01_AXI_awprot(CIPS_0_FPD_CCI_NOC_1_AWPROT),
        .S01_AXI_awqos(CIPS_0_FPD_CCI_NOC_1_AWQOS),
        .S01_AXI_awready(CIPS_0_FPD_CCI_NOC_1_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(CIPS_0_FPD_CCI_NOC_1_AWSIZE),
        .S01_AXI_awuser(CIPS_0_FPD_CCI_NOC_1_AWUSER),
        .S01_AXI_awvalid(CIPS_0_FPD_CCI_NOC_1_AWVALID),
        .S01_AXI_bid(CIPS_0_FPD_CCI_NOC_1_BID),
        .S01_AXI_bready(CIPS_0_FPD_CCI_NOC_1_BREADY),
        .S01_AXI_bresp(CIPS_0_FPD_CCI_NOC_1_BRESP),
        .S01_AXI_bvalid(CIPS_0_FPD_CCI_NOC_1_BVALID),
        .S01_AXI_rdata(CIPS_0_FPD_CCI_NOC_1_RDATA),
        .S01_AXI_rid(CIPS_0_FPD_CCI_NOC_1_RID),
        .S01_AXI_rlast(CIPS_0_FPD_CCI_NOC_1_RLAST),
        .S01_AXI_rready(CIPS_0_FPD_CCI_NOC_1_RREADY),
        .S01_AXI_rresp(CIPS_0_FPD_CCI_NOC_1_RRESP),
        .S01_AXI_rvalid(CIPS_0_FPD_CCI_NOC_1_RVALID),
        .S01_AXI_wdata(CIPS_0_FPD_CCI_NOC_1_WDATA),
        .S01_AXI_wlast(CIPS_0_FPD_CCI_NOC_1_WLAST),
        .S01_AXI_wready(CIPS_0_FPD_CCI_NOC_1_WREADY),
        .S01_AXI_wstrb(CIPS_0_FPD_CCI_NOC_1_WSTRB),
        .S01_AXI_wuser(CIPS_0_FPD_CCI_NOC_1_WUSER),
        .S01_AXI_wvalid(CIPS_0_FPD_CCI_NOC_1_WVALID),
        .S02_AXI_araddr(CIPS_0_FPD_CCI_NOC_2_ARADDR),
        .S02_AXI_arburst(CIPS_0_FPD_CCI_NOC_2_ARBURST),
        .S02_AXI_arcache(CIPS_0_FPD_CCI_NOC_2_ARCACHE),
        .S02_AXI_arid(CIPS_0_FPD_CCI_NOC_2_ARID),
        .S02_AXI_arlen(CIPS_0_FPD_CCI_NOC_2_ARLEN),
        .S02_AXI_arlock(CIPS_0_FPD_CCI_NOC_2_ARLOCK),
        .S02_AXI_arprot(CIPS_0_FPD_CCI_NOC_2_ARPROT),
        .S02_AXI_arqos(CIPS_0_FPD_CCI_NOC_2_ARQOS),
        .S02_AXI_arready(CIPS_0_FPD_CCI_NOC_2_ARREADY),
        .S02_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arsize(CIPS_0_FPD_CCI_NOC_2_ARSIZE),
        .S02_AXI_aruser(CIPS_0_FPD_CCI_NOC_2_ARUSER),
        .S02_AXI_arvalid(CIPS_0_FPD_CCI_NOC_2_ARVALID),
        .S02_AXI_awaddr(CIPS_0_FPD_CCI_NOC_2_AWADDR),
        .S02_AXI_awburst(CIPS_0_FPD_CCI_NOC_2_AWBURST),
        .S02_AXI_awcache(CIPS_0_FPD_CCI_NOC_2_AWCACHE),
        .S02_AXI_awid(CIPS_0_FPD_CCI_NOC_2_AWID),
        .S02_AXI_awlen(CIPS_0_FPD_CCI_NOC_2_AWLEN),
        .S02_AXI_awlock(CIPS_0_FPD_CCI_NOC_2_AWLOCK),
        .S02_AXI_awprot(CIPS_0_FPD_CCI_NOC_2_AWPROT),
        .S02_AXI_awqos(CIPS_0_FPD_CCI_NOC_2_AWQOS),
        .S02_AXI_awready(CIPS_0_FPD_CCI_NOC_2_AWREADY),
        .S02_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awsize(CIPS_0_FPD_CCI_NOC_2_AWSIZE),
        .S02_AXI_awuser(CIPS_0_FPD_CCI_NOC_2_AWUSER),
        .S02_AXI_awvalid(CIPS_0_FPD_CCI_NOC_2_AWVALID),
        .S02_AXI_bid(CIPS_0_FPD_CCI_NOC_2_BID),
        .S02_AXI_bready(CIPS_0_FPD_CCI_NOC_2_BREADY),
        .S02_AXI_bresp(CIPS_0_FPD_CCI_NOC_2_BRESP),
        .S02_AXI_bvalid(CIPS_0_FPD_CCI_NOC_2_BVALID),
        .S02_AXI_rdata(CIPS_0_FPD_CCI_NOC_2_RDATA),
        .S02_AXI_rid(CIPS_0_FPD_CCI_NOC_2_RID),
        .S02_AXI_rlast(CIPS_0_FPD_CCI_NOC_2_RLAST),
        .S02_AXI_rready(CIPS_0_FPD_CCI_NOC_2_RREADY),
        .S02_AXI_rresp(CIPS_0_FPD_CCI_NOC_2_RRESP),
        .S02_AXI_rvalid(CIPS_0_FPD_CCI_NOC_2_RVALID),
        .S02_AXI_wdata(CIPS_0_FPD_CCI_NOC_2_WDATA),
        .S02_AXI_wlast(CIPS_0_FPD_CCI_NOC_2_WLAST),
        .S02_AXI_wready(CIPS_0_FPD_CCI_NOC_2_WREADY),
        .S02_AXI_wstrb(CIPS_0_FPD_CCI_NOC_2_WSTRB),
        .S02_AXI_wuser(CIPS_0_FPD_CCI_NOC_2_WUSER),
        .S02_AXI_wvalid(CIPS_0_FPD_CCI_NOC_2_WVALID),
        .S03_AXI_araddr(CIPS_0_FPD_CCI_NOC_3_ARADDR),
        .S03_AXI_arburst(CIPS_0_FPD_CCI_NOC_3_ARBURST),
        .S03_AXI_arcache(CIPS_0_FPD_CCI_NOC_3_ARCACHE),
        .S03_AXI_arid(CIPS_0_FPD_CCI_NOC_3_ARID),
        .S03_AXI_arlen(CIPS_0_FPD_CCI_NOC_3_ARLEN),
        .S03_AXI_arlock(CIPS_0_FPD_CCI_NOC_3_ARLOCK),
        .S03_AXI_arprot(CIPS_0_FPD_CCI_NOC_3_ARPROT),
        .S03_AXI_arqos(CIPS_0_FPD_CCI_NOC_3_ARQOS),
        .S03_AXI_arready(CIPS_0_FPD_CCI_NOC_3_ARREADY),
        .S03_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arsize(CIPS_0_FPD_CCI_NOC_3_ARSIZE),
        .S03_AXI_aruser(CIPS_0_FPD_CCI_NOC_3_ARUSER),
        .S03_AXI_arvalid(CIPS_0_FPD_CCI_NOC_3_ARVALID),
        .S03_AXI_awaddr(CIPS_0_FPD_CCI_NOC_3_AWADDR),
        .S03_AXI_awburst(CIPS_0_FPD_CCI_NOC_3_AWBURST),
        .S03_AXI_awcache(CIPS_0_FPD_CCI_NOC_3_AWCACHE),
        .S03_AXI_awid(CIPS_0_FPD_CCI_NOC_3_AWID),
        .S03_AXI_awlen(CIPS_0_FPD_CCI_NOC_3_AWLEN),
        .S03_AXI_awlock(CIPS_0_FPD_CCI_NOC_3_AWLOCK),
        .S03_AXI_awprot(CIPS_0_FPD_CCI_NOC_3_AWPROT),
        .S03_AXI_awqos(CIPS_0_FPD_CCI_NOC_3_AWQOS),
        .S03_AXI_awready(CIPS_0_FPD_CCI_NOC_3_AWREADY),
        .S03_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awsize(CIPS_0_FPD_CCI_NOC_3_AWSIZE),
        .S03_AXI_awuser(CIPS_0_FPD_CCI_NOC_3_AWUSER),
        .S03_AXI_awvalid(CIPS_0_FPD_CCI_NOC_3_AWVALID),
        .S03_AXI_bid(CIPS_0_FPD_CCI_NOC_3_BID),
        .S03_AXI_bready(CIPS_0_FPD_CCI_NOC_3_BREADY),
        .S03_AXI_bresp(CIPS_0_FPD_CCI_NOC_3_BRESP),
        .S03_AXI_bvalid(CIPS_0_FPD_CCI_NOC_3_BVALID),
        .S03_AXI_rdata(CIPS_0_FPD_CCI_NOC_3_RDATA),
        .S03_AXI_rid(CIPS_0_FPD_CCI_NOC_3_RID),
        .S03_AXI_rlast(CIPS_0_FPD_CCI_NOC_3_RLAST),
        .S03_AXI_rready(CIPS_0_FPD_CCI_NOC_3_RREADY),
        .S03_AXI_rresp(CIPS_0_FPD_CCI_NOC_3_RRESP),
        .S03_AXI_rvalid(CIPS_0_FPD_CCI_NOC_3_RVALID),
        .S03_AXI_wdata(CIPS_0_FPD_CCI_NOC_3_WDATA),
        .S03_AXI_wlast(CIPS_0_FPD_CCI_NOC_3_WLAST),
        .S03_AXI_wready(CIPS_0_FPD_CCI_NOC_3_WREADY),
        .S03_AXI_wstrb(CIPS_0_FPD_CCI_NOC_3_WSTRB),
        .S03_AXI_wuser(CIPS_0_FPD_CCI_NOC_3_WUSER),
        .S03_AXI_wvalid(CIPS_0_FPD_CCI_NOC_3_WVALID),
        .S04_AXI_araddr(CIPS_0_FPD_AXI_NOC_0_ARADDR),
        .S04_AXI_arburst(CIPS_0_FPD_AXI_NOC_0_ARBURST),
        .S04_AXI_arcache(CIPS_0_FPD_AXI_NOC_0_ARCACHE),
        .S04_AXI_arid(CIPS_0_FPD_AXI_NOC_0_ARID),
        .S04_AXI_arlen(CIPS_0_FPD_AXI_NOC_0_ARLEN),
        .S04_AXI_arlock(CIPS_0_FPD_AXI_NOC_0_ARLOCK),
        .S04_AXI_arprot(CIPS_0_FPD_AXI_NOC_0_ARPROT),
        .S04_AXI_arqos(CIPS_0_FPD_AXI_NOC_0_ARQOS),
        .S04_AXI_arready(CIPS_0_FPD_AXI_NOC_0_ARREADY),
        .S04_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_arsize(CIPS_0_FPD_AXI_NOC_0_ARSIZE),
        .S04_AXI_aruser(CIPS_0_FPD_AXI_NOC_0_ARUSER),
        .S04_AXI_arvalid(CIPS_0_FPD_AXI_NOC_0_ARVALID),
        .S04_AXI_awaddr(CIPS_0_FPD_AXI_NOC_0_AWADDR),
        .S04_AXI_awburst(CIPS_0_FPD_AXI_NOC_0_AWBURST),
        .S04_AXI_awcache(CIPS_0_FPD_AXI_NOC_0_AWCACHE),
        .S04_AXI_awid(CIPS_0_FPD_AXI_NOC_0_AWID),
        .S04_AXI_awlen(CIPS_0_FPD_AXI_NOC_0_AWLEN),
        .S04_AXI_awlock(CIPS_0_FPD_AXI_NOC_0_AWLOCK),
        .S04_AXI_awprot(CIPS_0_FPD_AXI_NOC_0_AWPROT),
        .S04_AXI_awqos(CIPS_0_FPD_AXI_NOC_0_AWQOS),
        .S04_AXI_awready(CIPS_0_FPD_AXI_NOC_0_AWREADY),
        .S04_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_awsize(CIPS_0_FPD_AXI_NOC_0_AWSIZE),
        .S04_AXI_awuser(CIPS_0_FPD_AXI_NOC_0_AWUSER),
        .S04_AXI_awvalid(CIPS_0_FPD_AXI_NOC_0_AWVALID),
        .S04_AXI_bid(CIPS_0_FPD_AXI_NOC_0_BID),
        .S04_AXI_bready(CIPS_0_FPD_AXI_NOC_0_BREADY),
        .S04_AXI_bresp(CIPS_0_FPD_AXI_NOC_0_BRESP),
        .S04_AXI_bvalid(CIPS_0_FPD_AXI_NOC_0_BVALID),
        .S04_AXI_rdata(CIPS_0_FPD_AXI_NOC_0_RDATA),
        .S04_AXI_rid(CIPS_0_FPD_AXI_NOC_0_RID),
        .S04_AXI_rlast(CIPS_0_FPD_AXI_NOC_0_RLAST),
        .S04_AXI_rready(CIPS_0_FPD_AXI_NOC_0_RREADY),
        .S04_AXI_rresp(CIPS_0_FPD_AXI_NOC_0_RRESP),
        .S04_AXI_rvalid(CIPS_0_FPD_AXI_NOC_0_RVALID),
        .S04_AXI_wdata(CIPS_0_FPD_AXI_NOC_0_WDATA),
        .S04_AXI_wlast(CIPS_0_FPD_AXI_NOC_0_WLAST),
        .S04_AXI_wready(CIPS_0_FPD_AXI_NOC_0_WREADY),
        .S04_AXI_wstrb(CIPS_0_FPD_AXI_NOC_0_WSTRB),
        .S04_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_wvalid(CIPS_0_FPD_AXI_NOC_0_WVALID),
        .S05_AXI_araddr(CIPS_0_FPD_AXI_NOC_1_ARADDR),
        .S05_AXI_arburst(CIPS_0_FPD_AXI_NOC_1_ARBURST),
        .S05_AXI_arcache(CIPS_0_FPD_AXI_NOC_1_ARCACHE),
        .S05_AXI_arid(CIPS_0_FPD_AXI_NOC_1_ARID),
        .S05_AXI_arlen(CIPS_0_FPD_AXI_NOC_1_ARLEN),
        .S05_AXI_arlock(CIPS_0_FPD_AXI_NOC_1_ARLOCK),
        .S05_AXI_arprot(CIPS_0_FPD_AXI_NOC_1_ARPROT),
        .S05_AXI_arqos(CIPS_0_FPD_AXI_NOC_1_ARQOS),
        .S05_AXI_arready(CIPS_0_FPD_AXI_NOC_1_ARREADY),
        .S05_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_arsize(CIPS_0_FPD_AXI_NOC_1_ARSIZE),
        .S05_AXI_aruser(CIPS_0_FPD_AXI_NOC_1_ARUSER),
        .S05_AXI_arvalid(CIPS_0_FPD_AXI_NOC_1_ARVALID),
        .S05_AXI_awaddr(CIPS_0_FPD_AXI_NOC_1_AWADDR),
        .S05_AXI_awburst(CIPS_0_FPD_AXI_NOC_1_AWBURST),
        .S05_AXI_awcache(CIPS_0_FPD_AXI_NOC_1_AWCACHE),
        .S05_AXI_awid(CIPS_0_FPD_AXI_NOC_1_AWID),
        .S05_AXI_awlen(CIPS_0_FPD_AXI_NOC_1_AWLEN),
        .S05_AXI_awlock(CIPS_0_FPD_AXI_NOC_1_AWLOCK),
        .S05_AXI_awprot(CIPS_0_FPD_AXI_NOC_1_AWPROT),
        .S05_AXI_awqos(CIPS_0_FPD_AXI_NOC_1_AWQOS),
        .S05_AXI_awready(CIPS_0_FPD_AXI_NOC_1_AWREADY),
        .S05_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_awsize(CIPS_0_FPD_AXI_NOC_1_AWSIZE),
        .S05_AXI_awuser(CIPS_0_FPD_AXI_NOC_1_AWUSER),
        .S05_AXI_awvalid(CIPS_0_FPD_AXI_NOC_1_AWVALID),
        .S05_AXI_bid(CIPS_0_FPD_AXI_NOC_1_BID),
        .S05_AXI_bready(CIPS_0_FPD_AXI_NOC_1_BREADY),
        .S05_AXI_bresp(CIPS_0_FPD_AXI_NOC_1_BRESP),
        .S05_AXI_bvalid(CIPS_0_FPD_AXI_NOC_1_BVALID),
        .S05_AXI_rdata(CIPS_0_FPD_AXI_NOC_1_RDATA),
        .S05_AXI_rid(CIPS_0_FPD_AXI_NOC_1_RID),
        .S05_AXI_rlast(CIPS_0_FPD_AXI_NOC_1_RLAST),
        .S05_AXI_rready(CIPS_0_FPD_AXI_NOC_1_RREADY),
        .S05_AXI_rresp(CIPS_0_FPD_AXI_NOC_1_RRESP),
        .S05_AXI_rvalid(CIPS_0_FPD_AXI_NOC_1_RVALID),
        .S05_AXI_wdata(CIPS_0_FPD_AXI_NOC_1_WDATA),
        .S05_AXI_wlast(CIPS_0_FPD_AXI_NOC_1_WLAST),
        .S05_AXI_wready(CIPS_0_FPD_AXI_NOC_1_WREADY),
        .S05_AXI_wstrb(CIPS_0_FPD_AXI_NOC_1_WSTRB),
        .S05_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_wvalid(CIPS_0_FPD_AXI_NOC_1_WVALID),
        .S06_AXI_araddr(CIPS_0_LPD_AXI_NOC_0_ARADDR),
        .S06_AXI_arburst(CIPS_0_LPD_AXI_NOC_0_ARBURST),
        .S06_AXI_arcache(CIPS_0_LPD_AXI_NOC_0_ARCACHE),
        .S06_AXI_arid(CIPS_0_LPD_AXI_NOC_0_ARID),
        .S06_AXI_arlen(CIPS_0_LPD_AXI_NOC_0_ARLEN),
        .S06_AXI_arlock(CIPS_0_LPD_AXI_NOC_0_ARLOCK),
        .S06_AXI_arprot(CIPS_0_LPD_AXI_NOC_0_ARPROT),
        .S06_AXI_arqos(CIPS_0_LPD_AXI_NOC_0_ARQOS),
        .S06_AXI_arready(CIPS_0_LPD_AXI_NOC_0_ARREADY),
        .S06_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_arsize(CIPS_0_LPD_AXI_NOC_0_ARSIZE),
        .S06_AXI_aruser(CIPS_0_LPD_AXI_NOC_0_ARUSER),
        .S06_AXI_arvalid(CIPS_0_LPD_AXI_NOC_0_ARVALID),
        .S06_AXI_awaddr(CIPS_0_LPD_AXI_NOC_0_AWADDR),
        .S06_AXI_awburst(CIPS_0_LPD_AXI_NOC_0_AWBURST),
        .S06_AXI_awcache(CIPS_0_LPD_AXI_NOC_0_AWCACHE),
        .S06_AXI_awid(CIPS_0_LPD_AXI_NOC_0_AWID),
        .S06_AXI_awlen(CIPS_0_LPD_AXI_NOC_0_AWLEN),
        .S06_AXI_awlock(CIPS_0_LPD_AXI_NOC_0_AWLOCK),
        .S06_AXI_awprot(CIPS_0_LPD_AXI_NOC_0_AWPROT),
        .S06_AXI_awqos(CIPS_0_LPD_AXI_NOC_0_AWQOS),
        .S06_AXI_awready(CIPS_0_LPD_AXI_NOC_0_AWREADY),
        .S06_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_awsize(CIPS_0_LPD_AXI_NOC_0_AWSIZE),
        .S06_AXI_awuser(CIPS_0_LPD_AXI_NOC_0_AWUSER),
        .S06_AXI_awvalid(CIPS_0_LPD_AXI_NOC_0_AWVALID),
        .S06_AXI_bid(CIPS_0_LPD_AXI_NOC_0_BID),
        .S06_AXI_bready(CIPS_0_LPD_AXI_NOC_0_BREADY),
        .S06_AXI_bresp(CIPS_0_LPD_AXI_NOC_0_BRESP),
        .S06_AXI_bvalid(CIPS_0_LPD_AXI_NOC_0_BVALID),
        .S06_AXI_rdata(CIPS_0_LPD_AXI_NOC_0_RDATA),
        .S06_AXI_rid(CIPS_0_LPD_AXI_NOC_0_RID),
        .S06_AXI_rlast(CIPS_0_LPD_AXI_NOC_0_RLAST),
        .S06_AXI_rready(CIPS_0_LPD_AXI_NOC_0_RREADY),
        .S06_AXI_rresp(CIPS_0_LPD_AXI_NOC_0_RRESP),
        .S06_AXI_rvalid(CIPS_0_LPD_AXI_NOC_0_RVALID),
        .S06_AXI_wdata(CIPS_0_LPD_AXI_NOC_0_WDATA),
        .S06_AXI_wlast(CIPS_0_LPD_AXI_NOC_0_WLAST),
        .S06_AXI_wready(CIPS_0_LPD_AXI_NOC_0_WREADY),
        .S06_AXI_wstrb(CIPS_0_LPD_AXI_NOC_0_WSTRB),
        .S06_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_wvalid(CIPS_0_LPD_AXI_NOC_0_WVALID),
        .S07_AXI_araddr(CIPS_0_PMC_NOC_AXI_0_ARADDR),
        .S07_AXI_arburst(CIPS_0_PMC_NOC_AXI_0_ARBURST),
        .S07_AXI_arcache(CIPS_0_PMC_NOC_AXI_0_ARCACHE),
        .S07_AXI_arid(CIPS_0_PMC_NOC_AXI_0_ARID),
        .S07_AXI_arlen(CIPS_0_PMC_NOC_AXI_0_ARLEN),
        .S07_AXI_arlock(CIPS_0_PMC_NOC_AXI_0_ARLOCK),
        .S07_AXI_arprot(CIPS_0_PMC_NOC_AXI_0_ARPROT),
        .S07_AXI_arqos(CIPS_0_PMC_NOC_AXI_0_ARQOS),
        .S07_AXI_arready(CIPS_0_PMC_NOC_AXI_0_ARREADY),
        .S07_AXI_arregion(CIPS_0_PMC_NOC_AXI_0_ARREGION),
        .S07_AXI_arsize(CIPS_0_PMC_NOC_AXI_0_ARSIZE),
        .S07_AXI_aruser(CIPS_0_PMC_NOC_AXI_0_ARUSER),
        .S07_AXI_arvalid(CIPS_0_PMC_NOC_AXI_0_ARVALID),
        .S07_AXI_awaddr(CIPS_0_PMC_NOC_AXI_0_AWADDR),
        .S07_AXI_awburst(CIPS_0_PMC_NOC_AXI_0_AWBURST),
        .S07_AXI_awcache(CIPS_0_PMC_NOC_AXI_0_AWCACHE),
        .S07_AXI_awid(CIPS_0_PMC_NOC_AXI_0_AWID),
        .S07_AXI_awlen(CIPS_0_PMC_NOC_AXI_0_AWLEN),
        .S07_AXI_awlock(CIPS_0_PMC_NOC_AXI_0_AWLOCK),
        .S07_AXI_awprot(CIPS_0_PMC_NOC_AXI_0_AWPROT),
        .S07_AXI_awqos(CIPS_0_PMC_NOC_AXI_0_AWQOS),
        .S07_AXI_awready(CIPS_0_PMC_NOC_AXI_0_AWREADY),
        .S07_AXI_awregion(CIPS_0_PMC_NOC_AXI_0_AWREGION),
        .S07_AXI_awsize(CIPS_0_PMC_NOC_AXI_0_AWSIZE),
        .S07_AXI_awuser(CIPS_0_PMC_NOC_AXI_0_AWUSER),
        .S07_AXI_awvalid(CIPS_0_PMC_NOC_AXI_0_AWVALID),
        .S07_AXI_bid(CIPS_0_PMC_NOC_AXI_0_BID),
        .S07_AXI_bready(CIPS_0_PMC_NOC_AXI_0_BREADY),
        .S07_AXI_bresp(CIPS_0_PMC_NOC_AXI_0_BRESP),
        .S07_AXI_buser(CIPS_0_PMC_NOC_AXI_0_BUSER),
        .S07_AXI_bvalid(CIPS_0_PMC_NOC_AXI_0_BVALID),
        .S07_AXI_rdata(CIPS_0_PMC_NOC_AXI_0_RDATA),
        .S07_AXI_rid(CIPS_0_PMC_NOC_AXI_0_RID),
        .S07_AXI_rlast(CIPS_0_PMC_NOC_AXI_0_RLAST),
        .S07_AXI_rready(CIPS_0_PMC_NOC_AXI_0_RREADY),
        .S07_AXI_rresp(CIPS_0_PMC_NOC_AXI_0_RRESP),
        .S07_AXI_ruser(CIPS_0_PMC_NOC_AXI_0_RUSER),
        .S07_AXI_rvalid(CIPS_0_PMC_NOC_AXI_0_RVALID),
        .S07_AXI_wdata(CIPS_0_PMC_NOC_AXI_0_WDATA),
        .S07_AXI_wlast(CIPS_0_PMC_NOC_AXI_0_WLAST),
        .S07_AXI_wready(CIPS_0_PMC_NOC_AXI_0_WREADY),
        .S07_AXI_wstrb(CIPS_0_PMC_NOC_AXI_0_WSTRB),
        .S07_AXI_wuser(CIPS_0_PMC_NOC_AXI_0_WUSER),
        .S07_AXI_wvalid(CIPS_0_PMC_NOC_AXI_0_WVALID),
        .aclk0(clk_wizard_0_clk_out1),
        .aclk1(CIPS_0_fpd_cci_noc_axi0_clk),
        .aclk2(CIPS_0_fpd_cci_noc_axi1_clk),
        .aclk3(CIPS_0_fpd_cci_noc_axi2_clk),
        .aclk4(CIPS_0_fpd_cci_noc_axi3_clk),
        .aclk5(CIPS_0_fpd_axi_noc_axi0_clk),
        .aclk6(CIPS_0_fpd_axi_noc_axi1_clk),
        .aclk7(CIPS_0_lpd_axi_noc_clk),
        .aclk8(CIPS_0_pmc_axi_noc_axi0_clk));
  top_level_clk_wizard_0_0 clk_wizard
       (.clk_200(clk_wizard_clk_200),
        .clk_250(clk_wizard_0_clk_out1),
        .clk_in1(CIPS_0_pl_clk0),
        .locked(clk_wizard_0_locked),
        .resetn(CIPS_0_pl_resetn1));
  top_level_noc_lpddr4_0_0 noc_lpddr4_0
       (.CH0_LPDDR4_0_ca_a(ch0_lpddr4_trip1_ca_a),
        .CH0_LPDDR4_0_ca_b(ch0_lpddr4_trip1_ca_b),
        .CH0_LPDDR4_0_ck_c_a(\^ch0_lpddr4_trip1_ck_c_a ),
        .CH0_LPDDR4_0_ck_c_b(\^ch0_lpddr4_trip1_ck_c_b ),
        .CH0_LPDDR4_0_ck_t_a(\^ch0_lpddr4_trip1_ck_t_a ),
        .CH0_LPDDR4_0_ck_t_b(\^ch0_lpddr4_trip1_ck_t_b ),
        .CH0_LPDDR4_0_cke_a(\^ch0_lpddr4_trip1_cke_a ),
        .CH0_LPDDR4_0_cke_b(\^ch0_lpddr4_trip1_cke_b ),
        .CH0_LPDDR4_0_cs_a(\^ch0_lpddr4_trip1_cs_a ),
        .CH0_LPDDR4_0_cs_b(\^ch0_lpddr4_trip1_cs_b ),
        .CH0_LPDDR4_0_dmi_a(ch0_lpddr4_trip1_dmi_a),
        .CH0_LPDDR4_0_dmi_b(ch0_lpddr4_trip1_dmi_b),
        .CH0_LPDDR4_0_dq_a(ch0_lpddr4_trip1_dq_a),
        .CH0_LPDDR4_0_dq_b(ch0_lpddr4_trip1_dq_b),
        .CH0_LPDDR4_0_dqs_c_a(ch0_lpddr4_trip1_dqs_c_a),
        .CH0_LPDDR4_0_dqs_c_b(ch0_lpddr4_trip1_dqs_c_b),
        .CH0_LPDDR4_0_dqs_t_a(ch0_lpddr4_trip1_dqs_t_a),
        .CH0_LPDDR4_0_dqs_t_b(ch0_lpddr4_trip1_dqs_t_b),
        .CH0_LPDDR4_0_reset_n(\^ch0_lpddr4_trip1_reset_n ),
        .CH1_LPDDR4_0_ca_a(ch1_lpddr4_trip1_ca_a),
        .CH1_LPDDR4_0_ca_b(ch1_lpddr4_trip1_ca_b),
        .CH1_LPDDR4_0_ck_c_a(\^ch1_lpddr4_trip1_ck_c_a ),
        .CH1_LPDDR4_0_ck_c_b(\^ch1_lpddr4_trip1_ck_c_b ),
        .CH1_LPDDR4_0_ck_t_a(\^ch1_lpddr4_trip1_ck_t_a ),
        .CH1_LPDDR4_0_ck_t_b(\^ch1_lpddr4_trip1_ck_t_b ),
        .CH1_LPDDR4_0_cke_a(\^ch1_lpddr4_trip1_cke_a ),
        .CH1_LPDDR4_0_cke_b(\^ch1_lpddr4_trip1_cke_b ),
        .CH1_LPDDR4_0_cs_a(\^ch1_lpddr4_trip1_cs_a ),
        .CH1_LPDDR4_0_cs_b(\^ch1_lpddr4_trip1_cs_b ),
        .CH1_LPDDR4_0_dmi_a(ch1_lpddr4_trip1_dmi_a),
        .CH1_LPDDR4_0_dmi_b(ch1_lpddr4_trip1_dmi_b),
        .CH1_LPDDR4_0_dq_a(ch1_lpddr4_trip1_dq_a),
        .CH1_LPDDR4_0_dq_b(ch1_lpddr4_trip1_dq_b),
        .CH1_LPDDR4_0_dqs_c_a(ch1_lpddr4_trip1_dqs_c_a),
        .CH1_LPDDR4_0_dqs_c_b(ch1_lpddr4_trip1_dqs_c_b),
        .CH1_LPDDR4_0_dqs_t_a(ch1_lpddr4_trip1_dqs_t_a),
        .CH1_LPDDR4_0_dqs_t_b(ch1_lpddr4_trip1_dqs_t_b),
        .CH1_LPDDR4_0_reset_n(\^ch1_lpddr4_trip1_reset_n ),
        .S00_AXI_araddr(pl_rtl_M_AXI_SYSRAM_ARADDR),
        .S00_AXI_arburst(pl_rtl_M_AXI_SYSRAM_ARBURST),
        .S00_AXI_arcache(pl_rtl_M_AXI_SYSRAM_ARCACHE),
        .S00_AXI_arid(pl_rtl_M_AXI_SYSRAM_ARID),
        .S00_AXI_arlen(pl_rtl_M_AXI_SYSRAM_ARLEN),
        .S00_AXI_arlock(pl_rtl_M_AXI_SYSRAM_ARLOCK),
        .S00_AXI_arprot(pl_rtl_M_AXI_SYSRAM_ARPROT),
        .S00_AXI_arqos(pl_rtl_M_AXI_SYSRAM_ARQOS),
        .S00_AXI_arready(pl_rtl_M_AXI_SYSRAM_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(pl_rtl_M_AXI_SYSRAM_ARSIZE),
        .S00_AXI_arvalid(pl_rtl_M_AXI_SYSRAM_ARVALID),
        .S00_AXI_awaddr(pl_rtl_M_AXI_SYSRAM_AWADDR),
        .S00_AXI_awburst(pl_rtl_M_AXI_SYSRAM_AWBURST),
        .S00_AXI_awcache(pl_rtl_M_AXI_SYSRAM_AWCACHE),
        .S00_AXI_awid(pl_rtl_M_AXI_SYSRAM_AWID),
        .S00_AXI_awlen(pl_rtl_M_AXI_SYSRAM_AWLEN),
        .S00_AXI_awlock(pl_rtl_M_AXI_SYSRAM_AWLOCK),
        .S00_AXI_awprot(pl_rtl_M_AXI_SYSRAM_AWPROT),
        .S00_AXI_awqos(pl_rtl_M_AXI_SYSRAM_AWQOS),
        .S00_AXI_awready(pl_rtl_M_AXI_SYSRAM_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(pl_rtl_M_AXI_SYSRAM_AWSIZE),
        .S00_AXI_awvalid(pl_rtl_M_AXI_SYSRAM_AWVALID),
        .S00_AXI_bready(pl_rtl_M_AXI_SYSRAM_BREADY),
        .S00_AXI_bresp(pl_rtl_M_AXI_SYSRAM_BRESP),
        .S00_AXI_bvalid(pl_rtl_M_AXI_SYSRAM_BVALID),
        .S00_AXI_rdata(pl_rtl_M_AXI_SYSRAM_RDATA),
        .S00_AXI_rlast(pl_rtl_M_AXI_SYSRAM_RLAST),
        .S00_AXI_rready(pl_rtl_M_AXI_SYSRAM_RREADY),
        .S00_AXI_rresp(pl_rtl_M_AXI_SYSRAM_RRESP),
        .S00_AXI_rvalid(pl_rtl_M_AXI_SYSRAM_RVALID),
        .S00_AXI_wdata(pl_rtl_M_AXI_SYSRAM_WDATA),
        .S00_AXI_wlast(pl_rtl_M_AXI_SYSRAM_WLAST),
        .S00_AXI_wready(pl_rtl_M_AXI_SYSRAM_WREADY),
        .S00_AXI_wstrb(pl_rtl_M_AXI_SYSRAM_WSTRB),
        .S00_AXI_wvalid(pl_rtl_M_AXI_SYSRAM_WVALID),
        .S00_INI_internoc(cips_noc_M00_INI_INTERNOC),
        .S01_AXI_araddr(pl_rtl_M_AXI_RAM1_PCI_ARADDR),
        .S01_AXI_arburst(pl_rtl_M_AXI_RAM1_PCI_ARBURST),
        .S01_AXI_arcache(pl_rtl_M_AXI_RAM1_PCI_ARCACHE),
        .S01_AXI_arid(pl_rtl_M_AXI_RAM1_PCI_ARID),
        .S01_AXI_arlen(pl_rtl_M_AXI_RAM1_PCI_ARLEN),
        .S01_AXI_arlock(pl_rtl_M_AXI_RAM1_PCI_ARLOCK),
        .S01_AXI_arprot(pl_rtl_M_AXI_RAM1_PCI_ARPROT),
        .S01_AXI_arqos(pl_rtl_M_AXI_RAM1_PCI_ARQOS),
        .S01_AXI_arready(pl_rtl_M_AXI_RAM1_PCI_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(pl_rtl_M_AXI_RAM1_PCI_ARSIZE),
        .S01_AXI_arvalid(pl_rtl_M_AXI_RAM1_PCI_ARVALID),
        .S01_AXI_awaddr(pl_rtl_M_AXI_RAM1_PCI_AWADDR),
        .S01_AXI_awburst(pl_rtl_M_AXI_RAM1_PCI_AWBURST),
        .S01_AXI_awcache(pl_rtl_M_AXI_RAM1_PCI_AWCACHE),
        .S01_AXI_awid(pl_rtl_M_AXI_RAM1_PCI_AWID),
        .S01_AXI_awlen(pl_rtl_M_AXI_RAM1_PCI_AWLEN),
        .S01_AXI_awlock(pl_rtl_M_AXI_RAM1_PCI_AWLOCK),
        .S01_AXI_awprot(pl_rtl_M_AXI_RAM1_PCI_AWPROT),
        .S01_AXI_awqos(pl_rtl_M_AXI_RAM1_PCI_AWQOS),
        .S01_AXI_awready(pl_rtl_M_AXI_RAM1_PCI_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(pl_rtl_M_AXI_RAM1_PCI_AWSIZE),
        .S01_AXI_awvalid(pl_rtl_M_AXI_RAM1_PCI_AWVALID),
        .S01_AXI_bready(pl_rtl_M_AXI_RAM1_PCI_BREADY),
        .S01_AXI_bresp(pl_rtl_M_AXI_RAM1_PCI_BRESP),
        .S01_AXI_bvalid(pl_rtl_M_AXI_RAM1_PCI_BVALID),
        .S01_AXI_rdata(pl_rtl_M_AXI_RAM1_PCI_RDATA),
        .S01_AXI_rlast(pl_rtl_M_AXI_RAM1_PCI_RLAST),
        .S01_AXI_rready(pl_rtl_M_AXI_RAM1_PCI_RREADY),
        .S01_AXI_rresp(pl_rtl_M_AXI_RAM1_PCI_RRESP),
        .S01_AXI_rvalid(pl_rtl_M_AXI_RAM1_PCI_RVALID),
        .S01_AXI_wdata(pl_rtl_M_AXI_RAM1_PCI_WDATA),
        .S01_AXI_wlast(pl_rtl_M_AXI_RAM1_PCI_WLAST),
        .S01_AXI_wready(pl_rtl_M_AXI_RAM1_PCI_WREADY),
        .S01_AXI_wstrb(pl_rtl_M_AXI_RAM1_PCI_WSTRB),
        .S01_AXI_wvalid(pl_rtl_M_AXI_RAM1_PCI_WVALID),
        .S01_INI_internoc(cips_noc_M01_INI_INTERNOC),
        .S02_INI_internoc(cips_noc_M02_INI_INTERNOC),
        .S03_INI_internoc(cips_noc_M03_INI_INTERNOC),
        .aclk0(clk_wizard_0_clk_out1),
        .sys_clk0_clk_n(lpddr4_clk1_clk_n),
        .sys_clk0_clk_p(lpddr4_clk1_clk_p));
  top_level_noc_lpddr4_1_0 noc_lpddr4_1
       (.CH0_LPDDR4_0_ca_a(ch0_lpddr4_trip2_ca_a),
        .CH0_LPDDR4_0_ca_b(ch0_lpddr4_trip2_ca_b),
        .CH0_LPDDR4_0_ck_c_a(\^ch0_lpddr4_trip2_ck_c_a ),
        .CH0_LPDDR4_0_ck_c_b(\^ch0_lpddr4_trip2_ck_c_b ),
        .CH0_LPDDR4_0_ck_t_a(\^ch0_lpddr4_trip2_ck_t_a ),
        .CH0_LPDDR4_0_ck_t_b(\^ch0_lpddr4_trip2_ck_t_b ),
        .CH0_LPDDR4_0_cke_a(\^ch0_lpddr4_trip2_cke_a ),
        .CH0_LPDDR4_0_cke_b(\^ch0_lpddr4_trip2_cke_b ),
        .CH0_LPDDR4_0_cs_a(\^ch0_lpddr4_trip2_cs_a ),
        .CH0_LPDDR4_0_cs_b(\^ch0_lpddr4_trip2_cs_b ),
        .CH0_LPDDR4_0_dmi_a(ch0_lpddr4_trip2_dmi_a),
        .CH0_LPDDR4_0_dmi_b(ch0_lpddr4_trip2_dmi_b),
        .CH0_LPDDR4_0_dq_a(ch0_lpddr4_trip2_dq_a),
        .CH0_LPDDR4_0_dq_b(ch0_lpddr4_trip2_dq_b),
        .CH0_LPDDR4_0_dqs_c_a(ch0_lpddr4_trip2_dqs_c_a),
        .CH0_LPDDR4_0_dqs_c_b(ch0_lpddr4_trip2_dqs_c_b),
        .CH0_LPDDR4_0_dqs_t_a(ch0_lpddr4_trip2_dqs_t_a),
        .CH0_LPDDR4_0_dqs_t_b(ch0_lpddr4_trip2_dqs_t_b),
        .CH0_LPDDR4_0_reset_n(\^ch0_lpddr4_trip2_reset_n ),
        .CH0_LPDDR4_1_ca_a(ch0_lpddr4_trip3_ca_a),
        .CH0_LPDDR4_1_ca_b(ch0_lpddr4_trip3_ca_b),
        .CH0_LPDDR4_1_ck_c_a(\^ch0_lpddr4_trip3_ck_c_a ),
        .CH0_LPDDR4_1_ck_c_b(\^ch0_lpddr4_trip3_ck_c_b ),
        .CH0_LPDDR4_1_ck_t_a(\^ch0_lpddr4_trip3_ck_t_a ),
        .CH0_LPDDR4_1_ck_t_b(\^ch0_lpddr4_trip3_ck_t_b ),
        .CH0_LPDDR4_1_cke_a(\^ch0_lpddr4_trip3_cke_a ),
        .CH0_LPDDR4_1_cke_b(\^ch0_lpddr4_trip3_cke_b ),
        .CH0_LPDDR4_1_cs_a(\^ch0_lpddr4_trip3_cs_a ),
        .CH0_LPDDR4_1_cs_b(\^ch0_lpddr4_trip3_cs_b ),
        .CH0_LPDDR4_1_dmi_a(ch0_lpddr4_trip3_dmi_a),
        .CH0_LPDDR4_1_dmi_b(ch0_lpddr4_trip3_dmi_b),
        .CH0_LPDDR4_1_dq_a(ch0_lpddr4_trip3_dq_a),
        .CH0_LPDDR4_1_dq_b(ch0_lpddr4_trip3_dq_b),
        .CH0_LPDDR4_1_dqs_c_a(ch0_lpddr4_trip3_dqs_c_a),
        .CH0_LPDDR4_1_dqs_c_b(ch0_lpddr4_trip3_dqs_c_b),
        .CH0_LPDDR4_1_dqs_t_a(ch0_lpddr4_trip3_dqs_t_a),
        .CH0_LPDDR4_1_dqs_t_b(ch0_lpddr4_trip3_dqs_t_b),
        .CH0_LPDDR4_1_reset_n(\^ch0_lpddr4_trip3_reset_n ),
        .CH1_LPDDR4_0_ca_a(ch1_lpddr4_trip2_ca_a),
        .CH1_LPDDR4_0_ca_b(ch1_lpddr4_trip2_ca_b),
        .CH1_LPDDR4_0_ck_c_a(\^ch1_lpddr4_trip2_ck_c_a ),
        .CH1_LPDDR4_0_ck_c_b(\^ch1_lpddr4_trip2_ck_c_b ),
        .CH1_LPDDR4_0_ck_t_a(\^ch1_lpddr4_trip2_ck_t_a ),
        .CH1_LPDDR4_0_ck_t_b(\^ch1_lpddr4_trip2_ck_t_b ),
        .CH1_LPDDR4_0_cke_a(\^ch1_lpddr4_trip2_cke_a ),
        .CH1_LPDDR4_0_cke_b(\^ch1_lpddr4_trip2_cke_b ),
        .CH1_LPDDR4_0_cs_a(\^ch1_lpddr4_trip2_cs_a ),
        .CH1_LPDDR4_0_cs_b(\^ch1_lpddr4_trip2_cs_b ),
        .CH1_LPDDR4_0_dmi_a(ch1_lpddr4_trip2_dmi_a),
        .CH1_LPDDR4_0_dmi_b(ch1_lpddr4_trip2_dmi_b),
        .CH1_LPDDR4_0_dq_a(ch1_lpddr4_trip2_dq_a),
        .CH1_LPDDR4_0_dq_b(ch1_lpddr4_trip2_dq_b),
        .CH1_LPDDR4_0_dqs_c_a(ch1_lpddr4_trip2_dqs_c_a),
        .CH1_LPDDR4_0_dqs_c_b(ch1_lpddr4_trip2_dqs_c_b),
        .CH1_LPDDR4_0_dqs_t_a(ch1_lpddr4_trip2_dqs_t_a),
        .CH1_LPDDR4_0_dqs_t_b(ch1_lpddr4_trip2_dqs_t_b),
        .CH1_LPDDR4_0_reset_n(\^ch1_lpddr4_trip2_reset_n ),
        .CH1_LPDDR4_1_ca_a(ch1_lpddr4_trip3_ca_a),
        .CH1_LPDDR4_1_ca_b(ch1_lpddr4_trip3_ca_b),
        .CH1_LPDDR4_1_ck_c_a(\^ch1_lpddr4_trip3_ck_c_a ),
        .CH1_LPDDR4_1_ck_c_b(\^ch1_lpddr4_trip3_ck_c_b ),
        .CH1_LPDDR4_1_ck_t_a(\^ch1_lpddr4_trip3_ck_t_a ),
        .CH1_LPDDR4_1_ck_t_b(\^ch1_lpddr4_trip3_ck_t_b ),
        .CH1_LPDDR4_1_cke_a(\^ch1_lpddr4_trip3_cke_a ),
        .CH1_LPDDR4_1_cke_b(\^ch1_lpddr4_trip3_cke_b ),
        .CH1_LPDDR4_1_cs_a(\^ch1_lpddr4_trip3_cs_a ),
        .CH1_LPDDR4_1_cs_b(\^ch1_lpddr4_trip3_cs_b ),
        .CH1_LPDDR4_1_dmi_a(ch1_lpddr4_trip3_dmi_a),
        .CH1_LPDDR4_1_dmi_b(ch1_lpddr4_trip3_dmi_b),
        .CH1_LPDDR4_1_dq_a(ch1_lpddr4_trip3_dq_a),
        .CH1_LPDDR4_1_dq_b(ch1_lpddr4_trip3_dq_b),
        .CH1_LPDDR4_1_dqs_c_a(ch1_lpddr4_trip3_dqs_c_a),
        .CH1_LPDDR4_1_dqs_c_b(ch1_lpddr4_trip3_dqs_c_b),
        .CH1_LPDDR4_1_dqs_t_a(ch1_lpddr4_trip3_dqs_t_a),
        .CH1_LPDDR4_1_dqs_t_b(ch1_lpddr4_trip3_dqs_t_b),
        .CH1_LPDDR4_1_reset_n(\^ch1_lpddr4_trip3_reset_n ),
        .S00_INI_internoc(cips_noc_M04_INI_INTERNOC),
        .S01_INI_internoc(cips_noc_M05_INI_INTERNOC),
        .S02_INI_internoc(cips_noc_M06_INI_INTERNOC),
        .S03_INI_internoc(cips_noc_M07_INI_INTERNOC),
        .sys_clk0_clk_n(lpddr4_clk2_clk_n),
        .sys_clk0_clk_p(lpddr4_clk2_clk_p),
        .sys_clk1_clk_n(lpddr4_clk3_clk_n),
        .sys_clk1_clk_p(lpddr4_clk3_clk_p));
  pl_rtl_imp_QFYSB7 pl_rtl
       (.CHIP_GPIO13(CHIP_GPIO13),
        .CHIP_GPIO15(CHIP_GPIO15),
        .CHIP_GPIO15_DIR(CHIP_GPIO15_DIR),
        .CHIP_GPIO_BYTE_DIR(CHIP_GPIO_BYTE_DIR),
        .CHIP_PA_SYNC(CHIP_PA_SYNC),
        .CHIP_RS0(CHIP_RS0),
        .CHIP_RS256(CHIP_RS256),
        .CHIP_RSTB(CHIP_RSTB),
        .CHIP_VDD(CHIP_VDD),
        .CHIP_VDDA(CHIP_VDDA),
        .CHIP_VDDIO(CHIP_VDDIO),
        .CHIP_VDDLVDS(CHIP_VDDLVDS),
        .LVDS_BANKA_clk_n(LVDS_BANKA_clk_n),
        .LVDS_BANKA_clk_p(LVDS_BANKA_clk_p),
        .LVDS_CLK_clk_n(LVDS_CLK_clk_n),
        .LVDS_CLK_clk_p(LVDS_CLK_clk_p),
        .LVDS_DN(LVDS_DN),
        .LVDS_DP(LVDS_DP),
        .LVL_TRSL_OE_N(LVL_TRSL_OE_N),
        .M_AXI_RAM0_PCI_araddr(pl_rtl_M_AXI_SYSRAM_ARADDR),
        .M_AXI_RAM0_PCI_arburst(pl_rtl_M_AXI_SYSRAM_ARBURST),
        .M_AXI_RAM0_PCI_arcache(pl_rtl_M_AXI_SYSRAM_ARCACHE),
        .M_AXI_RAM0_PCI_arid(pl_rtl_M_AXI_SYSRAM_ARID),
        .M_AXI_RAM0_PCI_arlen(pl_rtl_M_AXI_SYSRAM_ARLEN),
        .M_AXI_RAM0_PCI_arlock(pl_rtl_M_AXI_SYSRAM_ARLOCK),
        .M_AXI_RAM0_PCI_arprot(pl_rtl_M_AXI_SYSRAM_ARPROT),
        .M_AXI_RAM0_PCI_arqos(pl_rtl_M_AXI_SYSRAM_ARQOS),
        .M_AXI_RAM0_PCI_arready(pl_rtl_M_AXI_SYSRAM_ARREADY),
        .M_AXI_RAM0_PCI_arsize(pl_rtl_M_AXI_SYSRAM_ARSIZE),
        .M_AXI_RAM0_PCI_arvalid(pl_rtl_M_AXI_SYSRAM_ARVALID),
        .M_AXI_RAM0_PCI_awaddr(pl_rtl_M_AXI_SYSRAM_AWADDR),
        .M_AXI_RAM0_PCI_awburst(pl_rtl_M_AXI_SYSRAM_AWBURST),
        .M_AXI_RAM0_PCI_awcache(pl_rtl_M_AXI_SYSRAM_AWCACHE),
        .M_AXI_RAM0_PCI_awid(pl_rtl_M_AXI_SYSRAM_AWID),
        .M_AXI_RAM0_PCI_awlen(pl_rtl_M_AXI_SYSRAM_AWLEN),
        .M_AXI_RAM0_PCI_awlock(pl_rtl_M_AXI_SYSRAM_AWLOCK),
        .M_AXI_RAM0_PCI_awprot(pl_rtl_M_AXI_SYSRAM_AWPROT),
        .M_AXI_RAM0_PCI_awqos(pl_rtl_M_AXI_SYSRAM_AWQOS),
        .M_AXI_RAM0_PCI_awready(pl_rtl_M_AXI_SYSRAM_AWREADY),
        .M_AXI_RAM0_PCI_awsize(pl_rtl_M_AXI_SYSRAM_AWSIZE),
        .M_AXI_RAM0_PCI_awvalid(pl_rtl_M_AXI_SYSRAM_AWVALID),
        .M_AXI_RAM0_PCI_bready(pl_rtl_M_AXI_SYSRAM_BREADY),
        .M_AXI_RAM0_PCI_bresp(pl_rtl_M_AXI_SYSRAM_BRESP),
        .M_AXI_RAM0_PCI_bvalid(pl_rtl_M_AXI_SYSRAM_BVALID),
        .M_AXI_RAM0_PCI_rdata(pl_rtl_M_AXI_SYSRAM_RDATA),
        .M_AXI_RAM0_PCI_rlast(pl_rtl_M_AXI_SYSRAM_RLAST),
        .M_AXI_RAM0_PCI_rready(pl_rtl_M_AXI_SYSRAM_RREADY),
        .M_AXI_RAM0_PCI_rresp(pl_rtl_M_AXI_SYSRAM_RRESP),
        .M_AXI_RAM0_PCI_rvalid(pl_rtl_M_AXI_SYSRAM_RVALID),
        .M_AXI_RAM0_PCI_wdata(pl_rtl_M_AXI_SYSRAM_WDATA),
        .M_AXI_RAM0_PCI_wlast(pl_rtl_M_AXI_SYSRAM_WLAST),
        .M_AXI_RAM0_PCI_wready(pl_rtl_M_AXI_SYSRAM_WREADY),
        .M_AXI_RAM0_PCI_wstrb(pl_rtl_M_AXI_SYSRAM_WSTRB),
        .M_AXI_RAM0_PCI_wvalid(pl_rtl_M_AXI_SYSRAM_WVALID),
        .M_AXI_RAM1_PCI_araddr(pl_rtl_M_AXI_RAM1_PCI_ARADDR),
        .M_AXI_RAM1_PCI_arburst(pl_rtl_M_AXI_RAM1_PCI_ARBURST),
        .M_AXI_RAM1_PCI_arcache(pl_rtl_M_AXI_RAM1_PCI_ARCACHE),
        .M_AXI_RAM1_PCI_arid(pl_rtl_M_AXI_RAM1_PCI_ARID),
        .M_AXI_RAM1_PCI_arlen(pl_rtl_M_AXI_RAM1_PCI_ARLEN),
        .M_AXI_RAM1_PCI_arlock(pl_rtl_M_AXI_RAM1_PCI_ARLOCK),
        .M_AXI_RAM1_PCI_arprot(pl_rtl_M_AXI_RAM1_PCI_ARPROT),
        .M_AXI_RAM1_PCI_arqos(pl_rtl_M_AXI_RAM1_PCI_ARQOS),
        .M_AXI_RAM1_PCI_arready(pl_rtl_M_AXI_RAM1_PCI_ARREADY),
        .M_AXI_RAM1_PCI_arsize(pl_rtl_M_AXI_RAM1_PCI_ARSIZE),
        .M_AXI_RAM1_PCI_arvalid(pl_rtl_M_AXI_RAM1_PCI_ARVALID),
        .M_AXI_RAM1_PCI_awaddr(pl_rtl_M_AXI_RAM1_PCI_AWADDR),
        .M_AXI_RAM1_PCI_awburst(pl_rtl_M_AXI_RAM1_PCI_AWBURST),
        .M_AXI_RAM1_PCI_awcache(pl_rtl_M_AXI_RAM1_PCI_AWCACHE),
        .M_AXI_RAM1_PCI_awid(pl_rtl_M_AXI_RAM1_PCI_AWID),
        .M_AXI_RAM1_PCI_awlen(pl_rtl_M_AXI_RAM1_PCI_AWLEN),
        .M_AXI_RAM1_PCI_awlock(pl_rtl_M_AXI_RAM1_PCI_AWLOCK),
        .M_AXI_RAM1_PCI_awprot(pl_rtl_M_AXI_RAM1_PCI_AWPROT),
        .M_AXI_RAM1_PCI_awqos(pl_rtl_M_AXI_RAM1_PCI_AWQOS),
        .M_AXI_RAM1_PCI_awready(pl_rtl_M_AXI_RAM1_PCI_AWREADY),
        .M_AXI_RAM1_PCI_awsize(pl_rtl_M_AXI_RAM1_PCI_AWSIZE),
        .M_AXI_RAM1_PCI_awvalid(pl_rtl_M_AXI_RAM1_PCI_AWVALID),
        .M_AXI_RAM1_PCI_bready(pl_rtl_M_AXI_RAM1_PCI_BREADY),
        .M_AXI_RAM1_PCI_bresp(pl_rtl_M_AXI_RAM1_PCI_BRESP),
        .M_AXI_RAM1_PCI_bvalid(pl_rtl_M_AXI_RAM1_PCI_BVALID),
        .M_AXI_RAM1_PCI_rdata(pl_rtl_M_AXI_RAM1_PCI_RDATA),
        .M_AXI_RAM1_PCI_rlast(pl_rtl_M_AXI_RAM1_PCI_RLAST),
        .M_AXI_RAM1_PCI_rready(pl_rtl_M_AXI_RAM1_PCI_RREADY),
        .M_AXI_RAM1_PCI_rresp(pl_rtl_M_AXI_RAM1_PCI_RRESP),
        .M_AXI_RAM1_PCI_rvalid(pl_rtl_M_AXI_RAM1_PCI_RVALID),
        .M_AXI_RAM1_PCI_wdata(pl_rtl_M_AXI_RAM1_PCI_WDATA),
        .M_AXI_RAM1_PCI_wlast(pl_rtl_M_AXI_RAM1_PCI_WLAST),
        .M_AXI_RAM1_PCI_wready(pl_rtl_M_AXI_RAM1_PCI_WREADY),
        .M_AXI_RAM1_PCI_wstrb(pl_rtl_M_AXI_RAM1_PCI_WSTRB),
        .M_AXI_RAM1_PCI_wvalid(pl_rtl_M_AXI_RAM1_PCI_WVALID),
        .S00_AXI_araddr(CIPS_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(CIPS_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(CIPS_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(CIPS_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(CIPS_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(CIPS_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(CIPS_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(CIPS_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(CIPS_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(CIPS_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_aruser(CIPS_0_M_AXI_GP0_ARUSER),
        .S00_AXI_arvalid(CIPS_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(CIPS_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(CIPS_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(CIPS_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(CIPS_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(CIPS_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(CIPS_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(CIPS_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(CIPS_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(CIPS_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(CIPS_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awuser(CIPS_0_M_AXI_GP0_AWUSER),
        .S00_AXI_awvalid(CIPS_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(CIPS_0_M_AXI_GP0_BID),
        .S00_AXI_bready(CIPS_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(CIPS_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(CIPS_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(CIPS_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(CIPS_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(CIPS_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(CIPS_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(CIPS_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(CIPS_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(CIPS_0_M_AXI_GP0_WDATA),
        .S00_AXI_wlast(CIPS_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(CIPS_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(CIPS_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(CIPS_0_M_AXI_GP0_WVALID),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .UCI_ADC_CSN(UCI_ADC_CSN),
        .UCI_ADC_MISO(UCI_ADC_MISO),
        .UCI_ADC_MOSI(UCI_ADC_MOSI),
        .UCI_ADC_SCK(UCI_ADC_SCK),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .clk_200(clk_wizard_clk_200),
        .clk_250(clk_wizard_0_clk_out1),
        .irq(pl_rtl_irq),
        .pin_hsi_pclk(CHIP_HSI_CLK),
        .pin_spi_cs_n(CHIP_SPI_CSN),
        .pin_spi_miso(CHIP_SPI_MISO),
        .pin_spi_mosi(CHIP_SPI_MOSI),
        .pin_spi_pclk(CHIP_SPI_SCK),
        .qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .qsfp_lpmode(qsfp_lpmode),
        .rx0_aligned(rx0_aligned),
        .rx1_aligned(rx1_aligned));
  top_level_proc_sys_reset_0_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wizard_0_locked),
        .ext_reset_in(CIPS_0_pl_resetn1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wizard_0_clk_out1));
endmodule
