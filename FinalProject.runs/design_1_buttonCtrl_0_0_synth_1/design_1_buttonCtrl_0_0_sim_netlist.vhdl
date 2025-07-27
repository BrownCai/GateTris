-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Dec 10 18:18:14 2023
-- Host        : WellDone running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_buttonCtrl_0_0_sim_netlist.vhdl
-- Design      : design_1_buttonCtrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  port (
    \r_oShapeY_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[12]\ : out STD_LOGIC;
    \r_oShapeY_reg[0]_0\ : out STD_LOGIC;
    \r_oShapeY_reg[6]\ : out STD_LOGIC;
    \r_oShapeY_reg[7]\ : out STD_LOGIC;
    \r_oShapeX_reg[4]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[14]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[8]\ : out STD_LOGIC;
    \r_oShapeX_reg[8]\ : out STD_LOGIC;
    \r_oShapeSize_reg[0]\ : out STD_LOGIC;
    \r_oShapeSize_reg[0]_0\ : out STD_LOGIC;
    \r_oShapeSize_reg[8]\ : out STD_LOGIC;
    \r_oShapeSize_reg[0]_1\ : out STD_LOGIC;
    \r_CntCurr_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[8]_0\ : out STD_LOGIC;
    r_oLeft_reg : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[12]_0\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[10]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[4]\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[7]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_onehot_rCurr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_oShapeSize_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rCurr_reg[0]\ : out STD_LOGIC;
    \r_oShapeSize_reg[8]_0\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[12]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rCurr_reg[14]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    iRst_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rCurr_reg[8]_1\ : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[0]_0\ : out STD_LOGIC;
    r_oLEDLeft37_out : out STD_LOGIC;
    r_oLEDRight46_out : out STD_LOGIC;
    \r_oShapeSize_reg[7]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rCurr_reg[2]\ : out STD_LOGIC;
    r_oLEDDown_reg : out STD_LOGIC;
    \FSM_onehot_rCurr_reg[13]\ : out STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \r_oShapeY_reg[5]\ : in STD_LOGIC;
    \r_oShapeY_reg[6]_0\ : in STD_LOGIC;
    \r_oShapeY_reg[4]\ : in STD_LOGIC;
    \r_oShapeY_reg[7]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[8]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \r_oShapeX_reg[4]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[4]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[5]\ : in STD_LOGIC;
    \r_oShapeX_reg[5]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[5]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[8]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[0]\ : in STD_LOGIC;
    \r_oShapeSize_reg[0]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_oShapeX_reg[0]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    iRst : in STD_LOGIC;
    r_oLEDUp_reg : in STD_LOGIC;
    r_oLEDUp_reg_0 : in STD_LOGIC;
    iPage : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_oLEDUp_reg_1 : in STD_LOGIC;
    r_oLEDUp_reg_2 : in STD_LOGIC;
    r_oSpeedUp_reg : in STD_LOGIC;
    r_oLEDUp_reg_3 : in STD_LOGIC;
    r_oLEDDown_reg_0 : in STD_LOGIC;
    r_oLEDDown_reg_1 : in STD_LOGIC;
    p_1_in0 : in STD_LOGIC;
    oRight : in STD_LOGIC;
    r_oRight_reg : in STD_LOGIC;
    r_oRight_reg_0 : in STD_LOGIC;
    r_oLeft_reg_0 : in STD_LOGIC;
    r_oLeft_reg_1 : in STD_LOGIC;
    oLeft : in STD_LOGIC;
    r_oLeft_reg_2 : in STD_LOGIC;
    r_oLeft_reg_3 : in STD_LOGIC;
    r_oLEDRight_reg : in STD_LOGIC;
    r_oLEDRight_reg_0 : in STD_LOGIC;
    r_oLEDRight_reg_1 : in STD_LOGIC;
    r_oLEDRight_i_4_0 : in STD_LOGIC;
    r_oLEDLeft_reg : in STD_LOGIC;
    r_oLEDLeft_i_3_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_oShapeY_reg[1]\ : in STD_LOGIC;
    \r_oShapeY_reg[1]_0\ : in STD_LOGIC;
    \r_oShapeY_reg[8]\ : in STD_LOGIC;
    \r_oShapeY_reg[9]\ : in STD_LOGIC;
    \r_oShapeY_reg[2]\ : in STD_LOGIC;
    \r_oShapeY_reg[2]_0\ : in STD_LOGIC;
    r_oShapeY00_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_oShapeX_reg[3]\ : in STD_LOGIC;
    \r_oShapeY_reg[4]_0\ : in STD_LOGIC;
    \r_oShapeY_reg[4]_1\ : in STD_LOGIC;
    \r_oShapeY_reg[6]_1\ : in STD_LOGIC;
    \r_oShapeY_reg[6]_2\ : in STD_LOGIC;
    \r_oShapeY_reg[7]_1\ : in STD_LOGIC;
    \r_oShapeY_reg[7]_2\ : in STD_LOGIC;
    \r_oShapeY_reg[8]_0\ : in STD_LOGIC;
    \r_oShapeY_reg[9]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[2]\ : in STD_LOGIC;
    \r_oShapeX_reg[3]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[3]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[4]_2\ : in STD_LOGIC;
    \r_oShapeX_reg[4]_3\ : in STD_LOGIC;
    \r_oShapeX_reg[4]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_oShapeX_reg[6]\ : in STD_LOGIC;
    \r_oShapeX_reg[6]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[6]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[7]\ : in STD_LOGIC;
    \r_oShapeX_reg[7]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[7]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[8]_2\ : in STD_LOGIC;
    \r_oShapeX_reg[8]_3\ : in STD_LOGIC;
    \r_oShapeX_reg[9]\ : in STD_LOGIC;
    \r_oShapeX_reg[9]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[9]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[9]_2\ : in STD_LOGIC;
    \r_oShapeX_reg[9]_3\ : in STD_LOGIC;
    iGameRst : in STD_LOGIC;
    \r_oShapeSize_reg[1]\ : in STD_LOGIC;
    \r_oShapeSize_reg[1]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[1]\ : in STD_LOGIC;
    \r_oShapeX_reg[1]_0\ : in STD_LOGIC;
    \r_oShapeX_reg[1]_1\ : in STD_LOGIC;
    \r_oShapeX_reg[1]_2\ : in STD_LOGIC;
    \r_oShapeX_reg[9]_4\ : in STD_LOGIC;
    \r_oShapeX_reg[4]_5\ : in STD_LOGIC;
    \r_oShapeY_reg[0]_1\ : in STD_LOGIC;
    r_oLEDLeft_reg_0 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_oShapeSize_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_oShapeSize_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_oSpeedUp_reg_0 : in STD_LOGIC;
    oSpeedUp : in STD_LOGIC;
    oLEDDown : in STD_LOGIC;
    oLEDUp : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer is
  signal \^fsm_onehot_rcurr_reg[0]\ : STD_LOGIC;
  signal \^fsm_onehot_rcurr_reg[12]\ : STD_LOGIC;
  signal \^fsm_onehot_rcurr_reg[14]\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_CntCurr[0]_i_9_n_0\ : STD_LOGIC;
  signal r_CntCurr_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \r_CntCurr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \r_CntCurr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_CntCurr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_CntCurr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_CntCurr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_CntCurr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^r_cntcurr_reg[3]_0\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_CntCurr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_CntCurr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_oLEDDown_i_2_n_0 : STD_LOGIC;
  signal r_oLEDDown_i_3_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_7_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_9_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_11_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_8_n_0 : STD_LOGIC;
  signal r_oLEDUp_i_2_n_0 : STD_LOGIC;
  signal r_oLEDUp_i_3_n_0 : STD_LOGIC;
  signal r_oLeft_i_2_n_0 : STD_LOGIC;
  signal r_oLeft_i_4_n_0 : STD_LOGIC;
  signal r_oLeft_i_6_n_0 : STD_LOGIC;
  signal r_oLeft_i_7_n_0 : STD_LOGIC;
  signal r_oLeft_i_9_n_0 : STD_LOGIC;
  signal r_oRight_i_2_n_0 : STD_LOGIC;
  signal \r_oShapeSize[3]_i_6_n_0\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \r_oShapeSize_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \r_oShapeSize_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeSize_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \r_oShapeSize_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \r_oShapeSize_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^r_oshapesize_reg[8]\ : STD_LOGIC;
  signal \^r_oshapesize_reg[8]_0\ : STD_LOGIC;
  signal \r_oShapeX[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_7_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_11_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_13_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_16_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_18_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_19_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_20_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeY[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeY[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_10_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_6_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_r_CntCurr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_CntCurr_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_oShapeSize_reg[9]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeSize_reg[9]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_CntCurr[0]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_CntCurr[0]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_CntCurr[0]_i_9\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_CntCurr_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \r_CntCurr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_CntCurr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_CntCurr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_CntCurr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of r_oLEDRight_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_oLeft_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_oShapeSize[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_oShapeSize[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_oShapeSize[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_oShapeSize[9]_i_5\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \r_oShapeSize_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeSize_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \r_oShapeSize_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeSize_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \r_oShapeSize_reg[9]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeSize_reg[9]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_16\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_19\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_20\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_6\ : label is "soft_lutpair3";
begin
  \FSM_onehot_rCurr_reg[0]\ <= \^fsm_onehot_rcurr_reg[0]\;
  \FSM_onehot_rCurr_reg[12]\ <= \^fsm_onehot_rcurr_reg[12]\;
  \FSM_onehot_rCurr_reg[14]\ <= \^fsm_onehot_rcurr_reg[14]\;
  \r_CntCurr_reg[3]_0\ <= \^r_cntcurr_reg[3]_0\;
  \r_oShapeSize_reg[8]\ <= \^r_oshapesize_reg[8]\;
  \r_oShapeSize_reg[8]_0\ <= \^r_oshapesize_reg[8]_0\;
\r_CntCurr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \r_CntCurr[0]_i_3_n_0\,
      I1 => r_CntCurr_reg(4),
      I2 => \r_CntCurr[0]_i_4_n_0\,
      I3 => iRst,
      I4 => \r_CntCurr[0]_i_5_n_0\,
      I5 => \r_CntCurr[0]_i_6_n_0\,
      O => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFF0CFF0CFF0CAE"
    )
        port map (
      I0 => \r_CntCurr[0]_i_8_n_0\,
      I1 => r_CntCurr_reg(13),
      I2 => \r_CntCurr[0]_i_9_n_0\,
      I3 => \r_oShapeX[9]_i_18_n_0\,
      I4 => r_CntCurr_reg(5),
      I5 => r_CntCurr_reg(6),
      O => \r_CntCurr[0]_i_3_n_0\
    );
\r_CntCurr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_oShapeX[9]_i_18_n_0\,
      I1 => r_CntCurr_reg(3),
      O => \r_CntCurr[0]_i_4_n_0\
    );
\r_CntCurr[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_CntCurr_reg(9),
      I1 => r_CntCurr_reg(8),
      I2 => r_CntCurr_reg(11),
      I3 => r_CntCurr_reg(10),
      O => \r_CntCurr[0]_i_5_n_0\
    );
\r_CntCurr[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => r_CntCurr_reg(16),
      I1 => r_CntCurr_reg(17),
      I2 => r_CntCurr_reg(14),
      I3 => r_CntCurr_reg(15),
      I4 => r_CntCurr_reg(12),
      O => \r_CntCurr[0]_i_6_n_0\
    );
\r_CntCurr[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_CntCurr_reg(0),
      O => \r_CntCurr[0]_i_7_n_0\
    );
\r_CntCurr[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => r_CntCurr_reg(0),
      I1 => r_CntCurr_reg(1),
      I2 => r_CntCurr_reg(2),
      I3 => r_CntCurr_reg(4),
      O => \r_CntCurr[0]_i_8_n_0\
    );
\r_CntCurr[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => r_CntCurr_reg(15),
      I1 => r_CntCurr_reg(14),
      I2 => r_CntCurr_reg(17),
      I3 => r_CntCurr_reg(16),
      O => \r_CntCurr[0]_i_9_n_0\
    );
\r_CntCurr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[0]_i_2_n_7\,
      Q => r_CntCurr_reg(0),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_CntCurr_reg[0]_i_2_n_0\,
      CO(2) => \r_CntCurr_reg[0]_i_2_n_1\,
      CO(1) => \r_CntCurr_reg[0]_i_2_n_2\,
      CO(0) => \r_CntCurr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_CntCurr_reg[0]_i_2_n_4\,
      O(2) => \r_CntCurr_reg[0]_i_2_n_5\,
      O(1) => \r_CntCurr_reg[0]_i_2_n_6\,
      O(0) => \r_CntCurr_reg[0]_i_2_n_7\,
      S(3 downto 1) => r_CntCurr_reg(3 downto 1),
      S(0) => \r_CntCurr[0]_i_7_n_0\
    );
\r_CntCurr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[8]_i_1_n_5\,
      Q => r_CntCurr_reg(10),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[8]_i_1_n_4\,
      Q => r_CntCurr_reg(11),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[12]_i_1_n_7\,
      Q => r_CntCurr_reg(12),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CntCurr_reg[8]_i_1_n_0\,
      CO(3) => \r_CntCurr_reg[12]_i_1_n_0\,
      CO(2) => \r_CntCurr_reg[12]_i_1_n_1\,
      CO(1) => \r_CntCurr_reg[12]_i_1_n_2\,
      CO(0) => \r_CntCurr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CntCurr_reg[12]_i_1_n_4\,
      O(2) => \r_CntCurr_reg[12]_i_1_n_5\,
      O(1) => \r_CntCurr_reg[12]_i_1_n_6\,
      O(0) => \r_CntCurr_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_CntCurr_reg(15 downto 12)
    );
\r_CntCurr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[12]_i_1_n_6\,
      Q => r_CntCurr_reg(13),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[12]_i_1_n_5\,
      Q => r_CntCurr_reg(14),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[12]_i_1_n_4\,
      Q => r_CntCurr_reg(15),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[16]_i_1_n_7\,
      Q => r_CntCurr_reg(16),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CntCurr_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_CntCurr_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_CntCurr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_CntCurr_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_CntCurr_reg[16]_i_1_n_6\,
      O(0) => \r_CntCurr_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_CntCurr_reg(17 downto 16)
    );
\r_CntCurr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[16]_i_1_n_6\,
      Q => r_CntCurr_reg(17),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[0]_i_2_n_6\,
      Q => r_CntCurr_reg(1),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[0]_i_2_n_5\,
      Q => r_CntCurr_reg(2),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[0]_i_2_n_4\,
      Q => r_CntCurr_reg(3),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[4]_i_1_n_7\,
      Q => r_CntCurr_reg(4),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CntCurr_reg[0]_i_2_n_0\,
      CO(3) => \r_CntCurr_reg[4]_i_1_n_0\,
      CO(2) => \r_CntCurr_reg[4]_i_1_n_1\,
      CO(1) => \r_CntCurr_reg[4]_i_1_n_2\,
      CO(0) => \r_CntCurr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CntCurr_reg[4]_i_1_n_4\,
      O(2) => \r_CntCurr_reg[4]_i_1_n_5\,
      O(1) => \r_CntCurr_reg[4]_i_1_n_6\,
      O(0) => \r_CntCurr_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_CntCurr_reg(7 downto 4)
    );
\r_CntCurr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[4]_i_1_n_6\,
      Q => r_CntCurr_reg(5),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[4]_i_1_n_5\,
      Q => r_CntCurr_reg(6),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[4]_i_1_n_4\,
      Q => r_CntCurr_reg(7),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[8]_i_1_n_7\,
      Q => r_CntCurr_reg(8),
      R => \r_CntCurr[0]_i_1_n_0\
    );
\r_CntCurr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_CntCurr_reg[4]_i_1_n_0\,
      CO(3) => \r_CntCurr_reg[8]_i_1_n_0\,
      CO(2) => \r_CntCurr_reg[8]_i_1_n_1\,
      CO(1) => \r_CntCurr_reg[8]_i_1_n_2\,
      CO(0) => \r_CntCurr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_CntCurr_reg[8]_i_1_n_4\,
      O(2) => \r_CntCurr_reg[8]_i_1_n_5\,
      O(1) => \r_CntCurr_reg[8]_i_1_n_6\,
      O(0) => \r_CntCurr_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_CntCurr_reg(11 downto 8)
    );
