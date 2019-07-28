// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jul 28 14:20:43 2019
// Host        : base running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_23bc_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_23bc_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_23bc_c_shift_ram_0_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 49971428, PHASE 0.000, CLK_DOMAIN roboy_plexus_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
klQ5h9hgPT4p1YBkLUYG8lguTKRhX0z2xODTfvC0iZ4ANS2ufXQ4XxirL31R7wyoNNR1hd7rMjwq
bhFP3bRYRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m0Wn8/fGtoK5/3nNxNBBvNhfylkjw8jAoTERkIzypaD+FUTSQmf52TpAbVY1LPDo/g6d8tzIrR8n
vZ2G5ckAbcwDRGFF5wpZ/kzyANCTceWo7S+WbzLbzhWkG5fkJbJk/tafbSvqruxodmgtrUI2IZDv
n7Mrf4GRIdC1iTgv+oM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mC2bSkADVOO0t7I1BTHPnOuMcPIdeypycvBkfsUtXFD/WSov2Pt6qF5xMTcs6woq+465yEDvey00
mpX9JC1ypEuHaZI+dtH7s+A4vYLXy34kFLryTKJtqycAy6XqNtTegvy4giaDFwDn7LgsamHSf/4D
cVGL06Ul6gm+ZOMvzok6Y9TBltlEkZOZ4GncKspHPcn3EJar4GdDxKcPll1RqSFbA2m7bWz6jPV3
uOD6IWnIflyobdLIsuB8hse3kjXBG5sl6X8AP4armpo9TNNnRIRG2FoI6g16Sj6zldS9XF54ge/w
jnsP0vce7kfzvP1LjtFrWdW0raW61dIddZVz5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LC8srWyP8+H+elFwWxNw8UhEF94Tx3vV4OlwBcwFszd9xuvwYRipLEwY4ar7HEoCwJI7beW6k6I1
ntJSXGEnPMgIDe7PadSQIz6gi9ErRHWRhWD6bEDNd/ZjFQuOakXk78jzxOTKuOpQ+ExjdHImyPzK
mDR0BnkVc/QiSO7zpOf3yjx9Vzb0Fba6OgXg0iLPz1MUr0ahYIc0MAkw4pRBo6IH5ilqVbkgNQcT
G4z/0OSzsBxipE9o1elAez7CnehtEQ66g6i3JpIIwqwnpZNQ9otSnS8LN/spRcQLOUuBq9ynGkPL
sF7EUF1gLkTFFMGgnZgawWi0V0jhiHQkJuLKPQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijV0yStg7uRIl3uzK8/hlbIaWGHa9aPC5Eu/o1vErrwtArYsGFt3RCyG/S90FB6jkuLgqwPR8ZlQ
P9t/F2FWmEkwwjGbdrRKFfpbkjh5HVn0vvLKCP3SiVHXCOWxxb5z8BV+yCNdpgdnsHFecK1M8ydQ
C530kRu3UD1LcnZcWJi41LcJAc5rvlw/SP1gbl+I1qsRNEHsb+MK5vyjgwBZAqKyqi7/UK1VEPdq
myeWeCRrU0GqEq5y/PHBMknv1SqNe0d5qzG1rmAtC4df+iivMCc9xuHsCA7iqoe+ZKnMmnA/8F6+
nY+gx8AQNplCeFxWppKH952fIYplHtE2rKQyVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
saHlQAxOuJkLItpv5N3fJoJP3EdR34QNYHtUBFx7fcQy8HAUaZ/9Tlt2kfpn9r/pk1MmJ7uf4z73
LyaG/PWw7v3yH/KIVSLeIxiaSHoVfdWH1/RDH6k3DTDNbWSJDOjGSvMTThUKe899F8IXTD5jKxCh
frGB3Io0W4klQV7ADEw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RFiy0rrSiVrZMC725S3XkUSDuMS7Z+xog1sOwADnIBmdCChtYLUQVO9oPjXIujfg3bBFTH3qzII3
Y63fFMSZnnzk+ups3RPMBqEPPdMQSwlpDzsvhCOwYHe/rsOPZvqd7lL6QOKoA3mS9TZIP+mOaTKd
vzQiVyfS0rs+QHdJcw49jD5y7Dc3clQHD9xZMAMUHa5v8hzX4IOcnkSUOLpsZptR/WM7rcMnTzCL
x6m2UC+xSrwrb5vEz9cePMHx9NJyO2DBG0HTEDzGQQkrOCJJjvBxtB3r/E7/3eWGHvMwphSJnfCd
PfvYXz88X+ZVCW9dTNfc75jI7ogVMSunmtUuMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lUsFCZr4T0mEes/m3qE0rFD7Zq2BGYtRFeYecD82K1gkcU4oDuuFfeS1Dv+JH+DsdJxK9XRLUxbh
QuxS4GYMUKt0ki8AXZDOrVUaHo8b7HkNeU2V1ax0WrCVCwy9Wru1auON+HEzHiS9rEVxsOii7xxA
QEltzYS9upVvzcCDONzjyLR8hvtLtUMwtF1ZeSyLMP7Eu+yrqS2BO7lYXYsUtNp9JiIbiuFOiRbb
43M3Fka6IRolox8cD/YvyhnC0e9T3E8nL0yYlgAUboENx+Dv1gV6x2q3N+U6M1r9xrsxRl4hkT0k
tTz00e6mm6ocVHs3+PlczedtcBWAk4nqnagIfQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bW6ANJZYd+b5Z+C90ogMx01bjiv9t77uZTgW+7UUbqdLbMVZSw0Ect6Uemr027VK18x/gtyP0PHM
oSv4w+8h7pq69TCbs+oV5RkrdSLDtGVw+lWy6UE8BctY9htAx4IEue7OBaTS9eQfIWZWMkkhIcix
Ewg9UIY96nDywzmf0Ujr0/R9hgFotNAsdmML1Lh5S362PqCttHqz0Aob1GRGur1ZHws07tuZWk4i
TtmERi+RqkzOGONvuTtRdeC/70EcjPCMPopFghMYD/VosHDLiUsDZYD86+J3iF0focu1Sz8RffwI
ovCC60kpEM721zcFswE4IPkCWTFWDjKQ13p0MA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
RZZVgOR7Jt1dw4dhBRtgug==
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
