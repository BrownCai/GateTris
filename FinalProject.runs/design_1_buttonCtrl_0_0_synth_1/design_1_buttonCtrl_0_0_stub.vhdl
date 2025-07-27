-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Dec 10 18:18:14 2023
-- Host        : WellDone running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_buttonCtrl_0_0_stub.vhdl
-- Design      : design_1_buttonCtrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iGameRst : in STD_LOGIC;
    iPage : in STD_LOGIC_VECTOR ( 1 downto 0 );
    iPushUp : in STD_LOGIC;
    iPushDown : in STD_LOGIC;
    iPushLeft : in STD_LOGIC;
    iPushRight : in STD_LOGIC;
    oShapeX : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oShapeY : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oShapeSize : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oLeft : out STD_LOGIC;
    oRight : out STD_LOGIC;
    oSpeedUp : out STD_LOGIC;
    oLEDUp : out STD_LOGIC;
    oLEDDown : out STD_LOGIC;
    oLEDLeft : out STD_LOGIC;
    oLEDRight : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iClk,iRst,iGameRst,iPage[1:0],iPushUp,iPushDown,iPushLeft,iPushRight,oShapeX[9:0],oShapeY[9:0],oShapeSize[9:0],oLeft,oRight,oSpeedUp,oLEDUp,oLEDDown,oLEDLeft,oLEDRight";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "buttonCtrl,Vivado 2020.1";
begin
end;
