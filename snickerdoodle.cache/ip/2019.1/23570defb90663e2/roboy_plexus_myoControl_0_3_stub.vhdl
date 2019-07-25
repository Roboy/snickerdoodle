-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Jul 26 00:09:31 2019
-- Host        : base running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ roboy_plexus_myoControl_0_3_stub.vhdl
-- Design      : roboy_plexus_myoControl_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    myocontrol_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    myocontrol_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    myocontrol_awvalid : in STD_LOGIC;
    myocontrol_awready : out STD_LOGIC;
    myocontrol_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    myocontrol_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    myocontrol_wvalid : in STD_LOGIC;
    myocontrol_wready : out STD_LOGIC;
    myocontrol_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    myocontrol_bvalid : out STD_LOGIC;
    myocontrol_bready : in STD_LOGIC;
    myocontrol_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    myocontrol_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    myocontrol_arvalid : in STD_LOGIC;
    myocontrol_arready : out STD_LOGIC;
    myocontrol_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    myocontrol_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    myocontrol_rvalid : out STD_LOGIC;
    myocontrol_rready : in STD_LOGIC;
    ss_n_o : out STD_LOGIC_VECTOR ( 39 downto 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    sck : out STD_LOGIC;
    mirrored_muscle_unit : in STD_LOGIC;
    power_sense_n : in STD_LOGIC;
    myocontrol_aclk : in STD_LOGIC;
    myocontrol_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "myocontrol_awaddr[10:0],myocontrol_awprot[2:0],myocontrol_awvalid,myocontrol_awready,myocontrol_wdata[31:0],myocontrol_wstrb[3:0],myocontrol_wvalid,myocontrol_wready,myocontrol_bresp[1:0],myocontrol_bvalid,myocontrol_bready,myocontrol_araddr[10:0],myocontrol_arprot[2:0],myocontrol_arvalid,myocontrol_arready,myocontrol_rdata[31:0],myocontrol_rresp[1:0],myocontrol_rvalid,myocontrol_rready,ss_n_o[39:0],miso,mosi,sck,mirrored_muscle_unit,power_sense_n,myocontrol_aclk,myocontrol_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "myoControl_v1_0,Vivado 2019.1";
begin
end;
