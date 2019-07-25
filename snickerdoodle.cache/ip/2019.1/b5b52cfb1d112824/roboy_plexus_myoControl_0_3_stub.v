// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jul 25 21:58:53 2019
// Host        : base running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ roboy_plexus_myoControl_0_3_stub.v
// Design      : roboy_plexus_myoControl_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myoControl_v1_0,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(myocontrol_awaddr, myocontrol_awprot, 
  myocontrol_awvalid, myocontrol_awready, myocontrol_wdata, myocontrol_wstrb, 
  myocontrol_wvalid, myocontrol_wready, myocontrol_bresp, myocontrol_bvalid, 
  myocontrol_bready, myocontrol_araddr, myocontrol_arprot, myocontrol_arvalid, 
  myocontrol_arready, myocontrol_rdata, myocontrol_rresp, myocontrol_rvalid, 
  myocontrol_rready, ss_n_o, miso, mosi, sck, mirrored_muscle_unit, power_sense_n, 
  myocontrol_aclk, myocontrol_aresetn)
/* synthesis syn_black_box black_box_pad_pin="myocontrol_awaddr[10:0],myocontrol_awprot[2:0],myocontrol_awvalid,myocontrol_awready,myocontrol_wdata[31:0],myocontrol_wstrb[3:0],myocontrol_wvalid,myocontrol_wready,myocontrol_bresp[1:0],myocontrol_bvalid,myocontrol_bready,myocontrol_araddr[10:0],myocontrol_arprot[2:0],myocontrol_arvalid,myocontrol_arready,myocontrol_rdata[31:0],myocontrol_rresp[1:0],myocontrol_rvalid,myocontrol_rready,ss_n_o[8:0],miso,mosi,sck,mirrored_muscle_unit,power_sense_n,myocontrol_aclk,myocontrol_aresetn" */;
  input [10:0]myocontrol_awaddr;
  input [2:0]myocontrol_awprot;
  input myocontrol_awvalid;
  output myocontrol_awready;
  input [31:0]myocontrol_wdata;
  input [3:0]myocontrol_wstrb;
  input myocontrol_wvalid;
  output myocontrol_wready;
  output [1:0]myocontrol_bresp;
  output myocontrol_bvalid;
  input myocontrol_bready;
  input [10:0]myocontrol_araddr;
  input [2:0]myocontrol_arprot;
  input myocontrol_arvalid;
  output myocontrol_arready;
  output [31:0]myocontrol_rdata;
  output [1:0]myocontrol_rresp;
  output myocontrol_rvalid;
  input myocontrol_rready;
  output [8:0]ss_n_o;
  input miso;
  output mosi;
  output sck;
  input mirrored_muscle_unit;
  input power_sense_n;
  input myocontrol_aclk;
  input myocontrol_aresetn;
endmodule
