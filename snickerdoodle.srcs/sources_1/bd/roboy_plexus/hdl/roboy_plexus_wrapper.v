//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Jul 28 17:47:49 2019
//Host        : base running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target roboy_plexus_wrapper.bd
//Design      : roboy_plexus_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module roboy_plexus_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    MDC,
    MDIO,
    mirrored_muscle_unit_0,
    mirrored_muscle_unit_1,
    mirrored_muscle_unit_2,
    mirrored_muscle_unit_3,
    mirrored_muscle_unit_4,
    miso_0,
    miso_1,
    miso_2,
    miso_3,
    miso_4,
    mosi_0,
    mosi_1,
    mosi_2,
    mosi_3,
    mosi_4,
    power_sense_n,
    rgmii_rx_ctl,
    rgmii_rxc,
    rgmii_rxd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_txd,
    sck_0,
    sck_1,
    sck_2,
    sck_3,
    sck_4,
    ss_n_0,
    ss_n_1,
    ss_n_2,
    ss_n_3,
    ss_n_4);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output MDC;
  inout MDIO;
  input mirrored_muscle_unit_0;
  input mirrored_muscle_unit_1;
  input mirrored_muscle_unit_2;
  input mirrored_muscle_unit_3;
  input mirrored_muscle_unit_4;
  input miso_0;
  input miso_1;
  input miso_2;
  input miso_3;
  input miso_4;
  output mosi_0;
  output mosi_1;
  output mosi_2;
  output mosi_3;
  output mosi_4;
  input power_sense_n;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  input [3:0]rgmii_rxd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  output [3:0]rgmii_txd;
  output sck_0;
  output sck_1;
  output sck_2;
  output sck_3;
  output sck_4;
  output [7:0]ss_n_0;
  output [7:0]ss_n_1;
  output [5:0]ss_n_2;
  output [5:0]ss_n_3;
  output [5:0]ss_n_4;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire MDC;
  wire MDIO;
  wire mirrored_muscle_unit_0;
  wire mirrored_muscle_unit_1;
  wire mirrored_muscle_unit_2;
  wire mirrored_muscle_unit_3;
  wire mirrored_muscle_unit_4;
  wire miso_0;
  wire miso_1;
  wire miso_2;
  wire miso_3;
  wire miso_4;
  wire mosi_0;
  wire mosi_1;
  wire mosi_2;
  wire mosi_3;
  wire mosi_4;
  wire power_sense_n;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire sck_0;
  wire sck_1;
  wire sck_2;
  wire sck_3;
  wire sck_4;
  wire [7:0]ss_n_0;
  wire [7:0]ss_n_1;
  wire [5:0]ss_n_2;
  wire [5:0]ss_n_3;
  wire [5:0]ss_n_4;

  roboy_plexus roboy_plexus_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .MDC(MDC),
        .MDIO(MDIO),
        .mirrored_muscle_unit_0(mirrored_muscle_unit_0),
        .mirrored_muscle_unit_1(mirrored_muscle_unit_1),
        .mirrored_muscle_unit_2(mirrored_muscle_unit_2),
        .mirrored_muscle_unit_3(mirrored_muscle_unit_3),
        .mirrored_muscle_unit_4(mirrored_muscle_unit_4),
        .miso_0(miso_0),
        .miso_1(miso_1),
        .miso_2(miso_2),
        .miso_3(miso_3),
        .miso_4(miso_4),
        .mosi_0(mosi_0),
        .mosi_1(mosi_1),
        .mosi_2(mosi_2),
        .mosi_3(mosi_3),
        .mosi_4(mosi_4),
        .power_sense_n(power_sense_n),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .sck_0(sck_0),
        .sck_1(sck_1),
        .sck_2(sck_2),
        .sck_3(sck_3),
        .sck_4(sck_4),
        .ss_n_0(ss_n_0),
        .ss_n_1(ss_n_1),
        .ss_n_2(ss_n_2),
        .ss_n_3(ss_n_3),
        .ss_n_4(ss_n_4));
endmodule
