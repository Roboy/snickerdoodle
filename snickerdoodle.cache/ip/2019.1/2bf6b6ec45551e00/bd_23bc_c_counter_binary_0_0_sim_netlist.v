// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jul 28 14:20:45 2019
// Host        : base running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_23bc_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_23bc_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_23bc_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 49971428, PHASE 0.000, CLK_DOMAIN roboy_plexus_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hX5+eQutIjbQafNvwFPoxhOYvlhIEnauYbjVw0+JpJ71HH/KPLL4hKJqjohaIvM9QI8E0sBmbXwl
GkjcZYuDXG4+C1L55j/T8Jcg0N+1pn3zN+aHWjERcqokkyzpRjc59SJMWPjY9bdv5qRwc8zXMbbK
Ke3CFjUHstkPO8kC22HbefucWxfvEo99HbOKKjlBzide5hYwmHpLnusShNoYURKiKZ6oVqFnmDLe
tQKQeBbD2cGb1bpYi6/6+GYJc6TmHWIyT+Z3ptaHT3Dll8E7AgaCADwb9e4zZAsRAZSia/+uCzJ8
j1xpN/lB87GZ48kIhQkVfBDv5rHNItpWT20sKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vOPwgDQVxl1N686uBFvfEUMChDJxg9kLMI9NJ7iyCmqQx83Ks4KDmFTVDjKGTYCvq0F27jU1xSR3
kZ5WiUtfQThwkSk/C+A0hxzTHRJoCgRtIbidBl860WW3X50QOOkjz23tuezwQxiM1rDlVVmqAlVQ
jlH+P2tT4fKPmuobn1mZ34Z3rKRd0Voi3cOEB9FuQHdcXyB7Dn8YekMXzufAHFp6By/FoJrRBPaV
KxhNDzVeTwsZn12TxAvVvonaDlUtWEa/2d3IzXTcST2N61jW7fVV/70ozqBoY49DL9dSDo18rHgf
whKY0ZGuae8QfLUc2S8/c9oawhYnYpFJ1Wa9PQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12432)
`pragma protect data_block
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
GWvOJbfc
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