\r_CntCurr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \r_CntCurr_reg[8]_i_1_n_6\,
      Q => r_CntCurr_reg(9),
      R => \r_CntCurr[0]_i_1_n_0\
    );
r_oLEDDown_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => r_oLEDDown_i_2_n_0,
      I1 => r_oLEDDown_i_3_n_0,
      I2 => oLEDDown,
      O => r_oLEDDown_reg
    );
r_oLEDDown_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0F0C0C04000400"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(5),
      I1 => r_oLEDDown_reg_0,
      I2 => r_oLeft_i_7_n_0,
      I3 => r_oSpeedUp_reg,
      I4 => \r_oShapeX_reg[0]_0\(4),
      I5 => r_oLEDDown_reg_1,
      O => r_oLEDDown_i_2_n_0
    );
r_oLEDDown_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAA0E"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(12),
      I1 => r_oLEDUp_reg,
      I2 => r_oLEDUp_reg_0,
      I3 => iPage(0),
      I4 => iPage(1),
      I5 => r_oLeft_i_7_n_0,
      O => r_oLEDDown_i_3_n_0
    );
r_oLEDLeft_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054005400540000"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(3),
      I1 => \r_oShapeX_reg[0]_0\(8),
      I2 => \r_oShapeX_reg[0]_0\(9),
      I3 => r_oLeft_i_7_n_0,
      I4 => iPage(0),
      I5 => iPage(1),
      O => \FSM_onehot_rCurr_reg[4]\
    );
r_oLEDLeft_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0A0FFE0"
    )
        port map (
      I0 => r_oLEDLeft_i_7_n_0,
      I1 => \r_oShapeX_reg[0]_0\(6),
      I2 => r_oLEDLeft_reg,
      I3 => \r_oShapeX_reg[0]_0\(13),
      I4 => \^r_cntcurr_reg[3]_0\,
      I5 => r_oLEDLeft_i_9_n_0,
      O => \FSM_onehot_rCurr_reg[7]\
    );
r_oLEDLeft_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0F0000CC0A"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(2),
      I1 => r_oRight_reg_0,
      I2 => \r_oShapeX_reg[0]_0\(7),
      I3 => r_oSpeedUp_reg,
      I4 => r_oLeft_i_7_n_0,
      I5 => \r_oShapeX_reg[0]_0\(0),
      O => \FSM_onehot_rCurr_reg[3]\
    );
r_oLEDLeft_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232320000000000"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(1),
      I1 => \r_oShapeX_reg[0]_0\(7),
      I2 => \r_oShapeX_reg[0]_0\(2),
      I3 => r_oLeft_i_7_n_0,
      I4 => r_oLEDLeft_reg_0,
      I5 => r_oSpeedUp_reg,
      O => r_oLEDLeft37_out
    );
r_oLEDLeft_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => r_oLEDLeft_i_3_0,
      I1 => \r_oShapeX[9]_i_18_n_0\,
      I2 => r_CntCurr_reg(3),
      I3 => \r_CntCurr[0]_i_5_n_0\,
      I4 => \r_oShapeX[9]_i_19_n_0\,
      I5 => \r_oShapeX[9]_i_20_n_0\,
      O => r_oLEDLeft_i_7_n_0
    );
r_oLEDLeft_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(12),
      I1 => \r_oShapeX[9]_i_18_n_0\,
      I2 => r_CntCurr_reg(3),
      I3 => \r_CntCurr[0]_i_5_n_0\,
      I4 => \r_oShapeX[9]_i_19_n_0\,
      I5 => \r_oShapeX[9]_i_20_n_0\,
      O => r_oLEDLeft_i_9_n_0
    );
r_oLEDRight_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => r_oSpeedUp_reg,
      I1 => \r_oShapeX[9]_i_18_n_0\,
      I2 => r_CntCurr_reg(3),
      I3 => \r_CntCurr[0]_i_5_n_0\,
      I4 => \r_oShapeX[9]_i_19_n_0\,
      I5 => \r_oShapeX[9]_i_20_n_0\,
      O => r_oLEDRight_i_11_n_0
    );
r_oLEDRight_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(0),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => \r_oShapeX_reg[0]_0\(2),
      O => \FSM_onehot_rCurr_reg[0]_0\
    );
r_oLEDRight_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(7),
      I1 => \^r_cntcurr_reg[3]_0\,
      O => \FSM_onehot_rCurr_reg[8]_1\
    );
r_oLEDRight_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000FFFFF444"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(11),
      I1 => r_oLEDRight_reg,
      I2 => r_oLEDRight_i_8_n_0,
      I3 => r_oLEDRight_reg_0,
      I4 => r_oLEDRight_reg_1,
      I5 => \^r_cntcurr_reg[3]_0\,
      O => \FSM_onehot_rCurr_reg[12]_0\
    );
r_oLEDRight_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF400000000"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(9),
      I1 => \r_oShapeX_reg[0]_0\(8),
      I2 => \r_oShapeX_reg[0]_0\(3),
      I3 => \r_oShapeX_reg[0]_0\(5),
      I4 => \r_oShapeX_reg[0]_0\(12),
      I5 => r_oLEDRight_i_11_n_0,
      O => \FSM_onehot_rCurr_reg[10]\
    );
r_oLEDRight_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA000200000000"
    )
        port map (
      I0 => r_oSpeedUp_reg,
      I1 => r_oLEDDown_reg_0,
      I2 => \r_oShapeX_reg[0]_0\(5),
      I3 => \r_oShapeX_reg[0]_0\(12),
      I4 => r_oLeft_i_7_n_0,
      I5 => \r_oShapeX_reg[0]_0\(7),
      O => r_oLEDRight46_out
    );
r_oLEDRight_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => r_oLEDRight_i_4_0,
      I1 => \r_oShapeX[9]_i_18_n_0\,
      I2 => r_CntCurr_reg(3),
      I3 => \r_CntCurr[0]_i_5_n_0\,
      I4 => \r_oShapeX[9]_i_19_n_0\,
      I5 => \r_oShapeX[9]_i_20_n_0\,
      O => r_oLEDRight_i_8_n_0
    );
r_oLEDUp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFDFFFF0002"
    )
        port map (
      I0 => r_oLEDUp_i_2_n_0,
      I1 => \r_oShapeX_reg[0]_0\(12),
      I2 => r_oLEDUp_reg_0,
      I3 => r_oLEDUp_reg,
      I4 => r_oLEDUp_i_3_n_0,
      I5 => oLEDUp,
      O => \FSM_onehot_rCurr_reg[13]\
    );
r_oLEDUp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22232222"
    )
        port map (
      I0 => r_oLEDDown_reg_0,
      I1 => r_oLeft_i_7_n_0,
      I2 => iPage(1),
      I3 => iPage(0),
      I4 => \r_oShapeX_reg[0]_0\(4),
      O => r_oLEDUp_i_2_n_0
    );
r_oLEDUp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF3200002232"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(5),
      I1 => r_oLEDUp_reg_1,
      I2 => r_oLEDUp_reg_2,
      I3 => r_oSpeedUp_reg,
      I4 => r_oLeft_i_7_n_0,
      I5 => r_oLEDUp_reg_3,
      O => r_oLEDUp_i_3_n_0
    );
r_oLeft_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888FFF88888888"
    )
        port map (
      I0 => r_oLeft_i_2_n_0,
      I1 => r_oLeft_reg_0,
      I2 => r_oLeft_i_4_n_0,
      I3 => r_oLeft_reg_1,
      I4 => r_oLeft_i_6_n_0,
      I5 => oLeft,
      O => r_oLeft_reg
    );
r_oLeft_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAABAAAB0000"
    )
        port map (
      I0 => r_oLeft_i_7_n_0,
      I1 => \r_oShapeX_reg[0]_0\(12),
      I2 => \r_oShapeX_reg[0]_0\(5),
      I3 => r_oLEDDown_reg_0,
      I4 => iPage(1),
      I5 => iPage(0),
      O => r_oLeft_i_2_n_0
    );
r_oLeft_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000054"
    )
        port map (
      I0 => r_oLEDDown_reg_0,
      I1 => iPage(1),
      I2 => iPage(0),
      I3 => \r_oShapeX_reg[0]_0\(12),
      I4 => \r_oShapeX_reg[0]_0\(5),
      I5 => r_oLeft_i_7_n_0,
      O => r_oLeft_i_4_n_0
    );
r_oLeft_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000202FF02"
    )
        port map (
      I0 => r_oLeft_i_7_n_0,
      I1 => iPage(1),
      I2 => iPage(0),
      I3 => r_oLeft_reg_2,
      I4 => r_oLeft_reg_3,
      I5 => p_1_in0,
      O => r_oLeft_i_6_n_0
    );
r_oLeft_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \r_oShapeX[9]_i_20_n_0\,
      I1 => r_CntCurr_reg(0),
      I2 => r_oLeft_i_9_n_0,
      I3 => \r_CntCurr[0]_i_5_n_0\,
      I4 => r_CntCurr_reg(3),
      I5 => \r_oShapeX[9]_i_18_n_0\,
      O => r_oLeft_i_7_n_0
    );
r_oLeft_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_CntCurr_reg(5),
      I1 => r_CntCurr_reg(6),
      O => r_oLeft_i_9_n_0
    );
r_oRight_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080808"
    )
        port map (
      I0 => r_oLeft_i_2_n_0,
      I1 => \r_oShapeX_reg[0]_0\(7),
      I2 => p_1_in0,
      I3 => r_oRight_i_2_n_0,
      I4 => r_oLeft_i_6_n_0,
      I5 => oRight,
      O => \FSM_onehot_rCurr_reg[8]_0\
    );
r_oRight_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010111010"
    )
        port map (
      I0 => r_oRight_reg,
      I1 => p_1_in0,
      I2 => r_oLeft_i_7_n_0,
      I3 => r_oRight_reg_0,
      I4 => r_oSpeedUp_reg,
      I5 => r_oLEDDown_reg_0,
      O => r_oRight_i_2_n_0
    );
\r_oShapeSize[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_oShapeSize_reg[3]_i_1_n_7\,
      I1 => \^r_oshapesize_reg[8]\,
      O => \r_oShapeSize_reg[0]_0\
    );
\r_oShapeSize[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \r_oShapeSize_reg[0]_2\(1),
      I1 => \r_oShapeX_reg[0]_0\(0),
      I2 => \^r_cntcurr_reg[3]_0\,
      O => \r_oShapeSize[3]_i_6_n_0\
    );
\r_oShapeSize[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_oShapeSize_reg[3]_i_1_n_4\,
      I1 => \^r_oshapesize_reg[8]\,
      O => \r_oShapeSize_reg[0]_1\
    );
\r_oShapeSize[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^r_oshapesize_reg[8]\,
      I1 => iRst,
      I2 => iGameRst,
      O => SR(0)
    );
\r_oShapeSize[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCCCC8"
    )
        port map (
      I0 => \r_oShapeSize_reg[0]_2\(4),
      I1 => \^fsm_onehot_rcurr_reg[0]\,
      I2 => \r_oShapeSize_reg[0]_2\(5),
      I3 => \r_oShapeSize_reg[0]_2\(6),
      I4 => \r_oShapeSize_reg[0]_2\(7),
      I5 => \^r_oshapesize_reg[8]_0\,
      O => \r_oShapeSize_reg[4]\(0)
    );
\r_oShapeSize[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F800"
    )
        port map (
      I0 => \r_oShapeSize_reg[0]_2\(8),
      I1 => \r_oShapeSize_reg[1]\,
      I2 => \r_oShapeSize_reg[0]_2\(9),
      I3 => \r_oShapeSize_reg[1]_0\,
      I4 => \^r_cntcurr_reg[3]_0\,
      O => \^r_oshapesize_reg[8]\
    );
\r_oShapeSize[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(0),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => \r_oShapeX_reg[0]_0\(7),
      I3 => \r_oShapeX_reg[0]_0\(2),
      O => \^fsm_onehot_rcurr_reg[0]\
    );
\r_oShapeSize[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0F0C0C0C0E0C0C"
    )
        port map (
      I0 => \r_oShapeSize_reg[0]_2\(8),
      I1 => \r_oShapeSize_reg[1]_0\,
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => \r_oShapeX_reg[1]\,
      I4 => \r_oShapeX_reg[0]_0\(0),
      I5 => \r_oShapeSize_reg[0]_2\(9),
      O => \^r_oshapesize_reg[8]_0\
    );
\r_oShapeSize_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_oShapeSize_reg[3]_i_1_n_0\,
      CO(2) => \r_oShapeSize_reg[3]_i_1_n_1\,
      CO(1) => \r_oShapeSize_reg[3]_i_1_n_2\,
      CO(0) => \r_oShapeSize_reg[3]_i_1_n_3\,
      CYINIT => \r_oShapeSize_reg[0]_2\(0),
      DI(3 downto 1) => \r_oShapeSize_reg[0]_2\(3 downto 1),
      DI(0) => DI(0),
      O(3) => \r_oShapeSize_reg[3]_i_1_n_4\,
      O(2 downto 1) => \r_oShapeSize_reg[7]\(1 downto 0),
      O(0) => \r_oShapeSize_reg[3]_i_1_n_7\,
      S(3 downto 1) => S(2 downto 0),
      S(0) => \r_oShapeSize[3]_i_6_n_0\
    );
\r_oShapeSize_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeSize_reg[3]_i_1_n_0\,
      CO(3) => \r_oShapeSize_reg[7]_i_1_n_0\,
      CO(2) => \r_oShapeSize_reg[7]_i_1_n_1\,
      CO(1) => \r_oShapeSize_reg[7]_i_1_n_2\,
      CO(0) => \r_oShapeSize_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_oShapeSize_reg[0]_2\(7 downto 4),
      O(3) => O(1),
      O(2 downto 1) => \r_oShapeSize_reg[7]\(3 downto 2),
      O(0) => O(0),
      S(3 downto 0) => \r_oShapeSize_reg[7]_0\(3 downto 0)
    );
\r_oShapeSize_reg[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeSize_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_oShapeSize_reg[9]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_oShapeSize_reg[9]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_oShapeSize_reg[7]\(4),
      S(3 downto 1) => B"000",
      S(0) => \r_oShapeSize_reg[9]\(0)
    );
\r_oShapeX[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAFFEA"
    )
        port map (
      I0 => \r_oShapeX_reg[0]\,
      I1 => \r_oShapeSize_reg[0]_2\(0),
      I2 => \r_oShapeX[9]_i_11_n_0\,
      I3 => \r_oShapeX[0]_i_3_n_0\,
      I4 => \r_oShapeX_reg[8]_0\(0),
      I5 => \^fsm_onehot_rcurr_reg[14]\,
      O => \r_oShapeSize_reg[0]\
    );
\r_oShapeX[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001101"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(2),
      I1 => \r_oShapeX_reg[0]_0\(7),
      I2 => \r_oShapeX_reg[0]_0\(10),
      I3 => \r_oShapeX_reg[0]_0\(13),
      I4 => \r_oShapeX_reg[0]_0\(14),
      I5 => \^r_cntcurr_reg[3]_0\,
      O => \r_oShapeX[0]_i_3_n_0\
    );
\r_oShapeX[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8FF88F8F888"
    )
        port map (
      I0 => \r_oShapeX[9]_i_11_n_0\,
      I1 => \r_oShapeY_reg[1]\,
      I2 => \r_oShapeX[9]_i_13_n_0\,
      I3 => \r_oShapeX_reg[8]_0\(0),
      I4 => \r_oShapeX_reg[8]_0\(1),
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(0)
    );
\r_oShapeX[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAFAEEEEAAA"
    )
        port map (
      I0 => \r_oShapeX_reg[2]\,
      I1 => \r_oShapeX[9]_i_13_n_0\,
      I2 => \r_oShapeX_reg[8]_0\(1),
      I3 => \r_oShapeX_reg[8]_0\(0),
      I4 => \r_oShapeX_reg[8]_0\(2),
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(1)
    );
\r_oShapeX[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \r_oShapeX[9]_i_11_n_0\,
      I1 => \r_oShapeX_reg[3]\,
      I2 => \r_oShapeX[9]_i_13_n_0\,
      I3 => \r_oShapeX_reg[3]_0\,
      I4 => \r_oShapeX_reg[3]_1\,
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(2)
    );
