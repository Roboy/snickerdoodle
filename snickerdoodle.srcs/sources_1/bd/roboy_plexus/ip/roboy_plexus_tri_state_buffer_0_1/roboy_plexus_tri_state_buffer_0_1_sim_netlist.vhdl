-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jul 28 17:37:01 2019
-- Host        : base running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/letrend/workspace/snickerdoodle/snickerdoodle.srcs/sources_1/bd/roboy_plexus/ip/roboy_plexus_tri_state_buffer_0_1/roboy_plexus_tri_state_buffer_0_1_sim_netlist.vhdl
-- Design      : roboy_plexus_tri_state_buffer_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity roboy_plexus_tri_state_buffer_0_1 is
  port (
    mdo : in STD_LOGIC;
    transmit : in STD_LOGIC;
    mdio : inout STD_LOGIC;
    mdi : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of roboy_plexus_tri_state_buffer_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of roboy_plexus_tri_state_buffer_0_1 : entity is "roboy_plexus_tri_state_buffer_0_1,tri_state_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of roboy_plexus_tri_state_buffer_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of roboy_plexus_tri_state_buffer_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of roboy_plexus_tri_state_buffer_0_1 : entity is "tri_state_buffer,Vivado 2019.1";
end roboy_plexus_tri_state_buffer_0_1;

architecture STRUCTURE of roboy_plexus_tri_state_buffer_0_1 is
  signal \^mdio\ : STD_LOGIC;
begin
mdio_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mdo,
      I1 => transmit,
      O => \^mdio\
    );
end STRUCTURE;
