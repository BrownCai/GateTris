-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Dec 11 01:35:29 2023
-- Host        : WellDone running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mainPattern_0_0_stub.vhdl
-- Design      : design_1_mainPattern_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    iRst : in STD_LOGIC;
    iGameRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iShapeX : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iShapeY : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iShapeSize : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iLeft : in STD_LOGIC;
    iRight : in STD_LOGIC;
    iSpeedUp : in STD_LOGIC;
    iCountH : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iCountV : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iHS : in STD_LOGIC;
    iVS : in STD_LOGIC;
    oPage : out STD_LOGIC_VECTOR ( 1 downto 0 );
    oRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iRst,iGameRst,iClk,iShapeX[9:0],iShapeY[9:0],iShapeSize[9:0],iLeft,iRight,iSpeedUp,iCountH[9:0],iCountV[9:0],iHS,iVS,oPage[1:0],oRed[3:0],oGreen[3:0],oBlue[3:0],oHS,oVS";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mainPattern,Vivado 2020.1";
begin
end;