\r_oShapeX[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8882"
    )
        port map (
      I0 => \r_oShapeX[9]_i_16_n_0\,
      I1 => \r_oShapeX_reg[8]_0\(3),
      I2 => \r_oShapeX_reg[4]_0\,
      I3 => \r_oShapeX_reg[4]_1\,
      I4 => \r_oShapeX[4]_i_3_n_0\,
      I5 => \^fsm_onehot_rcurr_reg[14]\,
      O => \r_oShapeX_reg[4]\
    );
\r_oShapeX[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0066000000F00000"
    )
        port map (
      I0 => \r_oShapeX_reg[4]_2\,
      I1 => \r_oShapeX_reg[8]_0\(3),
      I2 => \r_oShapeY_reg[4]_1\,
      I3 => \^r_cntcurr_reg[3]_0\,
      I4 => \r_oShapeX_reg[4]_3\,
      I5 => \r_oShapeX_reg[4]_4\(0),
      O => \r_oShapeX[4]_i_3_n_0\
    );
\r_oShapeX[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF2F2F2"
    )
        port map (
      I0 => \r_oShapeX[9]_i_16_n_0\,
      I1 => \r_oShapeX_reg[5]\,
      I2 => \r_oShapeX_reg[5]_0\,
      I3 => \r_oShapeX_reg[5]_1\,
      I4 => \r_oShapeX[9]_i_11_n_0\,
      I5 => \^fsm_onehot_rcurr_reg[14]\,
      O => \FSM_onehot_rCurr_reg[8]\
    );
\r_oShapeX[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \r_oShapeX[9]_i_11_n_0\,
      I1 => \r_oShapeX_reg[6]\,
      I2 => \r_oShapeX[9]_i_13_n_0\,
      I3 => \r_oShapeX_reg[6]_0\,
      I4 => \r_oShapeX_reg[6]_1\,
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(3)
    );
\r_oShapeX[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \r_oShapeX[9]_i_11_n_0\,
      I1 => \r_oShapeX_reg[7]\,
      I2 => \r_oShapeX[9]_i_13_n_0\,
      I3 => \r_oShapeX_reg[7]_0\,
      I4 => \r_oShapeX_reg[7]_1\,
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(4)
    );
\r_oShapeX[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8882"
    )
        port map (
      I0 => \r_oShapeX[9]_i_16_n_0\,
      I1 => \r_oShapeX_reg[8]_0\(4),
      I2 => \r_oShapeX_reg[8]_1\,
      I3 => \r_oShapeX_reg[4]_0\,
      I4 => \r_oShapeX[8]_i_7_n_0\,
      I5 => \^fsm_onehot_rcurr_reg[14]\,
      O => \r_oShapeX_reg[8]\
    );
\r_oShapeX[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => \r_oShapeX_reg[9]_4\,
      I1 => \r_oShapeX_reg[0]_0\(13),
      I2 => \r_oShapeX_reg[9]_3\,
      I3 => \r_oShapeX_reg[4]_5\,
      I4 => \^r_cntcurr_reg[3]_0\,
      I5 => r_oLEDUp_reg_0,
      O => \^fsm_onehot_rcurr_reg[14]\
    );
\r_oShapeX[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \r_oShapeX_reg[8]_2\,
      I1 => \r_oShapeX_reg[8]_3\,
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => \r_oShapeX_reg[4]_3\,
      I4 => \r_oShapeX_reg[4]_4\(0),
      O => \r_oShapeX[8]_i_7_n_0\
    );
\r_oShapeX[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFC8"
    )
        port map (
      I0 => \r_oShapeX_reg[9]_4\,
      I1 => \r_oShapeX[9]_i_5_n_0\,
      I2 => \r_oShapeX_reg[0]_0\(13),
      I3 => iRst,
      I4 => iGameRst,
      O => \FSM_onehot_rCurr_reg[14]_0\(0)
    );
\r_oShapeX[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005501"
    )
        port map (
      I0 => \^r_cntcurr_reg[3]_0\,
      I1 => \r_oShapeX_reg[0]_0\(2),
      I2 => \r_oShapeX_reg[9]_2\,
      I3 => \r_oShapeX_reg[0]_0\(7),
      I4 => \r_oShapeX_reg[4]_4\(0),
      O => \r_oShapeX[9]_i_11_n_0\
    );
\r_oShapeX[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55010000"
    )
        port map (
      I0 => \^r_cntcurr_reg[3]_0\,
      I1 => \r_oShapeX_reg[0]_0\(2),
      I2 => \r_oShapeX_reg[9]_2\,
      I3 => \r_oShapeX_reg[0]_0\(7),
      I4 => \r_oShapeX_reg[4]_4\(0),
      O => \r_oShapeX[9]_i_13_n_0\
    );
\r_oShapeX[9]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCEECCFC"
    )
        port map (
      I0 => \r_oShapeX_reg[9]_3\,
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => \r_oShapeX_reg[9]_2\,
      I3 => \r_oShapeX_reg[0]_0\(7),
      I4 => \r_oShapeX_reg[0]_0\(2),
      O => \r_oShapeX[9]_i_16_n_0\
    );
\r_oShapeX[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r_CntCurr_reg(12),
      I1 => r_CntCurr_reg(15),
      I2 => r_CntCurr_reg(14),
      I3 => r_CntCurr_reg(17),
      I4 => r_CntCurr_reg(16),
      I5 => r_CntCurr_reg(7),
      O => \r_oShapeX[9]_i_18_n_0\
    );
\r_oShapeX[9]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => r_CntCurr_reg(6),
      I1 => r_CntCurr_reg(5),
      I2 => r_CntCurr_reg(0),
      O => \r_oShapeX[9]_i_19_n_0\
    );
\r_oShapeX[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AE00FF00AE00AE"
    )
        port map (
      I0 => \r_oShapeX_reg[1]\,
      I1 => \r_oShapeX_reg[1]_0\,
      I2 => \r_oShapeX_reg[0]_0\(11),
      I3 => \^r_cntcurr_reg[3]_0\,
      I4 => \r_oShapeX_reg[1]_1\,
      I5 => \r_oShapeX_reg[1]_2\,
      O => E(0)
    );
\r_oShapeX[9]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => r_CntCurr_reg(2),
      I1 => r_CntCurr_reg(1),
      I2 => r_CntCurr_reg(13),
      I3 => r_CntCurr_reg(4),
      O => \r_oShapeX[9]_i_20_n_0\
    );
\r_oShapeX[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \r_oShapeX[9]_i_11_n_0\,
      I1 => \r_oShapeX_reg[9]\,
      I2 => \r_oShapeX[9]_i_13_n_0\,
      I3 => \r_oShapeX_reg[9]_0\,
      I4 => \r_oShapeX_reg[9]_1\,
      I5 => \r_oShapeX[9]_i_16_n_0\,
      O => \FSM_onehot_rCurr_reg[3]_0\(5)
    );
\r_oShapeX[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_oShapeX_reg[9]_3\,
      I1 => \r_oShapeX_reg[0]_0\(1),
      I2 => \r_oShapeX_reg[0]_0\(14),
      I3 => \^r_cntcurr_reg[3]_0\,
      I4 => \r_oShapeX_reg[1]\,
      I5 => \r_oShapeX_reg[0]_0\(0),
      O => \r_oShapeX[9]_i_5_n_0\
    );
\r_oShapeX[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \r_oShapeX[9]_i_18_n_0\,
      I1 => r_CntCurr_reg(3),
      I2 => \r_CntCurr[0]_i_5_n_0\,
      I3 => \r_oShapeX[9]_i_19_n_0\,
      I4 => \r_oShapeX[9]_i_20_n_0\,
      I5 => r_oSpeedUp_reg,
      O => \^r_cntcurr_reg[3]_0\
    );
\r_oShapeY[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \r_oShapeY[0]_i_2_n_0\,
      I1 => \r_oShapeY[0]_i_3_n_0\,
      I2 => Q(0),
      I3 => \^fsm_onehot_rcurr_reg[12]\,
      O => \r_oShapeY_reg[0]\
    );
\r_oShapeY[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002200FFF022F0"
    )
        port map (
      I0 => \r_oShapeSize_reg[0]_2\(0),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => Q(1),
      I3 => r_oLEDUp_reg,
      I4 => CO(0),
      I5 => Q(0),
      O => \r_oShapeY[0]_i_2_n_0\
    );
\r_oShapeY[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55545555"
    )
        port map (
      I0 => r_oLEDUp_reg,
      I1 => Q(7),
      I2 => Q(8),
      I3 => \r_oShapeY_reg[8]\,
      I4 => \r_oShapeX_reg[0]_0\(11),
      I5 => \^r_cntcurr_reg[3]_0\,
      O => \r_oShapeY[0]_i_3_n_0\
    );
\r_oShapeY[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220FFFF22200A00"
    )
        port map (
      I0 => r_oLEDUp_reg,
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => \r_oShapeY_reg[1]\,
      I4 => \r_oShapeY_reg[1]_0\,
      I5 => \r_oShapeY[9]_i_9_n_0\,
      O => D(0)
    );
\r_oShapeY[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE100"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \r_oShapeY[9]_i_9_n_0\,
      I4 => \r_oShapeY[2]_i_2_n_0\,
      O => D(1)
    );
\r_oShapeY[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F000006000000"
    )
        port map (
      I0 => Q(2),
      I1 => \r_oShapeY_reg[2]\,
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => CO(0),
      I4 => r_oLEDUp_reg,
      I5 => \r_oShapeY_reg[2]_0\,
      O => \r_oShapeY[2]_i_2_n_0\
    );
\r_oShapeY[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => \r_oShapeY[9]_i_9_n_0\,
      I5 => \r_oShapeY[3]_i_2_n_0\,
      O => D(2)
    );
\r_oShapeY[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23002000"
    )
        port map (
      I0 => r_oShapeY00_in(0),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => r_oLEDUp_reg,
      I4 => \r_oShapeX_reg[3]\,
      O => \r_oShapeY[3]_i_2_n_0\
    );
\r_oShapeY[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \r_oShapeY_reg[4]\,
      I3 => Q(4),
      I4 => \r_oShapeY[9]_i_9_n_0\,
      I5 => \r_oShapeY[4]_i_2_n_0\,
      O => D(3)
    );
\r_oShapeY[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F000006000000"
    )
        port map (
      I0 => Q(4),
      I1 => \r_oShapeY_reg[4]_0\,
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => CO(0),
      I4 => r_oLEDUp_reg,
      I5 => \r_oShapeY_reg[4]_1\,
      O => \r_oShapeY[4]_i_2_n_0\
    );
\r_oShapeY[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \r_oShapeY[5]_i_2_n_0\,
      I1 => \r_oShapeY[9]_i_9_n_0\,
      I2 => \r_oShapeY_reg[5]\,
      I3 => \^fsm_onehot_rcurr_reg[12]\,
      O => \r_oShapeY_reg[0]_0\
    );
\r_oShapeY[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20002300"
    )
        port map (
      I0 => r_oShapeY00_in(1),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => r_oLEDUp_reg,
      I4 => \r_oShapeX_reg[5]_1\,
      O => \r_oShapeY[5]_i_2_n_0\
    );
\r_oShapeY[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAEAAE"
    )
        port map (
      I0 => \r_oShapeY[6]_i_2_n_0\,
      I1 => \r_oShapeY[9]_i_9_n_0\,
      I2 => Q(5),
      I3 => \r_oShapeY_reg[6]_0\,
      I4 => \r_oShapeY_reg[4]\,
      I5 => \^fsm_onehot_rcurr_reg[12]\,
      O => \r_oShapeY_reg[6]\
    );
\r_oShapeY[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06000000060F0000"
    )
        port map (
      I0 => Q(5),
      I1 => \r_oShapeY_reg[6]_1\,
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => CO(0),
      I4 => r_oLEDUp_reg,
      I5 => \r_oShapeY_reg[6]_2\,
      O => \r_oShapeY[6]_i_2_n_0\
    );
\r_oShapeY[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAE"
    )
        port map (
      I0 => \r_oShapeY[7]_i_5_n_0\,
      I1 => \r_oShapeY[9]_i_9_n_0\,
      I2 => Q(6),
      I3 => \r_oShapeY_reg[7]_0\,
      I4 => \^fsm_onehot_rcurr_reg[12]\,
      O => \r_oShapeY_reg[7]\
    );
\r_oShapeY[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202320"
    )
        port map (
      I0 => \r_oShapeY_reg[7]_1\,
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => r_oLEDUp_reg,
      I4 => \r_oShapeY_reg[7]_2\,
      O => \r_oShapeY[7]_i_5_n_0\
    );
\r_oShapeY[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \r_oShapeY_reg[8]\,
      I3 => Q(7),
      I4 => \r_oShapeY[9]_i_9_n_0\,
      I5 => \r_oShapeY[8]_i_2_n_0\,
      O => D(4)
    );
\r_oShapeY[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20002300"
    )
        port map (
      I0 => r_oShapeY00_in(2),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => r_oLEDUp_reg,
      I4 => \r_oShapeY_reg[8]_0\,
      O => \r_oShapeY[8]_i_2_n_0\
    );
\r_oShapeY[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_onehot_rcurr_reg[12]\,
      I1 => iRst,
      I2 => iGameRst,
      O => iRst_0(0)
    );
\r_oShapeY[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23002000"
    )
        port map (
      I0 => r_oShapeY00_in(3),
      I1 => \^r_cntcurr_reg[3]_0\,
      I2 => CO(0),
      I3 => r_oLEDUp_reg,
      I4 => \r_oShapeY_reg[9]_0\,
      O => \r_oShapeY[9]_i_10_n_0\
    );
\r_oShapeY[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888CCCCCCC8"
    )
        port map (
      I0 => r_oLEDUp_reg,
      I1 => \r_oShapeY[9]_i_6_n_0\,
      I2 => \r_oShapeX_reg[0]_0\(11),
      I3 => \r_oShapeX_reg[0]_0\(6),
      I4 => \r_oShapeX_reg[0]_0\(10),
      I5 => \r_oShapeX_reg[0]_0\(12),
      O => \FSM_onehot_rCurr_reg[12]_1\(0)
    );
\r_oShapeY[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => \r_oShapeY_reg[8]\,
      I1 => \r_oShapeY_reg[4]\,
      I2 => Q(7),
      I3 => Q(8),
      I4 => \r_oShapeY[9]_i_9_n_0\,
      I5 => \r_oShapeY[9]_i_10_n_0\,
      O => D(5)
    );
\r_oShapeY[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \r_oShapeY_reg[9]\,
      I1 => \r_oShapeY_reg[4]\,
      I2 => \r_oShapeY_reg[0]_1\,
      I3 => r_oLEDUp_reg_1,
      I4 => \r_oShapeX_reg[0]_0\(11),
      I5 => \^r_cntcurr_reg[3]_0\,
      O => \^fsm_onehot_rcurr_reg[12]\
    );
\r_oShapeY[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_oShapeX_reg[0]_0\(0),
      I1 => \r_oShapeX_reg[0]_0\(2),
      I2 => \r_oShapeX_reg[0]_0\(7),
      I3 => \^r_cntcurr_reg[3]_0\,
      O => \r_oShapeY[9]_i_6_n_0\
    );
\r_oShapeY[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFFFFEFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^r_cntcurr_reg[3]_0\,
      I3 => \r_oShapeX_reg[0]_0\(11),
      I4 => \r_oShapeY_reg[9]\,
      I5 => r_oLEDUp_reg,
      O => \r_oShapeY[9]_i_9_n_0\
    );
