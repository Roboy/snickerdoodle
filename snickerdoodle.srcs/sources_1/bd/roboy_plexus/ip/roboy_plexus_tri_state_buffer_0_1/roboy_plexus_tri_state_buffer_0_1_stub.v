// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jul 28 17:37:01 2019
// Host        : base running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/letrend/workspace/snickerdoodle/snickerdoodle.srcs/sources_1/bd/roboy_plexus/ip/roboy_plexus_tri_state_buffer_0_1/roboy_plexus_tri_state_buffer_0_1_stub.v
// Design      : roboy_plexus_tri_state_buffer_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tri_state_buffer,Vivado 2019.1" *)
module roboy_plexus_tri_state_buffer_0_1(mdo, transmit, mdio, mdi)
/* synthesis syn_black_box black_box_pad_pin="mdo,transmit,mdio,mdi" */;
  input mdo;
  input transmit;
  inout mdio;
  output mdi;
endmodule