r_oSpeedUp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888FFF88888000"
    )
        port map (
      I0 => r_oSpeedUp_reg,
      I1 => \r_oShapeX_reg[0]_0\(1),
      I2 => r_oLeft_i_4_n_0,
      I3 => r_oSpeedUp_reg_0,
      I4 => r_oLeft_i_6_n_0,
      I5 => oSpeedUp,
      O => \FSM_onehot_rCurr_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_oShapeX_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_oShapeSize_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oLEDLeft : out STD_LOGIC;
    oLEDRight : out STD_LOGIC;
    oRight : out STD_LOGIC;
    oLeft : out STD_LOGIC;
    oSpeedUp : out STD_LOGIC;
    oLEDDown : out STD_LOGIC;
    oLEDUp : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iPage : in STD_LOGIC_VECTOR ( 1 downto 0 );
    iGameRst : in STD_LOGIC;
    iPushLeft : in STD_LOGIC;
    iPushRight : in STD_LOGIC;
    iPushDown : in STD_LOGIC;
    iPushUp : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl is
  signal \FSM_onehot_rCurr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[11]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[13]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[13]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[13]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[14]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[15]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[15]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[15]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[15]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_27_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_28_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_29_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_30_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_31_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_32_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_33_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_34_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_35_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_36_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurr_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rCurr_reg_n_0_[8]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \^oleddown\ : STD_LOGIC;
  signal \^oledleft\ : STD_LOGIC;
  signal \^oledright\ : STD_LOGIC;
  signal \^oledup\ : STD_LOGIC;
  signal \^oleft\ : STD_LOGIC;
  signal \^oright\ : STD_LOGIC;
  signal \^ospeedup\ : STD_LOGIC;
  signal p_0_in66_in : STD_LOGIC;
  signal p_0_in67_in : STD_LOGIC;
  signal p_0_in72_in : STD_LOGIC;
  signal p_0_in76_in : STD_LOGIC;
  signal p_0_in78_in : STD_LOGIC;
  signal p_0_in80_in : STD_LOGIC;
  signal p_0_in84_in : STD_LOGIC;
  signal p_0_in86_in : STD_LOGIC;
  signal p_0_in89_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in0 : STD_LOGIC;
  signal p_1_in69_in : STD_LOGIC;
  signal p_1_in70_in : STD_LOGIC;
  signal p_1_in74_in : STD_LOGIC;
  signal p_1_in82_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal r_oLEDDown_i_4_n_0 : STD_LOGIC;
  signal r_oLEDLeft37_out : STD_LOGIC;
  signal r_oLEDLeft_i_10_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_11_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_1_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_4_n_0 : STD_LOGIC;
  signal r_oLEDLeft_i_8_n_0 : STD_LOGIC;
  signal r_oLEDRight46_out : STD_LOGIC;
  signal r_oLEDRight_i_10_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_12_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_13_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_1_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_7_n_0 : STD_LOGIC;
  signal r_oLEDRight_i_9_n_0 : STD_LOGIC;
  signal r_oLEDUp_i_4_n_0 : STD_LOGIC;
  signal r_oLeft_i_3_n_0 : STD_LOGIC;
  signal r_oLeft_i_5_n_0 : STD_LOGIC;
  signal r_oLeft_i_8_n_0 : STD_LOGIC;
  signal r_oRight_i_3_n_0 : STD_LOGIC;
  signal r_oRight_i_4_n_0 : STD_LOGIC;
  signal r_oShapeSize : STD_LOGIC;
  signal \r_oShapeSize[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[9]_i_7_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[9]_i_8_n_0\ : STD_LOGIC;
  signal \r_oShapeSize[9]_i_9_n_0\ : STD_LOGIC;
  signal \^r_oshapesize_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal r_oShapeX2 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal r_oShapeX255_in : STD_LOGIC;
  signal r_oShapeX260_in : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \r_oShapeX2_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \r_oShapeX[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeX[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeX[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_10_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_6_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_8_n_0\ : STD_LOGIC;
  signal \r_oShapeX[8]_i_9_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_10_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_12_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_14_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_15_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_17_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_21_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_22_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_6_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_7_n_0\ : STD_LOGIC;
  signal \r_oShapeX[9]_i_9_n_0\ : STD_LOGIC;
  signal \^r_oshapex_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal r_oShapeY00_in : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \r_oShapeY[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_oShapeY[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeY[6]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_6_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_7_n_0\ : STD_LOGIC;
  signal \r_oShapeY[7]_i_8_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_11_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_12_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_13_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_7_n_0\ : STD_LOGIC;
  signal \r_oShapeY[9]_i_8_n_0\ : STD_LOGIC;
  signal r_oSpeedUp_i_2_n_0 : STD_LOGIC;
  signal r_oSpeedUp_i_3_n_0 : STD_LOGIC;
  signal timer_inst1_n_0 : STD_LOGIC;
  signal timer_inst1_n_1 : STD_LOGIC;
  signal timer_inst1_n_10 : STD_LOGIC;
  signal timer_inst1_n_11 : STD_LOGIC;
  signal timer_inst1_n_12 : STD_LOGIC;
  signal timer_inst1_n_13 : STD_LOGIC;
  signal timer_inst1_n_14 : STD_LOGIC;
  signal timer_inst1_n_15 : STD_LOGIC;
  signal timer_inst1_n_16 : STD_LOGIC;
  signal timer_inst1_n_17 : STD_LOGIC;
  signal timer_inst1_n_18 : STD_LOGIC;
  signal timer_inst1_n_19 : STD_LOGIC;
  signal timer_inst1_n_2 : STD_LOGIC;
  signal timer_inst1_n_20 : STD_LOGIC;
  signal timer_inst1_n_27 : STD_LOGIC;
  signal timer_inst1_n_28 : STD_LOGIC;
  signal timer_inst1_n_29 : STD_LOGIC;
  signal timer_inst1_n_3 : STD_LOGIC;
  signal timer_inst1_n_30 : STD_LOGIC;
  signal timer_inst1_n_31 : STD_LOGIC;
  signal timer_inst1_n_32 : STD_LOGIC;
  signal timer_inst1_n_33 : STD_LOGIC;
  signal timer_inst1_n_34 : STD_LOGIC;
  signal timer_inst1_n_36 : STD_LOGIC;
  signal timer_inst1_n_37 : STD_LOGIC;
  signal timer_inst1_n_38 : STD_LOGIC;
  signal timer_inst1_n_39 : STD_LOGIC;
  signal timer_inst1_n_4 : STD_LOGIC;
  signal timer_inst1_n_40 : STD_LOGIC;
  signal timer_inst1_n_41 : STD_LOGIC;
  signal timer_inst1_n_42 : STD_LOGIC;
  signal timer_inst1_n_45 : STD_LOGIC;
  signal timer_inst1_n_46 : STD_LOGIC;
  signal timer_inst1_n_47 : STD_LOGIC;
  signal timer_inst1_n_48 : STD_LOGIC;
  signal timer_inst1_n_49 : STD_LOGIC;
  signal timer_inst1_n_5 : STD_LOGIC;
  signal timer_inst1_n_50 : STD_LOGIC;
  signal timer_inst1_n_51 : STD_LOGIC;
  signal timer_inst1_n_52 : STD_LOGIC;
  signal timer_inst1_n_53 : STD_LOGIC;
  signal timer_inst1_n_54 : STD_LOGIC;
  signal timer_inst1_n_6 : STD_LOGIC;
  signal timer_inst1_n_7 : STD_LOGIC;
  signal timer_inst1_n_8 : STD_LOGIC;
  signal timer_inst1_n_9 : STD_LOGIC;
  signal \NLW_r_oShapeX2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_oShapeX2_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[10]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[11]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[11]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[13]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[13]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[14]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[15]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[15]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[15]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_13\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_28\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_29\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_30\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_31\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_32\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_33\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_34\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_35\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_36\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[1]_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[7]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurr[7]_i_3\ : label is "soft_lutpair45";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[0]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[10]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[11]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[12]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[13]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[14]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[15]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[1]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[2]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[3]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[4]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[5]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[6]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[7]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[8]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurr_reg[9]\ : label is "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000";
  attribute SOFT_HLUTNM of \i__carry__0_i_7__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry__0_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of r_oLEDLeft_i_10 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of r_oLEDLeft_i_11 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of r_oLEDLeft_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of r_oLEDLeft_i_8 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of r_oLEDRight_i_10 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of r_oLEDRight_i_12 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of r_oLEDRight_i_13 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of r_oLEDRight_i_7 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of r_oLEDUp_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of r_oLeft_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of r_oLeft_i_5 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of r_oRight_i_3 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of r_oRight_i_4 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_oShapeSize[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_oShapeSize[8]_i_2\ : label is "soft_lutpair41";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__0/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__0/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__0/i__carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__0/i__carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__1/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__1/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__1/i__carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__1/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \r_oShapeX2_inferred__1/i__carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \r_oShapeX2_inferred__1/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \r_oShapeX[1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_oShapeX[2]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_oShapeX[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_oShapeX[3]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_oShapeX[3]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_oShapeX[5]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_oShapeX[6]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_oShapeX[6]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_oShapeX[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_oShapeX[7]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_oShapeX[8]_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_oShapeX[8]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_oShapeX[8]_i_8\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_oShapeX[8]_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_14\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_15\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_17\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_21\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_oShapeX[9]_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_oShapeY[2]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_oShapeY[3]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_oShapeY[4]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_oShapeY[6]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_oShapeY[7]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_oShapeY[7]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_oShapeY[7]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_oShapeY[8]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_13\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_14\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_oShapeY[9]_i_8\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of r_oSpeedUp_i_3 : label is "soft_lutpair26";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  oLEDDown <= \^oleddown\;
  oLEDLeft <= \^oledleft\;
  oLEDRight <= \^oledright\;
  oLEDUp <= \^oledup\;
  oLeft <= \^oleft\;
  oRight <= \^oright\;
  oSpeedUp <= \^ospeedup\;
  \r_oShapeSize_reg[9]_0\(9 downto 0) <= \^r_oshapesize_reg[9]_0\(9 downto 0);
  \r_oShapeX_reg[9]_0\(9 downto 0) <= \^r_oshapex_reg[9]_0\(9 downto 0);
\FSM_onehot_rCurr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAA000000000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      I2 => \r_oShapeY[9]_i_5_n_0\,
      I3 => p_0_in89_in,
      I4 => iPushRight,
      I5 => \FSM_onehot_rCurr[0]_i_2_n_0\,
      O => \FSM_onehot_rCurr[0]_i_1_n_0\
    );
\FSM_onehot_rCurr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushLeft,
      I2 => iPushUp,
      O => \FSM_onehot_rCurr[0]_i_2_n_0\
    );
\FSM_onehot_rCurr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040004040400"
    )
        port map (
      I0 => \FSM_onehot_rCurr[10]_i_2_n_0\,
      I1 => iPushLeft,
      I2 => iPushRight,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => p_1_in69_in,
      I5 => p_1_in,
      O => \FSM_onehot_rCurr[10]_i_1_n_0\
    );
\FSM_onehot_rCurr[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushUp,
      O => \FSM_onehot_rCurr[10]_i_2_n_0\
    );
\FSM_onehot_rCurr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr[15]_i_2_n_0\,
      I1 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      I2 => \FSM_onehot_rCurr[11]_i_2_n_0\,
      I3 => \FSM_onehot_rCurr[15]_i_4_n_0\,
      I4 => p_0_in78_in,
      I5 => \FSM_onehot_rCurr[11]_i_3_n_0\,
      O => \FSM_onehot_rCurr[11]_i_1_n_0\
    );
\FSM_onehot_rCurr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_0_in76_in,
      O => \FSM_onehot_rCurr[11]_i_2_n_0\
    );
\FSM_onehot_rCurr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushUp,
      I1 => iPushDown,
      O => \FSM_onehot_rCurr[11]_i_3_n_0\
    );
\FSM_onehot_rCurr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => iPushRight,
      I1 => iPushLeft,
      I2 => iPushUp,
      I3 => iPushDown,
      I4 => \FSM_onehot_rCurr[12]_i_2_n_0\,
      O => \FSM_onehot_rCurr[12]_i_1_n_0\
    );
\FSM_onehot_rCurr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000004"
    )
        port map (
      I0 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      I1 => p_0_in80_in,
      I2 => p_1_in74_in,
      I3 => p_0_in76_in,
      I4 => p_0_in78_in,
      I5 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      O => \FSM_onehot_rCurr[12]_i_2_n_0\
    );
\FSM_onehot_rCurr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr[13]_i_2_n_0\,
      I1 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      I2 => \FSM_onehot_rCurr[13]_i_4_n_0\,
      I3 => iPushLeft,
      I4 => iPushDown,
      I5 => iPushUp,
      O => \FSM_onehot_rCurr[13]_i_1_n_0\
    );
\FSM_onehot_rCurr[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      O => \FSM_onehot_rCurr[13]_i_2_n_0\
    );
\FSM_onehot_rCurr[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in70_in,
      I1 => p_1_in,
      I2 => p_1_in69_in,
      I3 => p_0_in72_in,
      O => \FSM_onehot_rCurr[13]_i_3_n_0\
    );
\FSM_onehot_rCurr[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_1_in82_in,
      I2 => iPushRight,
      I3 => p_0_in80_in,
      I4 => p_0_in76_in,
      I5 => p_0_in78_in,
      O => \FSM_onehot_rCurr[13]_i_4_n_0\
    );
\FSM_onehot_rCurr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => iPushRight,
      I1 => \FSM_onehot_rCurr[14]_i_2_n_0\,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      I4 => p_0_in84_in,
      O => \FSM_onehot_rCurr[14]_i_1_n_0\
    );
\FSM_onehot_rCurr[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => iPushUp,
      I1 => iPushDown,
      I2 => iPushLeft,
      O => \FSM_onehot_rCurr[14]_i_2_n_0\
    );
\FSM_onehot_rCurr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr[15]_i_2_n_0\,
      I1 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      I2 => \FSM_onehot_rCurr[15]_i_4_n_0\,
      I3 => p_0_in86_in,
      I4 => p_0_in84_in,
      I5 => \FSM_onehot_rCurr[15]_i_5_n_0\,
      O => \FSM_onehot_rCurr[15]_i_1_n_0\
    );
\FSM_onehot_rCurr[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => iPushRight,
      I1 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I2 => iPushLeft,
      O => \FSM_onehot_rCurr[15]_i_2_n_0\
    );
\FSM_onehot_rCurr[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_1_in82_in,
      I2 => p_0_in78_in,
      I3 => p_0_in76_in,
      I4 => p_0_in80_in,
      I5 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      O => \FSM_onehot_rCurr[15]_i_3_n_0\
    );
\FSM_onehot_rCurr[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushRight,
      I1 => iPushLeft,
      O => \FSM_onehot_rCurr[15]_i_4_n_0\
    );
\FSM_onehot_rCurr[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushUp,
      O => \FSM_onehot_rCurr[15]_i_5_n_0\
    );
\FSM_onehot_rCurr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_2_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_3_n_0\,
      I2 => \FSM_onehot_rCurr[1]_i_4_n_0\,
      I3 => \FSM_onehot_rCurr[1]_i_5_n_0\,
      I4 => \FSM_onehot_rCurr[1]_i_6_n_0\,
      I5 => \FSM_onehot_rCurr[1]_i_7_n_0\,
      O => \FSM_onehot_rCurr[1]_i_1_n_0\
    );
\FSM_onehot_rCurr[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_0_in78_in,
      I2 => p_0_in72_in,
      I3 => iPushRight,
      I4 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I5 => p_1_in69_in,
      O => \FSM_onehot_rCurr[1]_i_10_n_0\
    );
\FSM_onehot_rCurr[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020000"
    )
        port map (
      I0 => iPushLeft,
      I1 => iPushRight,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => p_1_in69_in,
      I4 => \FSM_onehot_rCurr[1]_i_28_n_0\,
      I5 => \FSM_onehot_rCurr[1]_i_29_n_0\,
      O => \FSM_onehot_rCurr[1]_i_11_n_0\
    );
\FSM_onehot_rCurr[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100010001000"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_0_in80_in,
      I2 => \FSM_onehot_rCurr[1]_i_30_n_0\,
      I3 => p_1_in82_in,
      I4 => \r_oShapeX[9]_i_6_n_0\,
      I5 => iPushUp,
      O => \FSM_onehot_rCurr[1]_i_12_n_0\
    );
\FSM_onehot_rCurr[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushRight,
      I1 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      O => \FSM_onehot_rCurr[1]_i_13_n_0\
    );
\FSM_onehot_rCurr[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F000800"
    )
        port map (
      I0 => \r_oShapeY[7]_i_4_n_0\,
      I1 => iPushDown,
      I2 => iPushUp,
      I3 => iPushLeft,
      I4 => \r_oShapeX[8]_i_8_n_0\,
      I5 => p_0_in84_in,
      O => \FSM_onehot_rCurr[1]_i_14_n_0\
    );
\FSM_onehot_rCurr[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushUp,
      I2 => p_0_in66_in,
      I3 => p_0_in84_in,
      I4 => \FSM_onehot_rCurr[1]_i_30_n_0\,
      O => \FSM_onehot_rCurr[1]_i_15_n_0\
    );
\FSM_onehot_rCurr[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFCCC8C8"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => \FSM_onehot_rCurr[10]_i_2_n_0\,
      I2 => \FSM_onehot_rCurr[4]_i_2_n_0\,
      I3 => iPushLeft,
      I4 => p_1_in70_in,
      I5 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      O => \FSM_onehot_rCurr[1]_i_16_n_0\
    );
\FSM_onehot_rCurr[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      I2 => p_1_in70_in,
      I3 => iPushLeft,
      I4 => p_0_in78_in,
      I5 => \FSM_onehot_rCurr[1]_i_31_n_0\,
      O => \FSM_onehot_rCurr[1]_i_17_n_0\
    );
\FSM_onehot_rCurr[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111011101110"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => p_1_in70_in,
      I2 => p_1_in74_in,
      I3 => p_0_in76_in,
      I4 => p_0_in84_in,
      I5 => iPushDown,
      O => \FSM_onehot_rCurr[1]_i_18_n_0\
    );
\FSM_onehot_rCurr[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505050505050D00"
    )
        port map (
      I0 => iPushUp,
      I1 => \FSM_onehot_rCurr[7]_i_2_n_0\,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => p_0_in78_in,
      I4 => p_0_in76_in,
      I5 => p_1_in74_in,
      O => \FSM_onehot_rCurr[1]_i_19_n_0\
    );
\FSM_onehot_rCurr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005A000E"
    )
        port map (
      I0 => p_1_in,
      I1 => p_1_in70_in,
      I2 => iPushRight,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => p_1_in69_in,
      O => \FSM_onehot_rCurr[1]_i_2_n_0\
    );
\FSM_onehot_rCurr[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA30AA00AA00AA00"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_30_n_0\,
      I1 => p_0_in89_in,
      I2 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I3 => p_1_in74_in,
      I4 => \FSM_onehot_rCurr[1]_i_13_n_0\,
      I5 => \FSM_onehot_rCurr[7]_i_2_n_0\,
      O => \FSM_onehot_rCurr[1]_i_20_n_0\
    );
\FSM_onehot_rCurr[1]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushLeft,
      O => \FSM_onehot_rCurr[1]_i_21_n_0\
    );
\FSM_onehot_rCurr[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA0088F08800"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_30_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_32_n_0\,
      I2 => \FSM_onehot_rCurr[1]_i_33_n_0\,
      I3 => iPushDown,
      I4 => p_0_in89_in,
      I5 => \FSM_onehot_rCurr[1]_i_34_n_0\,
      O => \FSM_onehot_rCurr[1]_i_22_n_0\
    );
\FSM_onehot_rCurr[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000505000000C00"
    )
        port map (
      I0 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_35_n_0\,
      I2 => iPushDown,
      I3 => iPushRight,
      I4 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I5 => \FSM_onehot_rCurr[1]_i_36_n_0\,
      O => \FSM_onehot_rCurr[1]_i_23_n_0\
    );
\FSM_onehot_rCurr[1]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \r_oShapeY[9]_i_5_n_0\,
      I1 => iPushDown,
      I2 => p_1_in74_in,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => \r_oShapeY[7]_i_3_n_0\,
      O => \FSM_onehot_rCurr[1]_i_24_n_0\
    );
\FSM_onehot_rCurr[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_33_n_0\,
      I1 => p_0_in72_in,
      I2 => p_0_in66_in,
      I3 => iPushLeft,
      I4 => iPushDown,
      I5 => \r_oShapeY[7]_i_4_n_0\,
      O => \FSM_onehot_rCurr[1]_i_25_n_0\
    );
\FSM_onehot_rCurr[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202020200"
    )
        port map (
      I0 => \FSM_onehot_rCurr[2]_i_2_n_0\,
      I1 => iPushDown,
      I2 => iPushUp,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => p_0_in67_in,
      I5 => p_0_in80_in,
      O => \FSM_onehot_rCurr[1]_i_26_n_0\
    );
\FSM_onehot_rCurr[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      I2 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I3 => p_0_in67_in,
      I4 => iPushUp,
      I5 => iPushDown,
      O => \FSM_onehot_rCurr[1]_i_27_n_0\
    );
\FSM_onehot_rCurr[1]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00E0"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I2 => iPushDown,
      I3 => p_0_in84_in,
      I4 => p_0_in72_in,
      O => \FSM_onehot_rCurr[1]_i_28_n_0\
    );
\FSM_onehot_rCurr[1]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAFE"
    )
        port map (
      I0 => p_0_in80_in,
      I1 => p_0_in66_in,
      I2 => p_0_in89_in,
      I3 => p_0_in84_in,
      I4 => p_0_in76_in,
      O => \FSM_onehot_rCurr[1]_i_29_n_0\
    );
\FSM_onehot_rCurr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FE00"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_8_n_0\,
      I1 => p_0_in72_in,
      I2 => \FSM_onehot_rCurr[7]_i_3_n_0\,
      I3 => \FSM_onehot_rCurr[1]_i_9_n_0\,
      I4 => p_1_in,
      I5 => \FSM_onehot_rCurr[1]_i_10_n_0\,
      O => \FSM_onehot_rCurr[1]_i_3_n_0\
    );
\FSM_onehot_rCurr[1]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_1_in69_in,
      I1 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I2 => iPushRight,
      I3 => p_0_in72_in,
      O => \FSM_onehot_rCurr[1]_i_30_n_0\
    );
\FSM_onehot_rCurr[1]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5554"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => p_0_in67_in,
      I2 => p_0_in66_in,
      I3 => p_0_in89_in,
      I4 => p_1_in82_in,
      O => \FSM_onehot_rCurr[1]_i_31_n_0\
    );
\FSM_onehot_rCurr[1]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => p_0_in84_in,
      O => \FSM_onehot_rCurr[1]_i_32_n_0\
    );
\FSM_onehot_rCurr[1]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      O => \FSM_onehot_rCurr[1]_i_33_n_0\
    );
\FSM_onehot_rCurr[1]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_0_in80_in,
      O => \FSM_onehot_rCurr[1]_i_34_n_0\
    );
\FSM_onehot_rCurr[1]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_0_in89_in,
      I1 => p_0_in67_in,
      I2 => p_1_in82_in,
      O => \FSM_onehot_rCurr[1]_i_35_n_0\
    );
\FSM_onehot_rCurr[1]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_0_in78_in,
      O => \FSM_onehot_rCurr[1]_i_36_n_0\
    );
\FSM_onehot_rCurr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_11_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_12_n_0\,
      I2 => p_1_in82_in,
      I3 => \FSM_onehot_rCurr[1]_i_13_n_0\,
      I4 => \FSM_onehot_rCurr[1]_i_14_n_0\,
      I5 => \FSM_onehot_rCurr[1]_i_15_n_0\,
      O => \FSM_onehot_rCurr[1]_i_4_n_0\
    );
\FSM_onehot_rCurr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEFEEEFEEEE"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_16_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_17_n_0\,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => iPushLeft,
      I4 => \FSM_onehot_rCurr[4]_i_2_n_0\,
      I5 => \FSM_onehot_rCurr[1]_i_18_n_0\,
      O => \FSM_onehot_rCurr[1]_i_5_n_0\
    );
\FSM_onehot_rCurr[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEEEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_19_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_20_n_0\,
      I2 => \FSM_onehot_rCurr[1]_i_21_n_0\,
      I3 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I4 => p_0_in86_in,
      I5 => \FSM_onehot_rCurr[1]_i_9_n_0\,
      O => \FSM_onehot_rCurr[1]_i_6_n_0\
    );
\FSM_onehot_rCurr[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rCurr[1]_i_22_n_0\,
      I1 => \FSM_onehot_rCurr[1]_i_23_n_0\,
      I2 => \FSM_onehot_rCurr[1]_i_24_n_0\,
      I3 => \FSM_onehot_rCurr[1]_i_25_n_0\,
      I4 => \FSM_onehot_rCurr[1]_i_26_n_0\,
      I5 => \FSM_onehot_rCurr[1]_i_27_n_0\,
      O => \FSM_onehot_rCurr[1]_i_7_n_0\
    );
\FSM_onehot_rCurr[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEAA"
    )
        port map (
      I0 => p_0_in80_in,
      I1 => p_1_in82_in,
      I2 => r_oLeft_i_8_n_0,
      I3 => iPushUp,
      I4 => p_0_in78_in,
      I5 => p_1_in74_in,
      O => \FSM_onehot_rCurr[1]_i_8_n_0\
    );
\FSM_onehot_rCurr[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      I2 => p_1_in70_in,
      O => \FSM_onehot_rCurr[1]_i_9_n_0\
    );
\FSM_onehot_rCurr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088808080808080"
    )
        port map (
      I0 => \FSM_onehot_rCurr[15]_i_5_n_0\,
      I1 => \FSM_onehot_rCurr[2]_i_2_n_0\,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => \r_oShapeX[9]_i_10_n_0\,
      I4 => p_0_in66_in,
      I5 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      O => \FSM_onehot_rCurr[2]_i_1_n_0\
    );
\FSM_onehot_rCurr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iPushRight,
      I1 => iPushLeft,
      O => \FSM_onehot_rCurr[2]_i_2_n_0\
    );
\FSM_onehot_rCurr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F22200000000"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => iPushRight,
      I2 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      I3 => \FSM_onehot_rCurr[3]_i_2_n_0\,
      I4 => iPushUp,
      I5 => \FSM_onehot_rCurr[7]_i_2_n_0\,
      O => \FSM_onehot_rCurr[3]_i_1_n_0\
    );
\FSM_onehot_rCurr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => p_0_in89_in,
      I1 => p_0_in67_in,
      I2 => iPushRight,
      I3 => p_0_in66_in,
      I4 => p_0_in84_in,
      I5 => p_0_in86_in,
      O => \FSM_onehot_rCurr[3]_i_2_n_0\
    );
\FSM_onehot_rCurr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AE0000"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I1 => p_1_in70_in,
      I2 => \FSM_onehot_rCurr[4]_i_2_n_0\,
      I3 => iPushLeft,
      I4 => iPushRight,
      I5 => \FSM_onehot_rCurr[10]_i_2_n_0\,
      O => \FSM_onehot_rCurr[4]_i_1_n_0\
    );
\FSM_onehot_rCurr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => p_1_in69_in,
      O => \FSM_onehot_rCurr[4]_i_2_n_0\
    );
\FSM_onehot_rCurr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => \FSM_onehot_rCurr[10]_i_2_n_0\,
      I1 => iPushRight,
      I2 => iPushLeft,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => p_0_in72_in,
      I5 => \FSM_onehot_rCurr[5]_i_2_n_0\,
      O => \FSM_onehot_rCurr[5]_i_1_n_0\
    );
\FSM_onehot_rCurr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_1_in69_in,
      I1 => p_1_in,
      I2 => p_1_in70_in,
      O => \FSM_onehot_rCurr[5]_i_2_n_0\
    );
\FSM_onehot_rCurr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800088008000"
    )
        port map (
      I0 => iPushUp,
      I1 => \FSM_onehot_rCurr[7]_i_2_n_0\,
      I2 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I3 => iPushRight,
      I4 => p_1_in74_in,
      I5 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      O => \FSM_onehot_rCurr[6]_i_1_n_0\
    );
\FSM_onehot_rCurr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008080800"
    )
        port map (
      I0 => \FSM_onehot_rCurr[7]_i_2_n_0\,
      I1 => iPushUp,
      I2 => iPushRight,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => \FSM_onehot_rCurr[7]_i_3_n_0\,
      I5 => \FSM_onehot_rCurr[13]_i_3_n_0\,
      O => \FSM_onehot_rCurr[7]_i_1_n_0\
    );
\FSM_onehot_rCurr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iPushLeft,
      I1 => iPushDown,
      O => \FSM_onehot_rCurr[7]_i_2_n_0\
    );
\FSM_onehot_rCurr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_1_in74_in,
      O => \FSM_onehot_rCurr[7]_i_3_n_0\
    );
\FSM_onehot_rCurr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000200020002"
    )
        port map (
      I0 => \FSM_onehot_rCurr[13]_i_2_n_0\,
      I1 => iPushLeft,
      I2 => iPushDown,
      I3 => iPushUp,
      I4 => \FSM_onehot_rCurr[8]_i_2_n_0\,
      I5 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      O => \FSM_onehot_rCurr[8]_i_1_n_0\
    );
\FSM_onehot_rCurr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => iPushRight,
      I1 => iPushLeft,
      I2 => p_0_in67_in,
      I3 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I4 => p_0_in89_in,
      I5 => \r_oShapeY[9]_i_5_n_0\,
      O => \FSM_onehot_rCurr[8]_i_2_n_0\
    );
\FSM_onehot_rCurr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000080000000"
    )
        port map (
      I0 => iPushDown,
      I1 => iPushUp,
      I2 => iPushLeft,
      I3 => \FSM_onehot_rCurr_reg_n_0_[1]\,
      I4 => iPushRight,
      I5 => p_1_in,
      O => \FSM_onehot_rCurr[9]_i_1_n_0\
    );
\FSM_onehot_rCurr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[0]_i_1_n_0\,
      Q => p_0_in89_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[10]_i_1_n_0\,
      Q => p_1_in69_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[11]_i_1_n_0\,
      Q => p_0_in78_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[12]_i_1_n_0\,
      Q => p_0_in80_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[13]_i_1_n_0\,
      Q => p_1_in82_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[14]_i_1_n_0\,
      Q => p_0_in84_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[15]_i_1_n_0\,
      Q => p_0_in86_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[1]_i_1_n_0\,
      Q => \FSM_onehot_rCurr_reg_n_0_[1]\,
      S => iRst
    );
\FSM_onehot_rCurr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[2]_i_1_n_0\,
      Q => p_0_in66_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[3]_i_1_n_0\,
      Q => p_0_in67_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[4]_i_1_n_0\,
      Q => p_1_in70_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[5]_i_1_n_0\,
      Q => p_0_in72_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[6]_i_1_n_0\,
      Q => p_1_in74_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[7]_i_1_n_0\,
      Q => p_0_in76_in,
      R => iRst
    );
\FSM_onehot_rCurr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[8]_i_1_n_0\,
      Q => \FSM_onehot_rCurr_reg_n_0_[8]\,
      R => iRst
    );
\FSM_onehot_rCurr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurr[9]_i_1_n_0\,
      Q => p_1_in,
      R => iRst
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000AAAA0000"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(6),
      I2 => \i__carry_i_9_n_0\,
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \^r_oshapesize_reg[9]_0\(9),
      I5 => \^r_oshapesize_reg[9]_0\(7),
      O => r_oShapeX2(31)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AB"
    )
        port map (
      I0 => \i__carry__0_i_7_n_0\,
      I1 => \i__carry__0_i_8_n_0\,
      I2 => \^q\(8),
      I3 => \^q\(9),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1171"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(9),
      I1 => \r_oShapeX[9]_i_12_n_0\,
      I2 => \i__carry__0_i_7__0_n_0\,
      I3 => \^r_oshapex_reg[9]_0\(8),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \i__carry__0_i_7_n_0\,
      I1 => \^q\(9),
      I2 => \i__carry__0_i_8_n_0\,
      I3 => \^q\(8),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4182"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(9),
      I1 => \^r_oshapex_reg[9]_0\(8),
      I2 => \i__carry__0_i_7__0_n_0\,
      I3 => \r_oShapeX[9]_i_12_n_0\,
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(7),
      I1 => \^r_oshapesize_reg[9]_0\(6),
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \i__carry_i_9_n_0\,
      I4 => \^r_oshapesize_reg[9]_0\(8),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^r_oshapesize_reg[9]_0\(5),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(7),
      I4 => \^r_oshapesize_reg[9]_0\(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      I2 => \^r_oshapesize_reg[9]_0\(6),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40001555C015557F"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^r_oshapesize_reg[9]_0\(5),
      I2 => \i__carry_i_9_n_0\,
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^q\(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(3),
      I1 => \^r_oshapesize_reg[9]_0\(1),
      I2 => \^r_oshapesize_reg[9]_0\(0),
      I3 => \^r_oshapesize_reg[9]_0\(2),
      I4 => \^r_oshapesize_reg[9]_0\(4),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55540001777C1115"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(7),
      I1 => \^r_oshapesize_reg[9]_0\(6),
      I2 => \i__carry_i_9_n_0\,
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapex_reg[9]_0\(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"044F"
    )
        port map (
      I0 => \^q\(4),
      I1 => \i__carry_i_10_n_0\,
      I2 => \r_oShapeX[5]_i_4_n_0\,
      I3 => \^q\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(5),
      I1 => \r_oShapeX[5]_i_4_n_0\,
      I2 => \i__carry_i_10_n_0\,
      I3 => \^r_oshapex_reg[9]_0\(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050505171717170A"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(3),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^r_oshapesize_reg[9]_0\(1),
      I4 => \^r_oshapesize_reg[9]_0\(0),
      I5 => \^r_oshapesize_reg[9]_0\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505051717171750"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(3),
      I1 => \^r_oshapex_reg[9]_0\(2),
      I2 => \^r_oshapesize_reg[9]_0\(3),
      I3 => \^r_oshapesize_reg[9]_0\(1),
      I4 => \^r_oshapesize_reg[9]_0\(0),
      I5 => \^r_oshapesize_reg[9]_0\(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1370"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(0),
      I1 => \^r_oshapex_reg[9]_0\(1),
      I2 => \^r_oshapesize_reg[9]_0\(0),
      I3 => \^r_oshapesize_reg[9]_0\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1370"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^r_oshapesize_reg[9]_0\(0),
      I3 => \^r_oshapesize_reg[9]_0\(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8412121212484848"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^r_oshapesize_reg[9]_0\(7),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2121218484848412"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(7),
      I1 => \^r_oshapex_reg[9]_0\(6),
      I2 => \^r_oshapesize_reg[9]_0\(7),
      I3 => \^r_oshapesize_reg[9]_0\(5),
      I4 => \i__carry_i_9_n_0\,
      I5 => \^r_oshapesize_reg[9]_0\(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2184"
    )
        port map (
      I0 => \i__carry_i_10_n_0\,
      I1 => \r_oShapeX[5]_i_4_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \i__carry_i_10_n_0\,
      I1 => \r_oShapeX[5]_i_4_n_0\,
      I2 => \^r_oshapex_reg[9]_0\(5),
      I3 => \^r_oshapex_reg[9]_0\(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0056560001A8A801"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(2),
      I1 => \^r_oshapesize_reg[9]_0\(0),
      I2 => \^r_oshapesize_reg[9]_0\(1),
      I3 => \^r_oshapesize_reg[9]_0\(3),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0056560001A8A801"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(2),
      I1 => \^r_oshapesize_reg[9]_0\(0),
      I2 => \^r_oshapesize_reg[9]_0\(1),
      I3 => \^r_oshapesize_reg[9]_0\(3),
      I4 => \^r_oshapex_reg[9]_0\(3),
      I5 => \^r_oshapex_reg[9]_0\(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2841"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(0),
      I1 => \^r_oshapesize_reg[9]_0\(1),
      I2 => \^r_oshapex_reg[9]_0\(1),
      I3 => \^r_oshapex_reg[9]_0\(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2841"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(0),
      I1 => \^r_oshapesize_reg[9]_0\(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(3),
      I1 => \^r_oshapesize_reg[9]_0\(1),
      I2 => \^r_oshapesize_reg[9]_0\(0),
      I3 => \^r_oshapesize_reg[9]_0\(2),
      I4 => \^r_oshapesize_reg[9]_0\(4),
      O => \i__carry_i_9_n_0\
    );
r_oLEDDown_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => \r_oShapeX[9]_i_6_n_0\,
      I2 => p_0_in89_in,
      I3 => p_0_in80_in,
      I4 => p_0_in76_in,
      I5 => p_0_in78_in,
      O => r_oLEDDown_i_4_n_0
    );
r_oLEDDown_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => timer_inst1_n_53,
      Q => \^oleddown\,
      R => p_1_in0
    );
r_oLEDLeft_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0015FFFFFFEA"
    )
        port map (
      I0 => timer_inst1_n_19,
      I1 => timer_inst1_n_20,
      I2 => r_oLEDLeft_i_4_n_0,
      I3 => timer_inst1_n_18,
      I4 => r_oLEDLeft37_out,
      I5 => \^oledleft\,
      O => r_oLEDLeft_i_1_n_0
    );
r_oLEDLeft_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_1_in82_in,
      I1 => p_1_in74_in,
      I2 => p_1_in70_in,
      I3 => p_1_in,
      I4 => p_1_in69_in,
      O => r_oLEDLeft_i_10_n_0
    );
r_oLEDLeft_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF000E"
    )
        port map (
      I0 => p_1_in,
      I1 => p_1_in69_in,
      I2 => p_1_in70_in,
      I3 => p_0_in72_in,
      I4 => p_1_in74_in,
      O => r_oLEDLeft_i_11_n_0
    );
r_oLEDLeft_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => p_0_in66_in,
      I2 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      O => r_oLEDLeft_i_4_n_0
    );
r_oLEDLeft_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in80_in,
      O => r_oLEDLeft_i_8_n_0
    );
r_oLEDLeft_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => r_oLEDLeft_i_1_n_0,
      Q => \^oledleft\,
      R => p_1_in0
    );
r_oLEDRight_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFE"
    )
        port map (
      I0 => timer_inst1_n_42,
      I1 => timer_inst1_n_41,
      I2 => timer_inst1_n_16,
      I3 => timer_inst1_n_17,
      I4 => r_oLEDRight46_out,
      I5 => \^oledright\,
      O => r_oLEDRight_i_1_n_0
    );
r_oLEDRight_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => p_0_in67_in,
      I2 => p_0_in66_in,
      O => r_oLEDRight_i_10_n_0
    );
r_oLEDRight_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => p_0_in66_in,
      I2 => p_0_in84_in,
      O => r_oLEDRight_i_12_n_0
    );
r_oLEDRight_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_1_in69_in,
      I1 => p_1_in,
      I2 => p_1_in70_in,
      O => r_oLEDRight_i_13_n_0
    );
r_oLEDRight_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => p_0_in66_in,
      I2 => p_0_in78_in,
      I3 => p_0_in84_in,
      O => r_oLEDRight_i_7_n_0
    );
r_oLEDRight_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11110100"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_0_in80_in,
      I2 => p_0_in72_in,
      I3 => r_oLEDRight_i_13_n_0,
      I4 => p_1_in74_in,
      I5 => p_1_in82_in,
      O => r_oLEDRight_i_9_n_0
    );
r_oLEDRight_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => r_oLEDRight_i_1_n_0,
      Q => \^oledright\,
      R => p_1_in0
    );
r_oLEDUp_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_1_in69_in,
      I2 => p_1_in,
      I3 => p_1_in70_in,
      I4 => p_1_in82_in,
      O => r_oLEDUp_i_4_n_0
    );
r_oLEDUp_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => timer_inst1_n_54,
      Q => \^oledup\,
      R => p_1_in0
    );
r_oLeft_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I2 => iRst,
      I3 => iGameRst,
      O => r_oLeft_i_3_n_0
    );
r_oLeft_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I1 => p_0_in66_in,
      I2 => iRst,
      I3 => iGameRst,
      O => r_oLeft_i_5_n_0
    );
r_oLeft_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in89_in,
      I1 => p_0_in67_in,
      I2 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I3 => p_0_in66_in,
      I4 => p_0_in84_in,
      I5 => p_0_in86_in,
      O => r_oLeft_i_8_n_0
    );
r_oLeft_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => timer_inst1_n_15,
      Q => \^oleft\,
      R => '0'
    );
r_oRight_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in67_in,
      O => r_oRight_i_3_n_0
    );
r_oRight_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in74_in,
      I1 => p_1_in82_in,
      O => r_oRight_i_4_n_0
    );
r_oRight_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => timer_inst1_n_14,
      Q => \^oright\,
      R => '0'
    );
\r_oShapeSize[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(0),
      O => \r_oShapeSize[0]_i_1_n_0\
    );
\r_oShapeSize[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(1),
      O => \r_oShapeSize[3]_i_2_n_0\
    );
\r_oShapeSize[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(3),
      I1 => \^r_oshapesize_reg[9]_0\(4),
      O => \r_oShapeSize[3]_i_3_n_0\
    );
\r_oShapeSize[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(2),
      I1 => \^r_oshapesize_reg[9]_0\(3),
      O => \r_oShapeSize[3]_i_4_n_0\
    );
\r_oShapeSize[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(1),
      I1 => \^r_oshapesize_reg[9]_0\(2),
      O => \r_oShapeSize[3]_i_5_n_0\
    );
\r_oShapeSize[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timer_inst1_n_51,
      I1 => timer_inst1_n_11,
      O => \r_oShapeSize[5]_i_1_n_0\
    );
\r_oShapeSize[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(7),
      I1 => \^r_oshapesize_reg[9]_0\(8),
      O => \r_oShapeSize[7]_i_2_n_0\
    );
\r_oShapeSize[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(6),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      O => \r_oShapeSize[7]_i_3_n_0\
    );
\r_oShapeSize[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(5),
      I1 => \^r_oshapesize_reg[9]_0\(6),
      O => \r_oShapeSize[7]_i_4_n_0\
    );
\r_oShapeSize[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(4),
      I1 => \^r_oshapesize_reg[9]_0\(5),
      O => \r_oShapeSize[7]_i_5_n_0\
    );
\r_oShapeSize[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAFEAA"
    )
        port map (
      I0 => timer_inst1_n_37,
      I1 => \r_oShapeSize[8]_i_3_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => timer_inst1_n_36,
      I4 => \^r_oshapesize_reg[9]_0\(4),
      I5 => timer_inst1_n_11,
      O => \r_oShapeSize[8]_i_1_n_0\
    );
\r_oShapeSize[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timer_inst1_n_50,
      I1 => timer_inst1_n_11,
      O => \r_oShapeSize[8]_i_2_n_0\
    );
\r_oShapeSize[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(6),
      I1 => \^r_oshapesize_reg[9]_0\(7),
      O => \r_oShapeSize[8]_i_3_n_0\
    );
\r_oShapeSize[9]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \^r_oshapesize_reg[9]_0\(9),
      O => \r_oShapeSize[9]_i_7_n_0\
    );
\r_oShapeSize[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(5),
      I1 => \^r_oshapesize_reg[9]_0\(3),
      I2 => \^r_oshapesize_reg[9]_0\(2),
      I3 => \^r_oshapesize_reg[9]_0\(4),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(6),
      O => \r_oShapeSize[9]_i_8_n_0\
    );
\r_oShapeSize[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \r_oShapeY[7]_i_4_n_0\,
      I1 => \r_oShapeY[9]_i_5_n_0\,
      I2 => p_0_in72_in,
      I3 => p_1_in74_in,
      I4 => p_1_in82_in,
      I5 => \r_oShapeY[7]_i_3_n_0\,
      O => \r_oShapeSize[9]_i_9_n_0\
    );
\r_oShapeSize_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => \r_oShapeSize[0]_i_1_n_0\,
      Q => \^r_oshapesize_reg[9]_0\(0),
      R => timer_inst1_n_33
    );
\r_oShapeSize_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeSize[8]_i_1_n_0\,
      D => timer_inst1_n_10,
      Q => \^r_oshapesize_reg[9]_0\(1),
      S => p_1_in0
    );
\r_oShapeSize_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => timer_inst1_n_49,
      Q => \^r_oshapesize_reg[9]_0\(2),
      S => timer_inst1_n_33
    );
\r_oShapeSize_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => timer_inst1_n_48,
      Q => \^r_oshapesize_reg[9]_0\(3),
      S => timer_inst1_n_33
    );
\r_oShapeSize_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeSize[8]_i_1_n_0\,
      D => timer_inst1_n_12,
      Q => \^r_oshapesize_reg[9]_0\(4),
      S => p_1_in0
    );
\r_oShapeSize_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \r_oShapeSize[8]_i_1_n_0\,
      D => \r_oShapeSize[5]_i_1_n_0\,
      Q => \^r_oshapesize_reg[9]_0\(5),
      R => p_1_in0
    );
\r_oShapeSize_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => timer_inst1_n_47,
      Q => \^r_oshapesize_reg[9]_0\(6),
      R => timer_inst1_n_33
    );
\r_oShapeSize_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => timer_inst1_n_46,
      Q => \^r_oshapesize_reg[9]_0\(7),
      R => timer_inst1_n_33
    );
\r_oShapeSize_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \r_oShapeSize[8]_i_1_n_0\,
      D => \r_oShapeSize[8]_i_2_n_0\,
      Q => \^r_oshapesize_reg[9]_0\(8),
      R => p_1_in0
    );
\r_oShapeSize_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => r_oShapeSize,
      D => timer_inst1_n_45,
      Q => \^r_oshapesize_reg[9]_0\(9),
      R => timer_inst1_n_33
    );
\r_oShapeX2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_oShapeX2_inferred__0/i__carry_n_0\,
      CO(2) => \r_oShapeX2_inferred__0/i__carry_n_1\,
      CO(1) => \r_oShapeX2_inferred__0/i__carry_n_2\,
      CO(0) => \r_oShapeX2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\r_oShapeX2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__0/i__carry_n_0\,
      CO(3) => \r_oShapeX2_inferred__0/i__carry__0_n_0\,
      CO(2) => \r_oShapeX2_inferred__0/i__carry__0_n_1\,
      CO(1) => \r_oShapeX2_inferred__0/i__carry__0_n_2\,
      CO(0) => \r_oShapeX2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => r_oShapeX2(31),
      DI(2) => r_oShapeX2(31),
      DI(1) => r_oShapeX2(31),
      DI(0) => \i__carry__0_i_2__0_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_3_n_0\,
      S(2) => \i__carry__0_i_4_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6__0_n_0\
    );
\r_oShapeX2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__0/i__carry__0_n_0\,
      CO(3) => \r_oShapeX2_inferred__0/i__carry__1_n_0\,
      CO(2) => \r_oShapeX2_inferred__0/i__carry__1_n_1\,
      CO(1) => \r_oShapeX2_inferred__0/i__carry__1_n_2\,
      CO(0) => \r_oShapeX2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => r_oShapeX2(31),
      DI(2) => r_oShapeX2(31),
      DI(1) => r_oShapeX2(31),
      DI(0) => r_oShapeX2(31),
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\r_oShapeX2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__0/i__carry__1_n_0\,
      CO(3) => r_oShapeX260_in,
      CO(2) => \r_oShapeX2_inferred__0/i__carry__2_n_1\,
      CO(1) => \r_oShapeX2_inferred__0/i__carry__2_n_2\,
      CO(0) => \r_oShapeX2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => r_oShapeX2(31),
      DI(2) => r_oShapeX2(31),
      DI(1) => r_oShapeX2(31),
      DI(0) => r_oShapeX2(31),
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\r_oShapeX2_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_oShapeX2_inferred__1/i__carry_n_0\,
      CO(2) => \r_oShapeX2_inferred__1/i__carry_n_1\,
      CO(1) => \r_oShapeX2_inferred__1/i__carry_n_2\,
      CO(0) => \r_oShapeX2_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\r_oShapeX2_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__1/i__carry_n_0\,
      CO(3) => \r_oShapeX2_inferred__1/i__carry__0_n_0\,
      CO(2) => \r_oShapeX2_inferred__1/i__carry__0_n_1\,
      CO(1) => \r_oShapeX2_inferred__1/i__carry__0_n_2\,
      CO(0) => \r_oShapeX2_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_1__0_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_3__0_n_0\,
      S(2) => \i__carry__0_i_4__0_n_0\,
      S(1) => \i__carry__0_i_5__0_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\r_oShapeX2_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__1/i__carry__0_n_0\,
      CO(3) => \r_oShapeX2_inferred__1/i__carry__1_n_0\,
      CO(2) => \r_oShapeX2_inferred__1/i__carry__1_n_1\,
      CO(1) => \r_oShapeX2_inferred__1/i__carry__1_n_2\,
      CO(0) => \r_oShapeX2_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_1__0_n_0\,
      DI(0) => \i__carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\r_oShapeX2_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_oShapeX2_inferred__1/i__carry__1_n_0\,
      CO(3) => r_oShapeX255_in,
      CO(2) => \r_oShapeX2_inferred__1/i__carry__2_n_1\,
      CO(1) => \r_oShapeX2_inferred__1/i__carry__2_n_2\,
      CO(0) => \r_oShapeX2_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_1__0_n_0\,
      DI(0) => \i__carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_r_oShapeX2_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\r_oShapeX[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFCAA"
    )
        port map (
      I0 => r_oShapeX260_in,
      I1 => \r_oShapeX[0]_i_4_n_0\,
      I2 => \^r_oshapex_reg[9]_0\(1),
      I3 => p_0_in67_in,
      I4 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I5 => \^r_oshapex_reg[9]_0\(0),
      O => \r_oShapeX[0]_i_2_n_0\
    );
\r_oShapeX[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_oShapeX[8]_i_5_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(9),
      I2 => \^r_oshapex_reg[9]_0\(8),
      O => \r_oShapeX[0]_i_4_n_0\
    );
\r_oShapeX[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(0),
      I1 => \^r_oshapesize_reg[9]_0\(1),
      O => \r_oShapeX[1]_i_2_n_0\
    );
\r_oShapeX[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000444500000000"
    )
        port map (
      I0 => r_oShapeX260_in,
      I1 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I2 => \r_oShapeX[9]_i_21_n_0\,
      I3 => p_0_in67_in,
      I4 => timer_inst1_n_13,
      I5 => \r_oShapeX[2]_i_3_n_0\,
      O => \r_oShapeX[2]_i_2_n_0\
    );
\r_oShapeX[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(1),
      I1 => \^r_oshapesize_reg[9]_0\(0),
      I2 => \^r_oshapesize_reg[9]_0\(2),
      O => \r_oShapeX[2]_i_3_n_0\
    );
\r_oShapeX[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(2),
      I1 => \^r_oshapesize_reg[9]_0\(0),
      I2 => \^r_oshapesize_reg[9]_0\(1),
      I3 => \^r_oshapesize_reg[9]_0\(3),
      O => \r_oShapeX[3]_i_2_n_0\
    );
\r_oShapeX[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(2),
      I1 => \^r_oshapex_reg[9]_0\(0),
      I2 => \^r_oshapex_reg[9]_0\(1),
      I3 => \^r_oshapex_reg[9]_0\(3),
      O => \r_oShapeX[3]_i_3_n_0\
    );
\r_oShapeX[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(2),
      I1 => \^r_oshapex_reg[9]_0\(0),
      I2 => \^r_oshapex_reg[9]_0\(1),
      I3 => \^r_oshapex_reg[9]_0\(3),
      O => \r_oShapeX[3]_i_4_n_0\
    );
\r_oShapeX[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(2),
      I1 => \^r_oshapex_reg[9]_0\(3),
      O => \r_oShapeX[4]_i_2_n_0\
    );
\r_oShapeX[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(0),
      I1 => \^r_oshapex_reg[9]_0\(1),
      I2 => \^r_oshapex_reg[9]_0\(3),
      I3 => \^r_oshapex_reg[9]_0\(2),
      I4 => \^r_oshapex_reg[9]_0\(4),
      I5 => \^r_oshapex_reg[9]_0\(5),
      O => \r_oShapeX[5]_i_2_n_0\
    );
\r_oShapeX[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080008000800"
    )
        port map (
      I0 => r_oShapeX260_in,
      I1 => \r_oShapeX[8]_i_10_n_0\,
      I2 => timer_inst1_n_13,
      I3 => \^r_oshapex_reg[9]_0\(5),
      I4 => \r_oShapeX[5]_i_5_n_0\,
      I5 => \^r_oshapex_reg[9]_0\(4),
      O => \r_oShapeX[5]_i_3_n_0\
    );
\r_oShapeX[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(4),
      I1 => \^r_oshapesize_reg[9]_0\(2),
      I2 => \^r_oshapesize_reg[9]_0\(0),
      I3 => \^r_oshapesize_reg[9]_0\(1),
      I4 => \^r_oshapesize_reg[9]_0\(3),
      I5 => \^r_oshapesize_reg[9]_0\(5),
      O => \r_oShapeX[5]_i_4_n_0\
    );
\r_oShapeX[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(3),
      I1 => \^r_oshapex_reg[9]_0\(2),
      I2 => \^r_oshapex_reg[9]_0\(1),
      I3 => \^r_oshapex_reg[9]_0\(0),
      O => \r_oShapeX[5]_i_5_n_0\
    );
\r_oShapeX[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(5),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(6),
      O => \r_oShapeX[6]_i_2_n_0\
    );
\r_oShapeX[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_oShapeX[9]_i_22_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(6),
      O => \r_oShapeX[6]_i_3_n_0\
    );
\r_oShapeX[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \r_oShapeX[8]_i_6_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(5),
      I2 => \^r_oshapex_reg[9]_0\(4),
      I3 => \^r_oshapex_reg[9]_0\(3),
      I4 => \^r_oshapex_reg[9]_0\(2),
      I5 => \^r_oshapex_reg[9]_0\(6),
      O => \r_oShapeX[6]_i_4_n_0\
    );
\r_oShapeX[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(6),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(7),
      O => \r_oShapeX[7]_i_2_n_0\
    );
\r_oShapeX[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(6),
      I1 => \r_oShapeX[9]_i_22_n_0\,
      I2 => \^r_oshapex_reg[9]_0\(7),
      O => \r_oShapeX[7]_i_3_n_0\
    );
\r_oShapeX[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(5),
      I1 => \^r_oshapex_reg[9]_0\(4),
      I2 => \r_oShapeX[4]_i_2_n_0\,
      I3 => \r_oShapeX[8]_i_6_n_0\,
      I4 => \^r_oshapex_reg[9]_0\(6),
      I5 => \^r_oshapex_reg[9]_0\(7),
      O => \r_oShapeX[7]_i_4_n_0\
    );
\r_oShapeX[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iGameRst,
      I1 => iRst,
      O => p_1_in0
    );
\r_oShapeX[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4544"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => p_0_in86_in,
      I2 => p_0_in84_in,
      I3 => p_0_in78_in,
      I4 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      O => \r_oShapeX[8]_i_10_n_0\
    );
\r_oShapeX[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timer_inst1_n_34,
      I1 => timer_inst1_n_6,
      O => \r_oShapeX[8]_i_2_n_0\
    );
\r_oShapeX[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(2),
      I1 => \^r_oshapex_reg[9]_0\(3),
      I2 => \^r_oshapex_reg[9]_0\(4),
      I3 => \^r_oshapex_reg[9]_0\(5),
      I4 => \^r_oshapex_reg[9]_0\(7),
      I5 => \^r_oshapex_reg[9]_0\(6),
      O => \r_oShapeX[8]_i_5_n_0\
    );
\r_oShapeX[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(0),
      I1 => \^r_oshapex_reg[9]_0\(1),
      O => \r_oShapeX[8]_i_6_n_0\
    );
\r_oShapeX[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in86_in,
      O => \r_oShapeX[8]_i_8_n_0\
    );
\r_oShapeX[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_oShapeX[9]_i_22_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(6),
      I2 => \^r_oshapex_reg[9]_0\(7),
      I3 => \^r_oshapex_reg[9]_0\(8),
      O => \r_oShapeX[8]_i_9_n_0\
    );
\r_oShapeX[9]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in84_in,
      I1 => p_0_in86_in,
      O => \r_oShapeX[9]_i_10_n_0\
    );
\r_oShapeX[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFEAAAA"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(8),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(6),
      I4 => \^r_oshapesize_reg[9]_0\(7),
      I5 => \^r_oshapesize_reg[9]_0\(9),
      O => \r_oShapeX[9]_i_12_n_0\
    );
\r_oShapeX[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_oShapeX[9]_i_22_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(8),
      I2 => \^r_oshapex_reg[9]_0\(7),
      I3 => \^r_oshapex_reg[9]_0\(6),
      I4 => \^r_oshapex_reg[9]_0\(9),
      O => \r_oShapeX[9]_i_14_n_0\
    );
\r_oShapeX[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \r_oShapeX[8]_i_5_n_0\,
      I1 => \^r_oshapex_reg[9]_0\(1),
      I2 => \^r_oshapex_reg[9]_0\(0),
      I3 => \^r_oshapex_reg[9]_0\(8),
      I4 => \^r_oshapex_reg[9]_0\(9),
      O => \r_oShapeX[9]_i_15_n_0\
    );
\r_oShapeX[9]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(8),
      I1 => \^r_oshapex_reg[9]_0\(9),
      I2 => \r_oShapeX[8]_i_5_n_0\,
      I3 => \^r_oshapex_reg[9]_0\(1),
      I4 => \^r_oshapex_reg[9]_0\(0),
      O => \r_oShapeX[9]_i_17_n_0\
    );
\r_oShapeX[9]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in84_in,
      I2 => p_0_in86_in,
      O => \r_oShapeX[9]_i_21_n_0\
    );
\r_oShapeX[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^r_oshapex_reg[9]_0\(5),
      I1 => \^r_oshapex_reg[9]_0\(4),
      I2 => \^r_oshapex_reg[9]_0\(0),
      I3 => \^r_oshapex_reg[9]_0\(1),
      I4 => \^r_oshapex_reg[9]_0\(2),
      I5 => \^r_oshapex_reg[9]_0\(3),
      O => \r_oShapeX[9]_i_22_n_0\
    );
\r_oShapeX[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in76_in,
      I2 => p_1_in82_in,
      I3 => p_0_in80_in,
      O => \r_oShapeX[9]_i_4_n_0\
    );
\r_oShapeX[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      O => \r_oShapeX[9]_i_6_n_0\
    );
\r_oShapeX[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => p_1_in82_in,
      I1 => p_0_in76_in,
      I2 => p_0_in78_in,
      I3 => p_0_in66_in,
      I4 => p_0_in89_in,
      O => \r_oShapeX[9]_i_7_n_0\
    );
\r_oShapeX[9]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in89_in,
      I1 => p_0_in66_in,
      O => \r_oShapeX[9]_i_9_n_0\
    );
\r_oShapeX_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeX[8]_i_2_n_0\,
      D => timer_inst1_n_9,
      Q => \^r_oshapex_reg[9]_0\(0),
      S => p_1_in0
    );
\r_oShapeX_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_32,
      Q => \^r_oshapex_reg[9]_0\(1),
      R => timer_inst1_n_39
    );
\r_oShapeX_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_31,
      Q => \^r_oshapex_reg[9]_0\(2),
      R => timer_inst1_n_39
    );
\r_oShapeX_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_30,
      Q => \^r_oshapex_reg[9]_0\(3),
      R => timer_inst1_n_39
    );
\r_oShapeX_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeX[8]_i_2_n_0\,
      D => timer_inst1_n_5,
      Q => \^r_oshapex_reg[9]_0\(4),
      S => p_1_in0
    );
\r_oShapeX_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeX[8]_i_2_n_0\,
      D => timer_inst1_n_7,
      Q => \^r_oshapex_reg[9]_0\(5),
      S => p_1_in0
    );
\r_oShapeX_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_29,
      Q => \^r_oshapex_reg[9]_0\(6),
      R => timer_inst1_n_39
    );
\r_oShapeX_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_28,
      Q => \^r_oshapex_reg[9]_0\(7),
      R => timer_inst1_n_39
    );
\r_oShapeX_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeX[8]_i_2_n_0\,
      D => timer_inst1_n_8,
      Q => \^r_oshapex_reg[9]_0\(8),
      S => p_1_in0
    );
\r_oShapeX_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_34,
      D => timer_inst1_n_27,
      Q => \^r_oshapex_reg[9]_0\(9),
      R => timer_inst1_n_39
    );
\r_oShapeY[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \r_oShapeY[1]_i_2_n_0\
    );
\r_oShapeY[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \r_oShapeY[2]_i_3_n_0\
    );
\r_oShapeY[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => r_oShapeY00_in(3)
    );
\r_oShapeY[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \r_oShapeY[4]_i_3_n_0\
    );
\r_oShapeY[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \r_oShapeY[5]_i_3_n_0\
    );
\r_oShapeY[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(5),
      O => r_oShapeY00_in(5)
    );
\r_oShapeY[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \r_oShapeY[6]_i_3_n_0\
    );
\r_oShapeY[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \r_oShapeY[6]_i_4_n_0\
    );
\r_oShapeY[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(5),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(6),
      O => \r_oShapeY[6]_i_5_n_0\
    );
\r_oShapeY[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000F0004"
    )
        port map (
      I0 => p_1_in82_in,
      I1 => \r_oShapeY[7]_i_3_n_0\,
      I2 => timer_inst1_n_13,
      I3 => \r_oShapeY[7]_i_4_n_0\,
      I4 => \r_oShapeY[9]_i_5_n_0\,
      I5 => timer_inst1_n_1,
      O => \r_oShapeY[7]_i_1_n_0\
    );
\r_oShapeY[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in76_in,
      I2 => p_0_in80_in,
      O => \r_oShapeY[7]_i_3_n_0\
    );
\r_oShapeY[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I1 => p_0_in67_in,
      I2 => p_0_in89_in,
      O => \r_oShapeY[7]_i_4_n_0\
    );
\r_oShapeY[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(6),
      I1 => \r_oShapeY[9]_i_8_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \r_oShapeY[7]_i_6_n_0\
    );
\r_oShapeY[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE00FE00FE00"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in84_in,
      I2 => p_0_in86_in,
      I3 => \^q\(7),
      I4 => \r_oShapeY[6]_i_4_n_0\,
      I5 => \^q\(6),
      O => \r_oShapeY[7]_i_7_n_0\
    );
\r_oShapeY[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_oshapesize_reg[9]_0\(6),
      I1 => \i__carry_i_9_n_0\,
      I2 => \^r_oshapesize_reg[9]_0\(5),
      I3 => \^r_oshapesize_reg[9]_0\(7),
      O => \r_oShapeY[7]_i_8_n_0\
    );
\r_oShapeY[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_oShapeY[6]_i_4_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      O => r_oShapeY00_in(8)
    );
\r_oShapeY[9]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_oShapeY[9]_i_7_n_0\,
      I1 => \^q\(9),
      I2 => \^q\(8),
      O => \r_oShapeY[9]_i_11_n_0\
    );
\r_oShapeY[9]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in76_in,
      I1 => p_0_in78_in,
      O => \r_oShapeY[9]_i_12_n_0\
    );
\r_oShapeY[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_oShapeY[9]_i_5_n_0\,
      I1 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I2 => p_0_in67_in,
      I3 => p_0_in89_in,
      I4 => p_1_in82_in,
      O => \r_oShapeY[9]_i_13_n_0\
    );
\r_oShapeY[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_oShapeY[6]_i_4_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(9),
      O => r_oShapeY00_in(9)
    );
\r_oShapeY[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => p_0_in84_in,
      I2 => p_0_in66_in,
      O => \r_oShapeY[9]_i_5_n_0\
    );
\r_oShapeY[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(6),
      O => \r_oShapeY[9]_i_7_n_0\
    );
\r_oShapeY[9]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \r_oShapeY[9]_i_8_n_0\
    );
\r_oShapeY_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeY[7]_i_1_n_0\,
      D => timer_inst1_n_0,
      Q => \^q\(0),
      S => p_1_in0
    );
\r_oShapeY_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(1),
      Q => \^q\(1),
      R => timer_inst1_n_40
    );
\r_oShapeY_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(2),
      Q => \^q\(2),
      R => timer_inst1_n_40
    );
\r_oShapeY_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(3),
      Q => \^q\(3),
      R => timer_inst1_n_40
    );
\r_oShapeY_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(4),
      Q => \^q\(4),
      R => timer_inst1_n_40
    );
\r_oShapeY_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeY[7]_i_1_n_0\,
      D => timer_inst1_n_2,
      Q => \^q\(5),
      S => p_1_in0
    );
\r_oShapeY_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeY[7]_i_1_n_0\,
      D => timer_inst1_n_3,
      Q => \^q\(6),
      S => p_1_in0
    );
\r_oShapeY_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => \r_oShapeY[7]_i_1_n_0\,
      D => timer_inst1_n_4,
      Q => \^q\(7),
      S => p_1_in0
    );
\r_oShapeY_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(8),
      Q => \^q\(8),
      R => timer_inst1_n_40
    );
\r_oShapeY_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => timer_inst1_n_38,
      D => p_2_in(9),
      Q => \^q\(9),
      R => timer_inst1_n_40
    );
r_oSpeedUp_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iPage(0),
      I1 => iPage(1),
      O => r_oSpeedUp_i_2_n_0
    );
r_oSpeedUp_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iRst,
      I1 => iGameRst,
      I2 => \FSM_onehot_rCurr_reg_n_0_[8]\,
      I3 => p_0_in67_in,
      O => r_oSpeedUp_i_3_n_0
    );
r_oSpeedUp_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => timer_inst1_n_52,
      Q => \^ospeedup\,
      R => '0'
    );
timer_inst1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
     port map (
      CO(0) => r_oShapeX255_in,
      D(5 downto 4) => p_2_in(9 downto 8),
      D(3 downto 0) => p_2_in(4 downto 1),
      DI(0) => \r_oShapeSize[3]_i_2_n_0\,
      E(0) => timer_inst1_n_34,
      \FSM_onehot_rCurr_reg[0]\ => timer_inst1_n_36,
      \FSM_onehot_rCurr_reg[0]_0\ => timer_inst1_n_42,
      \FSM_onehot_rCurr_reg[10]\ => timer_inst1_n_17,
      \FSM_onehot_rCurr_reg[12]\ => timer_inst1_n_1,
      \FSM_onehot_rCurr_reg[12]_0\ => timer_inst1_n_16,
      \FSM_onehot_rCurr_reg[12]_1\(0) => timer_inst1_n_38,
      \FSM_onehot_rCurr_reg[13]\ => timer_inst1_n_54,
      \FSM_onehot_rCurr_reg[14]\ => timer_inst1_n_6,
      \FSM_onehot_rCurr_reg[14]_0\(0) => timer_inst1_n_39,
      \FSM_onehot_rCurr_reg[2]\ => timer_inst1_n_52,
      \FSM_onehot_rCurr_reg[3]\ => timer_inst1_n_18,
      \FSM_onehot_rCurr_reg[3]_0\(5) => timer_inst1_n_27,
      \FSM_onehot_rCurr_reg[3]_0\(4) => timer_inst1_n_28,
      \FSM_onehot_rCurr_reg[3]_0\(3) => timer_inst1_n_29,
      \FSM_onehot_rCurr_reg[3]_0\(2) => timer_inst1_n_30,
      \FSM_onehot_rCurr_reg[3]_0\(1) => timer_inst1_n_31,
      \FSM_onehot_rCurr_reg[3]_0\(0) => timer_inst1_n_32,
      \FSM_onehot_rCurr_reg[4]\ => timer_inst1_n_19,
      \FSM_onehot_rCurr_reg[7]\ => timer_inst1_n_20,
      \FSM_onehot_rCurr_reg[8]\ => timer_inst1_n_7,
      \FSM_onehot_rCurr_reg[8]_0\ => timer_inst1_n_14,
      \FSM_onehot_rCurr_reg[8]_1\ => timer_inst1_n_41,
      O(1) => timer_inst1_n_50,
      O(0) => timer_inst1_n_51,
      Q(8 downto 5) => \^q\(9 downto 6),
      Q(4 downto 0) => \^q\(4 downto 0),
      S(2) => \r_oShapeSize[3]_i_3_n_0\,
      S(1) => \r_oShapeSize[3]_i_4_n_0\,
      S(0) => \r_oShapeSize[3]_i_5_n_0\,
      SR(0) => timer_inst1_n_33,
      iClk => iClk,
      iGameRst => iGameRst,
      iPage(1 downto 0) => iPage(1 downto 0),
      iRst => iRst,
      iRst_0(0) => timer_inst1_n_40,
      oLEDDown => \^oleddown\,
      oLEDUp => \^oledup\,
      oLeft => \^oleft\,
      oRight => \^oright\,
      oSpeedUp => \^ospeedup\,
      p_1_in0 => p_1_in0,
      \r_CntCurr_reg[3]_0\ => timer_inst1_n_13,
      r_oLEDDown_reg => timer_inst1_n_53,
      r_oLEDDown_reg_0 => \FSM_onehot_rCurr[5]_i_2_n_0\,
      r_oLEDDown_reg_1 => r_oLEDDown_i_4_n_0,
      r_oLEDLeft37_out => r_oLEDLeft37_out,
      r_oLEDLeft_i_3_0 => r_oLEDLeft_i_11_n_0,
      r_oLEDLeft_reg => r_oLEDLeft_i_8_n_0,
      r_oLEDLeft_reg_0 => r_oLEDLeft_i_10_n_0,
      r_oLEDRight46_out => r_oLEDRight46_out,
      r_oLEDRight_i_4_0 => r_oLEDRight_i_12_n_0,
      r_oLEDRight_reg => r_oLEDRight_i_7_n_0,
      r_oLEDRight_reg_0 => r_oLEDRight_i_9_n_0,
      r_oLEDRight_reg_1 => r_oLEDRight_i_10_n_0,
      r_oLEDUp_reg => \r_oShapeY[9]_i_5_n_0\,
      r_oLEDUp_reg_0 => \r_oShapeY[7]_i_4_n_0\,
      r_oLEDUp_reg_1 => \r_oShapeY[9]_i_13_n_0\,
      r_oLEDUp_reg_2 => \r_oShapeY[7]_i_3_n_0\,
      r_oLEDUp_reg_3 => r_oLEDUp_i_4_n_0,
      r_oLeft_reg => timer_inst1_n_15,
      r_oLeft_reg_0 => r_oLeft_i_3_n_0,
      r_oLeft_reg_1 => r_oLeft_i_5_n_0,
      r_oLeft_reg_2 => \FSM_onehot_rCurr[15]_i_3_n_0\,
      r_oLeft_reg_3 => r_oLeft_i_8_n_0,
      r_oRight_reg => r_oRight_i_3_n_0,
      r_oRight_reg_0 => r_oRight_i_4_n_0,
      \r_oShapeSize_reg[0]\ => timer_inst1_n_9,
      \r_oShapeSize_reg[0]_0\ => timer_inst1_n_10,
      \r_oShapeSize_reg[0]_1\ => timer_inst1_n_12,
      \r_oShapeSize_reg[0]_2\(9 downto 0) => \^r_oshapesize_reg[9]_0\(9 downto 0),
      \r_oShapeSize_reg[1]\ => \r_oShapeSize[9]_i_8_n_0\,
      \r_oShapeSize_reg[1]_0\ => \r_oShapeSize[9]_i_9_n_0\,
      \r_oShapeSize_reg[4]\(0) => r_oShapeSize,
      \r_oShapeSize_reg[7]\(4) => timer_inst1_n_45,
      \r_oShapeSize_reg[7]\(3) => timer_inst1_n_46,
      \r_oShapeSize_reg[7]\(2) => timer_inst1_n_47,
      \r_oShapeSize_reg[7]\(1) => timer_inst1_n_48,
      \r_oShapeSize_reg[7]\(0) => timer_inst1_n_49,
      \r_oShapeSize_reg[7]_0\(3) => \r_oShapeSize[7]_i_2_n_0\,
      \r_oShapeSize_reg[7]_0\(2) => \r_oShapeSize[7]_i_3_n_0\,
      \r_oShapeSize_reg[7]_0\(1) => \r_oShapeSize[7]_i_4_n_0\,
      \r_oShapeSize_reg[7]_0\(0) => \r_oShapeSize[7]_i_5_n_0\,
      \r_oShapeSize_reg[8]\ => timer_inst1_n_11,
      \r_oShapeSize_reg[8]_0\ => timer_inst1_n_37,
      \r_oShapeSize_reg[9]\(0) => \r_oShapeSize[9]_i_7_n_0\,
      \r_oShapeX_reg[0]\ => \r_oShapeX[0]_i_2_n_0\,
      \r_oShapeX_reg[0]_0\(14) => p_0_in86_in,
      \r_oShapeX_reg[0]_0\(13) => p_0_in84_in,
      \r_oShapeX_reg[0]_0\(12) => p_1_in82_in,
      \r_oShapeX_reg[0]_0\(11) => p_0_in80_in,
      \r_oShapeX_reg[0]_0\(10) => p_0_in78_in,
      \r_oShapeX_reg[0]_0\(9) => p_1_in69_in,
      \r_oShapeX_reg[0]_0\(8) => p_1_in,
      \r_oShapeX_reg[0]_0\(7) => \FSM_onehot_rCurr_reg_n_0_[8]\,
      \r_oShapeX_reg[0]_0\(6) => p_0_in76_in,
      \r_oShapeX_reg[0]_0\(5) => p_1_in74_in,
      \r_oShapeX_reg[0]_0\(4) => p_0_in72_in,
      \r_oShapeX_reg[0]_0\(3) => p_1_in70_in,
      \r_oShapeX_reg[0]_0\(2) => p_0_in67_in,
      \r_oShapeX_reg[0]_0\(1) => p_0_in66_in,
      \r_oShapeX_reg[0]_0\(0) => p_0_in89_in,
      \r_oShapeX_reg[1]\ => \r_oShapeX[9]_i_6_n_0\,
      \r_oShapeX_reg[1]_0\ => \r_oShapeX[9]_i_7_n_0\,
      \r_oShapeX_reg[1]_1\ => \r_oShapeX[9]_i_9_n_0\,
      \r_oShapeX_reg[1]_2\ => \r_oShapeX[9]_i_10_n_0\,
      \r_oShapeX_reg[2]\ => \r_oShapeX[2]_i_2_n_0\,
      \r_oShapeX_reg[3]\ => \r_oShapeX[3]_i_2_n_0\,
      \r_oShapeX_reg[3]_0\ => \r_oShapeX[3]_i_3_n_0\,
      \r_oShapeX_reg[3]_1\ => \r_oShapeX[3]_i_4_n_0\,
      \r_oShapeX_reg[4]\ => timer_inst1_n_5,
      \r_oShapeX_reg[4]_0\ => \r_oShapeX[8]_i_6_n_0\,
      \r_oShapeX_reg[4]_1\ => \r_oShapeX[4]_i_2_n_0\,
      \r_oShapeX_reg[4]_2\ => \r_oShapeX[5]_i_5_n_0\,
      \r_oShapeX_reg[4]_3\ => \r_oShapeX[8]_i_10_n_0\,
      \r_oShapeX_reg[4]_4\(0) => r_oShapeX260_in,
      \r_oShapeX_reg[4]_5\ => \r_oShapeX[8]_i_8_n_0\,
      \r_oShapeX_reg[5]\ => \r_oShapeX[5]_i_2_n_0\,
      \r_oShapeX_reg[5]_0\ => \r_oShapeX[5]_i_3_n_0\,
      \r_oShapeX_reg[5]_1\ => \r_oShapeX[5]_i_4_n_0\,
      \r_oShapeX_reg[6]\ => \r_oShapeX[6]_i_2_n_0\,
      \r_oShapeX_reg[6]_0\ => \r_oShapeX[6]_i_3_n_0\,
      \r_oShapeX_reg[6]_1\ => \r_oShapeX[6]_i_4_n_0\,
      \r_oShapeX_reg[7]\ => \r_oShapeX[7]_i_2_n_0\,
      \r_oShapeX_reg[7]_0\ => \r_oShapeX[7]_i_3_n_0\,
      \r_oShapeX_reg[7]_1\ => \r_oShapeX[7]_i_4_n_0\,
      \r_oShapeX_reg[8]\ => timer_inst1_n_8,
      \r_oShapeX_reg[8]_0\(4) => \^r_oshapex_reg[9]_0\(8),
      \r_oShapeX_reg[8]_0\(3) => \^r_oshapex_reg[9]_0\(4),
      \r_oShapeX_reg[8]_0\(2 downto 0) => \^r_oshapex_reg[9]_0\(2 downto 0),
      \r_oShapeX_reg[8]_1\ => \r_oShapeX[8]_i_5_n_0\,
      \r_oShapeX_reg[8]_2\ => \r_oShapeX[8]_i_9_n_0\,
      \r_oShapeX_reg[8]_3\ => \i__carry__0_i_7__0_n_0\,
      \r_oShapeX_reg[9]\ => \r_oShapeX[9]_i_12_n_0\,
      \r_oShapeX_reg[9]_0\ => \r_oShapeX[9]_i_14_n_0\,
      \r_oShapeX_reg[9]_1\ => \r_oShapeX[9]_i_15_n_0\,
      \r_oShapeX_reg[9]_2\ => \r_oShapeX[9]_i_21_n_0\,
      \r_oShapeX_reg[9]_3\ => \r_oShapeX[9]_i_17_n_0\,
      \r_oShapeX_reg[9]_4\ => \r_oShapeX[9]_i_4_n_0\,
      r_oShapeY00_in(3 downto 2) => r_oShapeY00_in(9 downto 8),
      r_oShapeY00_in(1) => r_oShapeY00_in(5),
      r_oShapeY00_in(0) => r_oShapeY00_in(3),
      \r_oShapeY_reg[0]\ => timer_inst1_n_0,
      \r_oShapeY_reg[0]_0\ => timer_inst1_n_2,
      \r_oShapeY_reg[0]_1\ => \r_oShapeY[9]_i_12_n_0\,
      \r_oShapeY_reg[1]\ => \r_oShapeX[1]_i_2_n_0\,
      \r_oShapeY_reg[1]_0\ => \r_oShapeY[1]_i_2_n_0\,
      \r_oShapeY_reg[2]\ => \r_oShapeY[2]_i_3_n_0\,
      \r_oShapeY_reg[2]_0\ => \r_oShapeX[2]_i_3_n_0\,
      \r_oShapeY_reg[4]\ => \r_oShapeY[9]_i_8_n_0\,
      \r_oShapeY_reg[4]_0\ => \r_oShapeY[4]_i_3_n_0\,
      \r_oShapeY_reg[4]_1\ => \i__carry_i_10_n_0\,
      \r_oShapeY_reg[5]\ => \r_oShapeY[5]_i_3_n_0\,
      \r_oShapeY_reg[6]\ => timer_inst1_n_3,
      \r_oShapeY_reg[6]_0\ => \r_oShapeY[6]_i_3_n_0\,
      \r_oShapeY_reg[6]_1\ => \r_oShapeY[6]_i_4_n_0\,
      \r_oShapeY_reg[6]_2\ => \r_oShapeY[6]_i_5_n_0\,
      \r_oShapeY_reg[7]\ => timer_inst1_n_4,
      \r_oShapeY_reg[7]_0\ => \r_oShapeY[7]_i_6_n_0\,
      \r_oShapeY_reg[7]_1\ => \r_oShapeY[7]_i_7_n_0\,
      \r_oShapeY_reg[7]_2\ => \r_oShapeY[7]_i_8_n_0\,
      \r_oShapeY_reg[8]\ => \r_oShapeY[9]_i_7_n_0\,
      \r_oShapeY_reg[8]_0\ => \i__carry__0_i_8_n_0\,
      \r_oShapeY_reg[9]\ => \r_oShapeY[9]_i_11_n_0\,
      \r_oShapeY_reg[9]_0\ => \i__carry__0_i_7_n_0\,
      r_oSpeedUp_reg => r_oSpeedUp_i_2_n_0,
      r_oSpeedUp_reg_0 => r_oSpeedUp_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_buttonCtrl_0_0,buttonCtrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "buttonCtrl,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl
     port map (
      Q(9 downto 0) => oShapeY(9 downto 0),
      iClk => iClk,
      iGameRst => iGameRst,
      iPage(1 downto 0) => iPage(1 downto 0),
      iPushDown => iPushDown,
      iPushLeft => iPushLeft,
      iPushRight => iPushRight,
      iPushUp => iPushUp,
      iRst => iRst,
      oLEDDown => oLEDDown,
      oLEDLeft => oLEDLeft,
      oLEDRight => oLEDRight,
      oLEDUp => oLEDUp,
      oLeft => oLeft,
      oRight => oRight,
      oSpeedUp => oSpeedUp,
      \r_oShapeSize_reg[9]_0\(9 downto 0) => oShapeSize(9 downto 0),
      \r_oShapeX_reg[9]_0\(9 downto 0) => oShapeX(9 downto 0)
    );
end STRUCTURE;
