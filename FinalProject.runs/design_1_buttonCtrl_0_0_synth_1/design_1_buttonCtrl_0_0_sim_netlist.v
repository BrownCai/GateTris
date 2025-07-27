// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Dec 10 18:18:14 2023
// Host        : WellDone running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_buttonCtrl_0_0_sim_netlist.v
// Design      : design_1_buttonCtrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl
   (Q,
    \r_oShapeX_reg[9]_0 ,
    \r_oShapeSize_reg[9]_0 ,
    oLEDLeft,
    oLEDRight,
    oRight,
    oLeft,
    oSpeedUp,
    oLEDDown,
    oLEDUp,
    iRst,
    iClk,
    iPage,
    iGameRst,
    iPushLeft,
    iPushRight,
    iPushDown,
    iPushUp);
  output [9:0]Q;
  output [9:0]\r_oShapeX_reg[9]_0 ;
  output [9:0]\r_oShapeSize_reg[9]_0 ;
  output oLEDLeft;
  output oLEDRight;
  output oRight;
  output oLeft;
  output oSpeedUp;
  output oLEDDown;
  output oLEDUp;
  input iRst;
  input iClk;
  input [1:0]iPage;
  input iGameRst;
  input iPushLeft;
  input iPushRight;
  input iPushDown;
  input iPushUp;

  wire \FSM_onehot_rCurr[0]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[0]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[10]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[10]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[11]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[11]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[11]_i_3_n_0 ;
  wire \FSM_onehot_rCurr[12]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[12]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[13]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[13]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[13]_i_3_n_0 ;
  wire \FSM_onehot_rCurr[13]_i_4_n_0 ;
  wire \FSM_onehot_rCurr[14]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[14]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[15]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[15]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[15]_i_3_n_0 ;
  wire \FSM_onehot_rCurr[15]_i_4_n_0 ;
  wire \FSM_onehot_rCurr[15]_i_5_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_10_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_11_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_12_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_13_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_14_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_15_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_16_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_17_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_18_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_19_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_20_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_21_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_22_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_23_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_24_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_25_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_26_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_27_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_28_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_29_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_30_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_31_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_32_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_33_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_34_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_35_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_36_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_3_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_4_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_5_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_6_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_7_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_8_n_0 ;
  wire \FSM_onehot_rCurr[1]_i_9_n_0 ;
  wire \FSM_onehot_rCurr[2]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[2]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[3]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[3]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[4]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[4]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[5]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[5]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[6]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[7]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[7]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[7]_i_3_n_0 ;
  wire \FSM_onehot_rCurr[8]_i_1_n_0 ;
  wire \FSM_onehot_rCurr[8]_i_2_n_0 ;
  wire \FSM_onehot_rCurr[9]_i_1_n_0 ;
  wire \FSM_onehot_rCurr_reg_n_0_[1] ;
  wire \FSM_onehot_rCurr_reg_n_0_[8] ;
  wire [9:0]Q;
  wire iClk;
  wire iGameRst;
  wire [1:0]iPage;
  wire iPushDown;
  wire iPushLeft;
  wire iPushRight;
  wire iPushUp;
  wire iRst;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire oLEDDown;
  wire oLEDLeft;
  wire oLEDRight;
  wire oLEDUp;
  wire oLeft;
  wire oRight;
  wire oSpeedUp;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in72_in;
  wire p_0_in76_in;
  wire p_0_in78_in;
  wire p_0_in80_in;
  wire p_0_in84_in;
  wire p_0_in86_in;
  wire p_0_in89_in;
  wire p_1_in;
  wire p_1_in0;
  wire p_1_in69_in;
  wire p_1_in70_in;
  wire p_1_in74_in;
  wire p_1_in82_in;
  wire [9:1]p_2_in;
  wire r_oLEDDown_i_4_n_0;
  wire r_oLEDLeft37_out;
  wire r_oLEDLeft_i_10_n_0;
  wire r_oLEDLeft_i_11_n_0;
  wire r_oLEDLeft_i_1_n_0;
  wire r_oLEDLeft_i_4_n_0;
  wire r_oLEDLeft_i_8_n_0;
  wire r_oLEDRight46_out;
  wire r_oLEDRight_i_10_n_0;
  wire r_oLEDRight_i_12_n_0;
  wire r_oLEDRight_i_13_n_0;
  wire r_oLEDRight_i_1_n_0;
  wire r_oLEDRight_i_7_n_0;
  wire r_oLEDRight_i_9_n_0;
  wire r_oLEDUp_i_4_n_0;
  wire r_oLeft_i_3_n_0;
  wire r_oLeft_i_5_n_0;
  wire r_oLeft_i_8_n_0;
  wire r_oRight_i_3_n_0;
  wire r_oRight_i_4_n_0;
  wire r_oShapeSize;
  wire \r_oShapeSize[0]_i_1_n_0 ;
  wire \r_oShapeSize[3]_i_2_n_0 ;
  wire \r_oShapeSize[3]_i_3_n_0 ;
  wire \r_oShapeSize[3]_i_4_n_0 ;
  wire \r_oShapeSize[3]_i_5_n_0 ;
  wire \r_oShapeSize[5]_i_1_n_0 ;
  wire \r_oShapeSize[7]_i_2_n_0 ;
  wire \r_oShapeSize[7]_i_3_n_0 ;
  wire \r_oShapeSize[7]_i_4_n_0 ;
  wire \r_oShapeSize[7]_i_5_n_0 ;
  wire \r_oShapeSize[8]_i_1_n_0 ;
  wire \r_oShapeSize[8]_i_2_n_0 ;
  wire \r_oShapeSize[8]_i_3_n_0 ;
  wire \r_oShapeSize[9]_i_7_n_0 ;
  wire \r_oShapeSize[9]_i_8_n_0 ;
  wire \r_oShapeSize[9]_i_9_n_0 ;
  wire [9:0]\r_oShapeSize_reg[9]_0 ;
  wire [31:31]r_oShapeX2;
  wire r_oShapeX255_in;
  wire r_oShapeX260_in;
  wire \r_oShapeX2_inferred__0/i__carry__0_n_0 ;
  wire \r_oShapeX2_inferred__0/i__carry__0_n_1 ;
  wire \r_oShapeX2_inferred__0/i__carry__0_n_2 ;
  wire \r_oShapeX2_inferred__0/i__carry__0_n_3 ;
  wire \r_oShapeX2_inferred__0/i__carry__1_n_0 ;
  wire \r_oShapeX2_inferred__0/i__carry__1_n_1 ;
  wire \r_oShapeX2_inferred__0/i__carry__1_n_2 ;
  wire \r_oShapeX2_inferred__0/i__carry__1_n_3 ;
  wire \r_oShapeX2_inferred__0/i__carry__2_n_1 ;
  wire \r_oShapeX2_inferred__0/i__carry__2_n_2 ;
  wire \r_oShapeX2_inferred__0/i__carry__2_n_3 ;
  wire \r_oShapeX2_inferred__0/i__carry_n_0 ;
  wire \r_oShapeX2_inferred__0/i__carry_n_1 ;
  wire \r_oShapeX2_inferred__0/i__carry_n_2 ;
  wire \r_oShapeX2_inferred__0/i__carry_n_3 ;
  wire \r_oShapeX2_inferred__1/i__carry__0_n_0 ;
  wire \r_oShapeX2_inferred__1/i__carry__0_n_1 ;
  wire \r_oShapeX2_inferred__1/i__carry__0_n_2 ;
  wire \r_oShapeX2_inferred__1/i__carry__0_n_3 ;
  wire \r_oShapeX2_inferred__1/i__carry__1_n_0 ;
  wire \r_oShapeX2_inferred__1/i__carry__1_n_1 ;
  wire \r_oShapeX2_inferred__1/i__carry__1_n_2 ;
  wire \r_oShapeX2_inferred__1/i__carry__1_n_3 ;
  wire \r_oShapeX2_inferred__1/i__carry__2_n_1 ;
  wire \r_oShapeX2_inferred__1/i__carry__2_n_2 ;
  wire \r_oShapeX2_inferred__1/i__carry__2_n_3 ;
  wire \r_oShapeX2_inferred__1/i__carry_n_0 ;
  wire \r_oShapeX2_inferred__1/i__carry_n_1 ;
  wire \r_oShapeX2_inferred__1/i__carry_n_2 ;
  wire \r_oShapeX2_inferred__1/i__carry_n_3 ;
  wire \r_oShapeX[0]_i_2_n_0 ;
  wire \r_oShapeX[0]_i_4_n_0 ;
  wire \r_oShapeX[1]_i_2_n_0 ;
  wire \r_oShapeX[2]_i_2_n_0 ;
  wire \r_oShapeX[2]_i_3_n_0 ;
  wire \r_oShapeX[3]_i_2_n_0 ;
  wire \r_oShapeX[3]_i_3_n_0 ;
  wire \r_oShapeX[3]_i_4_n_0 ;
  wire \r_oShapeX[4]_i_2_n_0 ;
  wire \r_oShapeX[5]_i_2_n_0 ;
  wire \r_oShapeX[5]_i_3_n_0 ;
  wire \r_oShapeX[5]_i_4_n_0 ;
  wire \r_oShapeX[5]_i_5_n_0 ;
  wire \r_oShapeX[6]_i_2_n_0 ;
  wire \r_oShapeX[6]_i_3_n_0 ;
  wire \r_oShapeX[6]_i_4_n_0 ;
  wire \r_oShapeX[7]_i_2_n_0 ;
  wire \r_oShapeX[7]_i_3_n_0 ;
  wire \r_oShapeX[7]_i_4_n_0 ;
  wire \r_oShapeX[8]_i_10_n_0 ;
  wire \r_oShapeX[8]_i_2_n_0 ;
  wire \r_oShapeX[8]_i_5_n_0 ;
  wire \r_oShapeX[8]_i_6_n_0 ;
  wire \r_oShapeX[8]_i_8_n_0 ;
  wire \r_oShapeX[8]_i_9_n_0 ;
  wire \r_oShapeX[9]_i_10_n_0 ;
  wire \r_oShapeX[9]_i_12_n_0 ;
  wire \r_oShapeX[9]_i_14_n_0 ;
  wire \r_oShapeX[9]_i_15_n_0 ;
  wire \r_oShapeX[9]_i_17_n_0 ;
  wire \r_oShapeX[9]_i_21_n_0 ;
  wire \r_oShapeX[9]_i_22_n_0 ;
  wire \r_oShapeX[9]_i_4_n_0 ;
  wire \r_oShapeX[9]_i_6_n_0 ;
  wire \r_oShapeX[9]_i_7_n_0 ;
  wire \r_oShapeX[9]_i_9_n_0 ;
  wire [9:0]\r_oShapeX_reg[9]_0 ;
  wire [9:3]r_oShapeY00_in;
  wire \r_oShapeY[1]_i_2_n_0 ;
  wire \r_oShapeY[2]_i_3_n_0 ;
  wire \r_oShapeY[4]_i_3_n_0 ;
  wire \r_oShapeY[5]_i_3_n_0 ;
  wire \r_oShapeY[6]_i_3_n_0 ;
  wire \r_oShapeY[6]_i_4_n_0 ;
  wire \r_oShapeY[6]_i_5_n_0 ;
  wire \r_oShapeY[7]_i_1_n_0 ;
  wire \r_oShapeY[7]_i_3_n_0 ;
  wire \r_oShapeY[7]_i_4_n_0 ;
  wire \r_oShapeY[7]_i_6_n_0 ;
  wire \r_oShapeY[7]_i_7_n_0 ;
  wire \r_oShapeY[7]_i_8_n_0 ;
  wire \r_oShapeY[9]_i_11_n_0 ;
  wire \r_oShapeY[9]_i_12_n_0 ;
  wire \r_oShapeY[9]_i_13_n_0 ;
  wire \r_oShapeY[9]_i_5_n_0 ;
  wire \r_oShapeY[9]_i_7_n_0 ;
  wire \r_oShapeY[9]_i_8_n_0 ;
  wire r_oSpeedUp_i_2_n_0;
  wire r_oSpeedUp_i_3_n_0;
  wire timer_inst1_n_0;
  wire timer_inst1_n_1;
  wire timer_inst1_n_10;
  wire timer_inst1_n_11;
  wire timer_inst1_n_12;
  wire timer_inst1_n_13;
  wire timer_inst1_n_14;
  wire timer_inst1_n_15;
  wire timer_inst1_n_16;
  wire timer_inst1_n_17;
  wire timer_inst1_n_18;
  wire timer_inst1_n_19;
  wire timer_inst1_n_2;
  wire timer_inst1_n_20;
  wire timer_inst1_n_27;
  wire timer_inst1_n_28;
  wire timer_inst1_n_29;
  wire timer_inst1_n_3;
  wire timer_inst1_n_30;
  wire timer_inst1_n_31;
  wire timer_inst1_n_32;
  wire timer_inst1_n_33;
  wire timer_inst1_n_34;
  wire timer_inst1_n_36;
  wire timer_inst1_n_37;
  wire timer_inst1_n_38;
  wire timer_inst1_n_39;
  wire timer_inst1_n_4;
  wire timer_inst1_n_40;
  wire timer_inst1_n_41;
  wire timer_inst1_n_42;
  wire timer_inst1_n_45;
  wire timer_inst1_n_46;
  wire timer_inst1_n_47;
  wire timer_inst1_n_48;
  wire timer_inst1_n_49;
  wire timer_inst1_n_5;
  wire timer_inst1_n_50;
  wire timer_inst1_n_51;
  wire timer_inst1_n_52;
  wire timer_inst1_n_53;
  wire timer_inst1_n_54;
  wire timer_inst1_n_6;
  wire timer_inst1_n_7;
  wire timer_inst1_n_8;
  wire timer_inst1_n_9;
  wire [3:0]\NLW_r_oShapeX2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeX2_inferred__1/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAEAA000000000000)) 
    \FSM_onehot_rCurr[0]_i_1 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .I2(\r_oShapeY[9]_i_5_n_0 ),
        .I3(p_0_in89_in),
        .I4(iPushRight),
        .I5(\FSM_onehot_rCurr[0]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_rCurr[0]_i_2 
       (.I0(iPushDown),
        .I1(iPushLeft),
        .I2(iPushUp),
        .O(\FSM_onehot_rCurr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    \FSM_onehot_rCurr[10]_i_1 
       (.I0(\FSM_onehot_rCurr[10]_i_2_n_0 ),
        .I1(iPushLeft),
        .I2(iPushRight),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(p_1_in69_in),
        .I5(p_1_in),
        .O(\FSM_onehot_rCurr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_rCurr[10]_i_2 
       (.I0(iPushDown),
        .I1(iPushUp),
        .O(\FSM_onehot_rCurr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAA00000000)) 
    \FSM_onehot_rCurr[11]_i_1 
       (.I0(\FSM_onehot_rCurr[15]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurr[11]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurr[15]_i_4_n_0 ),
        .I4(p_0_in78_in),
        .I5(\FSM_onehot_rCurr[11]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rCurr[11]_i_2 
       (.I0(p_1_in74_in),
        .I1(p_0_in76_in),
        .O(\FSM_onehot_rCurr[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[11]_i_3 
       (.I0(iPushUp),
        .I1(iPushDown),
        .O(\FSM_onehot_rCurr[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_rCurr[12]_i_1 
       (.I0(iPushRight),
        .I1(iPushLeft),
        .I2(iPushUp),
        .I3(iPushDown),
        .I4(\FSM_onehot_rCurr[12]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \FSM_onehot_rCurr[12]_i_2 
       (.I0(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .I1(p_0_in80_in),
        .I2(p_1_in74_in),
        .I3(p_0_in76_in),
        .I4(p_0_in78_in),
        .I5(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .O(\FSM_onehot_rCurr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BA000000)) 
    \FSM_onehot_rCurr[13]_i_1 
       (.I0(\FSM_onehot_rCurr[13]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurr[13]_i_4_n_0 ),
        .I3(iPushLeft),
        .I4(iPushDown),
        .I5(iPushUp),
        .O(\FSM_onehot_rCurr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rCurr[13]_i_2 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .O(\FSM_onehot_rCurr[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rCurr[13]_i_3 
       (.I0(p_1_in70_in),
        .I1(p_1_in),
        .I2(p_1_in69_in),
        .I3(p_0_in72_in),
        .O(\FSM_onehot_rCurr[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_rCurr[13]_i_4 
       (.I0(p_1_in74_in),
        .I1(p_1_in82_in),
        .I2(iPushRight),
        .I3(p_0_in80_in),
        .I4(p_0_in76_in),
        .I5(p_0_in78_in),
        .O(\FSM_onehot_rCurr[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    \FSM_onehot_rCurr[14]_i_1 
       (.I0(iPushRight),
        .I1(\FSM_onehot_rCurr[14]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .I4(p_0_in84_in),
        .O(\FSM_onehot_rCurr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_rCurr[14]_i_2 
       (.I0(iPushUp),
        .I1(iPushDown),
        .I2(iPushLeft),
        .O(\FSM_onehot_rCurr[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAA00000000)) 
    \FSM_onehot_rCurr[15]_i_1 
       (.I0(\FSM_onehot_rCurr[15]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurr[15]_i_4_n_0 ),
        .I3(p_0_in86_in),
        .I4(p_0_in84_in),
        .I5(\FSM_onehot_rCurr[15]_i_5_n_0 ),
        .O(\FSM_onehot_rCurr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_rCurr[15]_i_2 
       (.I0(iPushRight),
        .I1(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I2(iPushLeft),
        .O(\FSM_onehot_rCurr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_rCurr[15]_i_3 
       (.I0(p_1_in74_in),
        .I1(p_1_in82_in),
        .I2(p_0_in78_in),
        .I3(p_0_in76_in),
        .I4(p_0_in80_in),
        .I5(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[15]_i_4 
       (.I0(iPushRight),
        .I1(iPushLeft),
        .O(\FSM_onehot_rCurr[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[15]_i_5 
       (.I0(iPushDown),
        .I1(iPushUp),
        .O(\FSM_onehot_rCurr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_rCurr[1]_i_1 
       (.I0(\FSM_onehot_rCurr[1]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurr[1]_i_4_n_0 ),
        .I3(\FSM_onehot_rCurr[1]_i_5_n_0 ),
        .I4(\FSM_onehot_rCurr[1]_i_6_n_0 ),
        .I5(\FSM_onehot_rCurr[1]_i_7_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_rCurr[1]_i_10 
       (.I0(p_0_in76_in),
        .I1(p_0_in78_in),
        .I2(p_0_in72_in),
        .I3(iPushRight),
        .I4(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I5(p_1_in69_in),
        .O(\FSM_onehot_rCurr[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_rCurr[1]_i_11 
       (.I0(iPushLeft),
        .I1(iPushRight),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(p_1_in69_in),
        .I4(\FSM_onehot_rCurr[1]_i_28_n_0 ),
        .I5(\FSM_onehot_rCurr[1]_i_29_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1010100010001000)) 
    \FSM_onehot_rCurr[1]_i_12 
       (.I0(p_0_in76_in),
        .I1(p_0_in80_in),
        .I2(\FSM_onehot_rCurr[1]_i_30_n_0 ),
        .I3(p_1_in82_in),
        .I4(\r_oShapeX[9]_i_6_n_0 ),
        .I5(iPushUp),
        .O(\FSM_onehot_rCurr[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[1]_i_13 
       (.I0(iPushRight),
        .I1(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .O(\FSM_onehot_rCurr[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F000800)) 
    \FSM_onehot_rCurr[1]_i_14 
       (.I0(\r_oShapeY[7]_i_4_n_0 ),
        .I1(iPushDown),
        .I2(iPushUp),
        .I3(iPushLeft),
        .I4(\r_oShapeX[8]_i_8_n_0 ),
        .I5(p_0_in84_in),
        .O(\FSM_onehot_rCurr[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h88800000)) 
    \FSM_onehot_rCurr[1]_i_15 
       (.I0(iPushDown),
        .I1(iPushUp),
        .I2(p_0_in66_in),
        .I3(p_0_in84_in),
        .I4(\FSM_onehot_rCurr[1]_i_30_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFCCC8C8)) 
    \FSM_onehot_rCurr[1]_i_16 
       (.I0(p_0_in72_in),
        .I1(\FSM_onehot_rCurr[10]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurr[4]_i_2_n_0 ),
        .I3(iPushLeft),
        .I4(p_1_in70_in),
        .I5(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .O(\FSM_onehot_rCurr[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_rCurr[1]_i_17 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .I2(p_1_in70_in),
        .I3(iPushLeft),
        .I4(p_0_in78_in),
        .I5(\FSM_onehot_rCurr[1]_i_31_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1111111011101110)) 
    \FSM_onehot_rCurr[1]_i_18 
       (.I0(p_0_in72_in),
        .I1(p_1_in70_in),
        .I2(p_1_in74_in),
        .I3(p_0_in76_in),
        .I4(p_0_in84_in),
        .I5(iPushDown),
        .O(\FSM_onehot_rCurr[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0505050505050D00)) 
    \FSM_onehot_rCurr[1]_i_19 
       (.I0(iPushUp),
        .I1(\FSM_onehot_rCurr[7]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(p_0_in78_in),
        .I4(p_0_in76_in),
        .I5(p_1_in74_in),
        .O(\FSM_onehot_rCurr[1]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h005A000E)) 
    \FSM_onehot_rCurr[1]_i_2 
       (.I0(p_1_in),
        .I1(p_1_in70_in),
        .I2(iPushRight),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(p_1_in69_in),
        .O(\FSM_onehot_rCurr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA30AA00AA00AA00)) 
    \FSM_onehot_rCurr[1]_i_20 
       (.I0(\FSM_onehot_rCurr[1]_i_30_n_0 ),
        .I1(p_0_in89_in),
        .I2(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I3(p_1_in74_in),
        .I4(\FSM_onehot_rCurr[1]_i_13_n_0 ),
        .I5(\FSM_onehot_rCurr[7]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[1]_i_21 
       (.I0(iPushDown),
        .I1(iPushLeft),
        .O(\FSM_onehot_rCurr[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA0088F08800)) 
    \FSM_onehot_rCurr[1]_i_22 
       (.I0(\FSM_onehot_rCurr[1]_i_30_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_32_n_0 ),
        .I2(\FSM_onehot_rCurr[1]_i_33_n_0 ),
        .I3(iPushDown),
        .I4(p_0_in89_in),
        .I5(\FSM_onehot_rCurr[1]_i_34_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000505000000C00)) 
    \FSM_onehot_rCurr[1]_i_23 
       (.I0(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_35_n_0 ),
        .I2(iPushDown),
        .I3(iPushRight),
        .I4(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I5(\FSM_onehot_rCurr[1]_i_36_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_rCurr[1]_i_24 
       (.I0(\r_oShapeY[9]_i_5_n_0 ),
        .I1(iPushDown),
        .I2(p_1_in74_in),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(\r_oShapeY[7]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_rCurr[1]_i_25 
       (.I0(\FSM_onehot_rCurr[1]_i_33_n_0 ),
        .I1(p_0_in72_in),
        .I2(p_0_in66_in),
        .I3(iPushLeft),
        .I4(iPushDown),
        .I5(\r_oShapeY[7]_i_4_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202020200)) 
    \FSM_onehot_rCurr[1]_i_26 
       (.I0(\FSM_onehot_rCurr[2]_i_2_n_0 ),
        .I1(iPushDown),
        .I2(iPushUp),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(p_0_in67_in),
        .I5(p_0_in80_in),
        .O(\FSM_onehot_rCurr[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_rCurr[1]_i_27 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .I2(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I3(p_0_in67_in),
        .I4(iPushUp),
        .I5(iPushDown),
        .O(\FSM_onehot_rCurr[1]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \FSM_onehot_rCurr[1]_i_28 
       (.I0(p_0_in67_in),
        .I1(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I2(iPushDown),
        .I3(p_0_in84_in),
        .I4(p_0_in72_in),
        .O(\FSM_onehot_rCurr[1]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000AAFE)) 
    \FSM_onehot_rCurr[1]_i_29 
       (.I0(p_0_in80_in),
        .I1(p_0_in66_in),
        .I2(p_0_in89_in),
        .I3(p_0_in84_in),
        .I4(p_0_in76_in),
        .O(\FSM_onehot_rCurr[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FE00)) 
    \FSM_onehot_rCurr[1]_i_3 
       (.I0(\FSM_onehot_rCurr[1]_i_8_n_0 ),
        .I1(p_0_in72_in),
        .I2(\FSM_onehot_rCurr[7]_i_3_n_0 ),
        .I3(\FSM_onehot_rCurr[1]_i_9_n_0 ),
        .I4(p_1_in),
        .I5(\FSM_onehot_rCurr[1]_i_10_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_rCurr[1]_i_30 
       (.I0(p_1_in69_in),
        .I1(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I2(iPushRight),
        .I3(p_0_in72_in),
        .O(\FSM_onehot_rCurr[1]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \FSM_onehot_rCurr[1]_i_31 
       (.I0(p_0_in86_in),
        .I1(p_0_in67_in),
        .I2(p_0_in66_in),
        .I3(p_0_in89_in),
        .I4(p_1_in82_in),
        .O(\FSM_onehot_rCurr[1]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[1]_i_32 
       (.I0(p_0_in86_in),
        .I1(p_0_in84_in),
        .O(\FSM_onehot_rCurr[1]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_rCurr[1]_i_33 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .O(\FSM_onehot_rCurr[1]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rCurr[1]_i_34 
       (.I0(p_0_in76_in),
        .I1(p_0_in80_in),
        .O(\FSM_onehot_rCurr[1]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rCurr[1]_i_35 
       (.I0(p_0_in89_in),
        .I1(p_0_in67_in),
        .I2(p_1_in82_in),
        .O(\FSM_onehot_rCurr[1]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rCurr[1]_i_36 
       (.I0(p_1_in74_in),
        .I1(p_0_in78_in),
        .O(\FSM_onehot_rCurr[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \FSM_onehot_rCurr[1]_i_4 
       (.I0(\FSM_onehot_rCurr[1]_i_11_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_12_n_0 ),
        .I2(p_1_in82_in),
        .I3(\FSM_onehot_rCurr[1]_i_13_n_0 ),
        .I4(\FSM_onehot_rCurr[1]_i_14_n_0 ),
        .I5(\FSM_onehot_rCurr[1]_i_15_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFEEEFEEEE)) 
    \FSM_onehot_rCurr[1]_i_5 
       (.I0(\FSM_onehot_rCurr[1]_i_16_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_17_n_0 ),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(iPushLeft),
        .I4(\FSM_onehot_rCurr[4]_i_2_n_0 ),
        .I5(\FSM_onehot_rCurr[1]_i_18_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \FSM_onehot_rCurr[1]_i_6 
       (.I0(\FSM_onehot_rCurr[1]_i_19_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_20_n_0 ),
        .I2(\FSM_onehot_rCurr[1]_i_21_n_0 ),
        .I3(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I4(p_0_in86_in),
        .I5(\FSM_onehot_rCurr[1]_i_9_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_rCurr[1]_i_7 
       (.I0(\FSM_onehot_rCurr[1]_i_22_n_0 ),
        .I1(\FSM_onehot_rCurr[1]_i_23_n_0 ),
        .I2(\FSM_onehot_rCurr[1]_i_24_n_0 ),
        .I3(\FSM_onehot_rCurr[1]_i_25_n_0 ),
        .I4(\FSM_onehot_rCurr[1]_i_26_n_0 ),
        .I5(\FSM_onehot_rCurr[1]_i_27_n_0 ),
        .O(\FSM_onehot_rCurr[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FEAA)) 
    \FSM_onehot_rCurr[1]_i_8 
       (.I0(p_0_in80_in),
        .I1(p_1_in82_in),
        .I2(r_oLeft_i_8_n_0),
        .I3(iPushUp),
        .I4(p_0_in78_in),
        .I5(p_1_in74_in),
        .O(\FSM_onehot_rCurr[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_rCurr[1]_i_9 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .I2(p_1_in70_in),
        .O(\FSM_onehot_rCurr[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8088808080808080)) 
    \FSM_onehot_rCurr[2]_i_1 
       (.I0(\FSM_onehot_rCurr[15]_i_5_n_0 ),
        .I1(\FSM_onehot_rCurr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(\r_oShapeX[9]_i_10_n_0 ),
        .I4(p_0_in66_in),
        .I5(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_rCurr[2]_i_2 
       (.I0(iPushRight),
        .I1(iPushLeft),
        .O(\FSM_onehot_rCurr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F22200000000)) 
    \FSM_onehot_rCurr[3]_i_1 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(iPushRight),
        .I2(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .I3(\FSM_onehot_rCurr[3]_i_2_n_0 ),
        .I4(iPushUp),
        .I5(\FSM_onehot_rCurr[7]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_rCurr[3]_i_2 
       (.I0(p_0_in89_in),
        .I1(p_0_in67_in),
        .I2(iPushRight),
        .I3(p_0_in66_in),
        .I4(p_0_in84_in),
        .I5(p_0_in86_in),
        .O(\FSM_onehot_rCurr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000AE0000)) 
    \FSM_onehot_rCurr[4]_i_1 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I1(p_1_in70_in),
        .I2(\FSM_onehot_rCurr[4]_i_2_n_0 ),
        .I3(iPushLeft),
        .I4(iPushRight),
        .I5(\FSM_onehot_rCurr[10]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rCurr[4]_i_2 
       (.I0(p_1_in),
        .I1(p_1_in69_in),
        .O(\FSM_onehot_rCurr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001010100)) 
    \FSM_onehot_rCurr[5]_i_1 
       (.I0(\FSM_onehot_rCurr[10]_i_2_n_0 ),
        .I1(iPushRight),
        .I2(iPushLeft),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(p_0_in72_in),
        .I5(\FSM_onehot_rCurr[5]_i_2_n_0 ),
        .O(\FSM_onehot_rCurr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rCurr[5]_i_2 
       (.I0(p_1_in69_in),
        .I1(p_1_in),
        .I2(p_1_in70_in),
        .O(\FSM_onehot_rCurr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000800088008000)) 
    \FSM_onehot_rCurr[6]_i_1 
       (.I0(iPushUp),
        .I1(\FSM_onehot_rCurr[7]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I3(iPushRight),
        .I4(p_1_in74_in),
        .I5(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080008080800)) 
    \FSM_onehot_rCurr[7]_i_1 
       (.I0(\FSM_onehot_rCurr[7]_i_2_n_0 ),
        .I1(iPushUp),
        .I2(iPushRight),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(\FSM_onehot_rCurr[7]_i_3_n_0 ),
        .I5(\FSM_onehot_rCurr[13]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[7]_i_2 
       (.I0(iPushLeft),
        .I1(iPushDown),
        .O(\FSM_onehot_rCurr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurr[7]_i_3 
       (.I0(p_0_in76_in),
        .I1(p_1_in74_in),
        .O(\FSM_onehot_rCurr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000F000200020002)) 
    \FSM_onehot_rCurr[8]_i_1 
       (.I0(\FSM_onehot_rCurr[13]_i_2_n_0 ),
        .I1(iPushLeft),
        .I2(iPushDown),
        .I3(iPushUp),
        .I4(\FSM_onehot_rCurr[8]_i_2_n_0 ),
        .I5(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .O(\FSM_onehot_rCurr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \FSM_onehot_rCurr[8]_i_2 
       (.I0(iPushRight),
        .I1(iPushLeft),
        .I2(p_0_in67_in),
        .I3(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I4(p_0_in89_in),
        .I5(\r_oShapeY[9]_i_5_n_0 ),
        .O(\FSM_onehot_rCurr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080000080000000)) 
    \FSM_onehot_rCurr[9]_i_1 
       (.I0(iPushDown),
        .I1(iPushUp),
        .I2(iPushLeft),
        .I3(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .I4(iPushRight),
        .I5(p_1_in),
        .O(\FSM_onehot_rCurr[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[0]_i_1_n_0 ),
        .Q(p_0_in89_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[10]_i_1_n_0 ),
        .Q(p_1_in69_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[11]_i_1_n_0 ),
        .Q(p_0_in78_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[12]_i_1_n_0 ),
        .Q(p_0_in80_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[13]_i_1_n_0 ),
        .Q(p_1_in82_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[14]_i_1_n_0 ),
        .Q(p_0_in84_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[15]_i_1_n_0 ),
        .Q(p_0_in86_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rCurr_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurr_reg_n_0_[1] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[2]_i_1_n_0 ),
        .Q(p_0_in66_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[3]_i_1_n_0 ),
        .Q(p_0_in67_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[4]_i_1_n_0 ),
        .Q(p_1_in70_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[5]_i_1_n_0 ),
        .Q(p_0_in72_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[6]_i_1_n_0 ),
        .Q(p_1_in74_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[7]_i_1_n_0 ),
        .Q(p_0_in76_in),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[8]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s3:0000000000000001,s4:0000000000000100,s13:0000000000010000,s2:0000000000001000,s12:0000000000100000,s11:0000000001000000,s10:0000000010000000,s1:0000000100000000,sInit:0000000000000010,s7:0010000000000000,s9:0000100000000000,s6:0100000000000000,s8:0001000000000000,s15:0000001000000000,s14:0000010000000000,s5:1000000000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurr_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurr[9]_i_1_n_0 ),
        .Q(p_1_in),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFFFE0000AAAA0000)) 
    i__carry__0_i_1
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [6]),
        .I2(i__carry_i_9_n_0),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(\r_oShapeSize_reg[9]_0 [9]),
        .I5(\r_oShapeSize_reg[9]_0 [7]),
        .O(r_oShapeX2));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    i__carry__0_i_1__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h02AB)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_7_n_0),
        .I1(i__carry__0_i_8_n_0),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    i__carry__0_i_2__0
       (.I0(\r_oShapeX_reg[9]_0 [9]),
        .I1(\r_oShapeX[9]_i_12_n_0 ),
        .I2(i__carry__0_i_7__0_n_0),
        .I3(\r_oShapeX_reg[9]_0 [8]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__0_i_3
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__0_i_3__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__0_i_4
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__0_i_4__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__0_i_5
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__0_i_5__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_7_n_0),
        .I1(Q[9]),
        .I2(i__carry__0_i_8_n_0),
        .I3(Q[8]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h4182)) 
    i__carry__0_i_6__0
       (.I0(\r_oShapeX_reg[9]_0 [9]),
        .I1(\r_oShapeX_reg[9]_0 [8]),
        .I2(i__carry__0_i_7__0_n_0),
        .I3(\r_oShapeX[9]_i_12_n_0 ),
        .O(i__carry__0_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    i__carry__0_i_7
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    i__carry__0_i_7__0
       (.I0(\r_oShapeSize_reg[9]_0 [7]),
        .I1(\r_oShapeSize_reg[9]_0 [6]),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(i__carry_i_9_n_0),
        .I4(\r_oShapeSize_reg[9]_0 [8]),
        .O(i__carry__0_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    i__carry__0_i_8
       (.I0(i__carry_i_9_n_0),
        .I1(\r_oShapeSize_reg[9]_0 [5]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [7]),
        .I4(\r_oShapeSize_reg[9]_0 [8]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__1_i_1
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__1_i_1__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__1_i_2
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__1_i_2__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__1_i_3
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__1_i_3__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__1_i_4
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__1_i_4__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__1_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__2_i_1
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__2_i_1__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__2_i_2
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__2_i_2__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__2_i_3
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__2_i_3__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    i__carry__2_i_4
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    i__carry__2_i_4__0
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(i__carry__2_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h40001555C015557F)) 
    i__carry_i_1
       (.I0(Q[7]),
        .I1(\r_oShapeSize_reg[9]_0 [5]),
        .I2(i__carry_i_9_n_0),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(Q[6]),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    i__carry_i_10
       (.I0(\r_oShapeSize_reg[9]_0 [3]),
        .I1(\r_oShapeSize_reg[9]_0 [1]),
        .I2(\r_oShapeSize_reg[9]_0 [0]),
        .I3(\r_oShapeSize_reg[9]_0 [2]),
        .I4(\r_oShapeSize_reg[9]_0 [4]),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h55540001777C1115)) 
    i__carry_i_1__0
       (.I0(\r_oShapeX_reg[9]_0 [7]),
        .I1(\r_oShapeSize_reg[9]_0 [6]),
        .I2(i__carry_i_9_n_0),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeX_reg[9]_0 [6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h044F)) 
    i__carry_i_2
       (.I0(Q[4]),
        .I1(i__carry_i_10_n_0),
        .I2(\r_oShapeX[5]_i_4_n_0 ),
        .I3(Q[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__0
       (.I0(\r_oShapeX_reg[9]_0 [5]),
        .I1(\r_oShapeX[5]_i_4_n_0 ),
        .I2(i__carry_i_10_n_0),
        .I3(\r_oShapeX_reg[9]_0 [4]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h050505171717170A)) 
    i__carry_i_3
       (.I0(\r_oShapeSize_reg[9]_0 [3]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\r_oShapeSize_reg[9]_0 [1]),
        .I4(\r_oShapeSize_reg[9]_0 [0]),
        .I5(\r_oShapeSize_reg[9]_0 [2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0505051717171750)) 
    i__carry_i_3__0
       (.I0(\r_oShapeX_reg[9]_0 [3]),
        .I1(\r_oShapeX_reg[9]_0 [2]),
        .I2(\r_oShapeSize_reg[9]_0 [3]),
        .I3(\r_oShapeSize_reg[9]_0 [1]),
        .I4(\r_oShapeSize_reg[9]_0 [0]),
        .I5(\r_oShapeSize_reg[9]_0 [2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h1370)) 
    i__carry_i_4
       (.I0(\r_oShapeX_reg[9]_0 [0]),
        .I1(\r_oShapeX_reg[9]_0 [1]),
        .I2(\r_oShapeSize_reg[9]_0 [0]),
        .I3(\r_oShapeSize_reg[9]_0 [1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1370)) 
    i__carry_i_4__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r_oShapeSize_reg[9]_0 [0]),
        .I3(\r_oShapeSize_reg[9]_0 [1]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h8412121212484848)) 
    i__carry_i_5
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\r_oShapeSize_reg[9]_0 [7]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [6]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h2121218484848412)) 
    i__carry_i_5__0
       (.I0(\r_oShapeX_reg[9]_0 [7]),
        .I1(\r_oShapeX_reg[9]_0 [6]),
        .I2(\r_oShapeSize_reg[9]_0 [7]),
        .I3(\r_oShapeSize_reg[9]_0 [5]),
        .I4(i__carry_i_9_n_0),
        .I5(\r_oShapeSize_reg[9]_0 [6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h2184)) 
    i__carry_i_6
       (.I0(i__carry_i_10_n_0),
        .I1(\r_oShapeX[5]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_6__0
       (.I0(i__carry_i_10_n_0),
        .I1(\r_oShapeX[5]_i_4_n_0 ),
        .I2(\r_oShapeX_reg[9]_0 [5]),
        .I3(\r_oShapeX_reg[9]_0 [4]),
        .O(i__carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0056560001A8A801)) 
    i__carry_i_7
       (.I0(\r_oShapeSize_reg[9]_0 [2]),
        .I1(\r_oShapeSize_reg[9]_0 [0]),
        .I2(\r_oShapeSize_reg[9]_0 [1]),
        .I3(\r_oShapeSize_reg[9]_0 [3]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0056560001A8A801)) 
    i__carry_i_7__0
       (.I0(\r_oShapeSize_reg[9]_0 [2]),
        .I1(\r_oShapeSize_reg[9]_0 [0]),
        .I2(\r_oShapeSize_reg[9]_0 [1]),
        .I3(\r_oShapeSize_reg[9]_0 [3]),
        .I4(\r_oShapeX_reg[9]_0 [3]),
        .I5(\r_oShapeX_reg[9]_0 [2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h2841)) 
    i__carry_i_8
       (.I0(\r_oShapeSize_reg[9]_0 [0]),
        .I1(\r_oShapeSize_reg[9]_0 [1]),
        .I2(\r_oShapeX_reg[9]_0 [1]),
        .I3(\r_oShapeX_reg[9]_0 [0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h2841)) 
    i__carry_i_8__0
       (.I0(\r_oShapeSize_reg[9]_0 [0]),
        .I1(\r_oShapeSize_reg[9]_0 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(i__carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_9
       (.I0(\r_oShapeSize_reg[9]_0 [3]),
        .I1(\r_oShapeSize_reg[9]_0 [1]),
        .I2(\r_oShapeSize_reg[9]_0 [0]),
        .I3(\r_oShapeSize_reg[9]_0 [2]),
        .I4(\r_oShapeSize_reg[9]_0 [4]),
        .O(i__carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    r_oLEDDown_i_4
       (.I0(p_1_in74_in),
        .I1(\r_oShapeX[9]_i_6_n_0 ),
        .I2(p_0_in89_in),
        .I3(p_0_in80_in),
        .I4(p_0_in76_in),
        .I5(p_0_in78_in),
        .O(r_oLEDDown_i_4_n_0));
  FDRE r_oLEDDown_reg
       (.C(iClk),
        .CE(1'b1),
        .D(timer_inst1_n_53),
        .Q(oLEDDown),
        .R(p_1_in0));
  LUT6 #(
    .INIT(64'hFFFF0015FFFFFFEA)) 
    r_oLEDLeft_i_1
       (.I0(timer_inst1_n_19),
        .I1(timer_inst1_n_20),
        .I2(r_oLEDLeft_i_4_n_0),
        .I3(timer_inst1_n_18),
        .I4(r_oLEDLeft37_out),
        .I5(oLEDLeft),
        .O(r_oLEDLeft_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    r_oLEDLeft_i_10
       (.I0(p_1_in82_in),
        .I1(p_1_in74_in),
        .I2(p_1_in70_in),
        .I3(p_1_in),
        .I4(p_1_in69_in),
        .O(r_oLEDLeft_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF000E)) 
    r_oLEDLeft_i_11
       (.I0(p_1_in),
        .I1(p_1_in69_in),
        .I2(p_1_in70_in),
        .I3(p_0_in72_in),
        .I4(p_1_in74_in),
        .O(r_oLEDLeft_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    r_oLEDLeft_i_4
       (.I0(p_0_in86_in),
        .I1(p_0_in66_in),
        .I2(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .O(r_oLEDLeft_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    r_oLEDLeft_i_8
       (.I0(p_0_in78_in),
        .I1(p_0_in80_in),
        .O(r_oLEDLeft_i_8_n_0));
  FDRE r_oLEDLeft_reg
       (.C(iClk),
        .CE(1'b1),
        .D(r_oLEDLeft_i_1_n_0),
        .Q(oLEDLeft),
        .R(p_1_in0));
  LUT6 #(
    .INIT(64'hFFFF0001FFFFFFFE)) 
    r_oLEDRight_i_1
       (.I0(timer_inst1_n_42),
        .I1(timer_inst1_n_41),
        .I2(timer_inst1_n_16),
        .I3(timer_inst1_n_17),
        .I4(r_oLEDRight46_out),
        .I5(oLEDRight),
        .O(r_oLEDRight_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    r_oLEDRight_i_10
       (.I0(p_0_in86_in),
        .I1(p_0_in67_in),
        .I2(p_0_in66_in),
        .O(r_oLEDRight_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    r_oLEDRight_i_12
       (.I0(p_0_in67_in),
        .I1(p_0_in66_in),
        .I2(p_0_in84_in),
        .O(r_oLEDRight_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    r_oLEDRight_i_13
       (.I0(p_1_in69_in),
        .I1(p_1_in),
        .I2(p_1_in70_in),
        .O(r_oLEDRight_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    r_oLEDRight_i_7
       (.I0(p_0_in67_in),
        .I1(p_0_in66_in),
        .I2(p_0_in78_in),
        .I3(p_0_in84_in),
        .O(r_oLEDRight_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11110100)) 
    r_oLEDRight_i_9
       (.I0(p_0_in76_in),
        .I1(p_0_in80_in),
        .I2(p_0_in72_in),
        .I3(r_oLEDRight_i_13_n_0),
        .I4(p_1_in74_in),
        .I5(p_1_in82_in),
        .O(r_oLEDRight_i_9_n_0));
  FDRE r_oLEDRight_reg
       (.C(iClk),
        .CE(1'b1),
        .D(r_oLEDRight_i_1_n_0),
        .Q(oLEDRight),
        .R(p_1_in0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    r_oLEDUp_i_4
       (.I0(p_1_in74_in),
        .I1(p_1_in69_in),
        .I2(p_1_in),
        .I3(p_1_in70_in),
        .I4(p_1_in82_in),
        .O(r_oLEDUp_i_4_n_0));
  FDRE r_oLEDUp_reg
       (.C(iClk),
        .CE(1'b1),
        .D(timer_inst1_n_54),
        .Q(oLEDUp),
        .R(p_1_in0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    r_oLeft_i_3
       (.I0(p_0_in67_in),
        .I1(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I2(iRst),
        .I3(iGameRst),
        .O(r_oLeft_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    r_oLeft_i_5
       (.I0(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I1(p_0_in66_in),
        .I2(iRst),
        .I3(iGameRst),
        .O(r_oLeft_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_oLeft_i_8
       (.I0(p_0_in89_in),
        .I1(p_0_in67_in),
        .I2(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I3(p_0_in66_in),
        .I4(p_0_in84_in),
        .I5(p_0_in86_in),
        .O(r_oLeft_i_8_n_0));
  FDRE r_oLeft_reg
       (.C(iClk),
        .CE(1'b1),
        .D(timer_inst1_n_15),
        .Q(oLeft),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_oRight_i_3
       (.I0(p_0_in66_in),
        .I1(p_0_in67_in),
        .O(r_oRight_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_oRight_i_4
       (.I0(p_1_in74_in),
        .I1(p_1_in82_in),
        .O(r_oRight_i_4_n_0));
  FDRE r_oRight_reg
       (.C(iClk),
        .CE(1'b1),
        .D(timer_inst1_n_14),
        .Q(oRight),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_oShapeSize[0]_i_1 
       (.I0(\r_oShapeSize_reg[9]_0 [0]),
        .O(\r_oShapeSize[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_oShapeSize[3]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [1]),
        .O(\r_oShapeSize[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[3]_i_3 
       (.I0(\r_oShapeSize_reg[9]_0 [3]),
        .I1(\r_oShapeSize_reg[9]_0 [4]),
        .O(\r_oShapeSize[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[3]_i_4 
       (.I0(\r_oShapeSize_reg[9]_0 [2]),
        .I1(\r_oShapeSize_reg[9]_0 [3]),
        .O(\r_oShapeSize[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[3]_i_5 
       (.I0(\r_oShapeSize_reg[9]_0 [1]),
        .I1(\r_oShapeSize_reg[9]_0 [2]),
        .O(\r_oShapeSize[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeSize[5]_i_1 
       (.I0(timer_inst1_n_51),
        .I1(timer_inst1_n_11),
        .O(\r_oShapeSize[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[7]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [7]),
        .I1(\r_oShapeSize_reg[9]_0 [8]),
        .O(\r_oShapeSize[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[7]_i_3 
       (.I0(\r_oShapeSize_reg[9]_0 [6]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .O(\r_oShapeSize[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[7]_i_4 
       (.I0(\r_oShapeSize_reg[9]_0 [5]),
        .I1(\r_oShapeSize_reg[9]_0 [6]),
        .O(\r_oShapeSize[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[7]_i_5 
       (.I0(\r_oShapeSize_reg[9]_0 [4]),
        .I1(\r_oShapeSize_reg[9]_0 [5]),
        .O(\r_oShapeSize[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAFEAA)) 
    \r_oShapeSize[8]_i_1 
       (.I0(timer_inst1_n_37),
        .I1(\r_oShapeSize[8]_i_3_n_0 ),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(timer_inst1_n_36),
        .I4(\r_oShapeSize_reg[9]_0 [4]),
        .I5(timer_inst1_n_11),
        .O(\r_oShapeSize[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeSize[8]_i_2 
       (.I0(timer_inst1_n_50),
        .I1(timer_inst1_n_11),
        .O(\r_oShapeSize[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeSize[8]_i_3 
       (.I0(\r_oShapeSize_reg[9]_0 [6]),
        .I1(\r_oShapeSize_reg[9]_0 [7]),
        .O(\r_oShapeSize[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_oShapeSize[9]_i_7 
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(\r_oShapeSize_reg[9]_0 [9]),
        .O(\r_oShapeSize[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \r_oShapeSize[9]_i_8 
       (.I0(\r_oShapeSize_reg[9]_0 [5]),
        .I1(\r_oShapeSize_reg[9]_0 [3]),
        .I2(\r_oShapeSize_reg[9]_0 [2]),
        .I3(\r_oShapeSize_reg[9]_0 [4]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [6]),
        .O(\r_oShapeSize[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \r_oShapeSize[9]_i_9 
       (.I0(\r_oShapeY[7]_i_4_n_0 ),
        .I1(\r_oShapeY[9]_i_5_n_0 ),
        .I2(p_0_in72_in),
        .I3(p_1_in74_in),
        .I4(p_1_in82_in),
        .I5(\r_oShapeY[7]_i_3_n_0 ),
        .O(\r_oShapeSize[9]_i_9_n_0 ));
  FDRE \r_oShapeSize_reg[0] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(\r_oShapeSize[0]_i_1_n_0 ),
        .Q(\r_oShapeSize_reg[9]_0 [0]),
        .R(timer_inst1_n_33));
  FDSE \r_oShapeSize_reg[1] 
       (.C(iClk),
        .CE(\r_oShapeSize[8]_i_1_n_0 ),
        .D(timer_inst1_n_10),
        .Q(\r_oShapeSize_reg[9]_0 [1]),
        .S(p_1_in0));
  FDSE \r_oShapeSize_reg[2] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(timer_inst1_n_49),
        .Q(\r_oShapeSize_reg[9]_0 [2]),
        .S(timer_inst1_n_33));
  FDSE \r_oShapeSize_reg[3] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(timer_inst1_n_48),
        .Q(\r_oShapeSize_reg[9]_0 [3]),
        .S(timer_inst1_n_33));
  FDSE \r_oShapeSize_reg[4] 
       (.C(iClk),
        .CE(\r_oShapeSize[8]_i_1_n_0 ),
        .D(timer_inst1_n_12),
        .Q(\r_oShapeSize_reg[9]_0 [4]),
        .S(p_1_in0));
  FDRE \r_oShapeSize_reg[5] 
       (.C(iClk),
        .CE(\r_oShapeSize[8]_i_1_n_0 ),
        .D(\r_oShapeSize[5]_i_1_n_0 ),
        .Q(\r_oShapeSize_reg[9]_0 [5]),
        .R(p_1_in0));
  FDRE \r_oShapeSize_reg[6] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(timer_inst1_n_47),
        .Q(\r_oShapeSize_reg[9]_0 [6]),
        .R(timer_inst1_n_33));
  FDRE \r_oShapeSize_reg[7] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(timer_inst1_n_46),
        .Q(\r_oShapeSize_reg[9]_0 [7]),
        .R(timer_inst1_n_33));
  FDRE \r_oShapeSize_reg[8] 
       (.C(iClk),
        .CE(\r_oShapeSize[8]_i_1_n_0 ),
        .D(\r_oShapeSize[8]_i_2_n_0 ),
        .Q(\r_oShapeSize_reg[9]_0 [8]),
        .R(p_1_in0));
  FDRE \r_oShapeSize_reg[9] 
       (.C(iClk),
        .CE(r_oShapeSize),
        .D(timer_inst1_n_45),
        .Q(\r_oShapeSize_reg[9]_0 [9]),
        .R(timer_inst1_n_33));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\r_oShapeX2_inferred__0/i__carry_n_0 ,\r_oShapeX2_inferred__0/i__carry_n_1 ,\r_oShapeX2_inferred__0/i__carry_n_2 ,\r_oShapeX2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}),
        .O(\NLW_r_oShapeX2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__0/i__carry__0 
       (.CI(\r_oShapeX2_inferred__0/i__carry_n_0 ),
        .CO({\r_oShapeX2_inferred__0/i__carry__0_n_0 ,\r_oShapeX2_inferred__0/i__carry__0_n_1 ,\r_oShapeX2_inferred__0/i__carry__0_n_2 ,\r_oShapeX2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({r_oShapeX2,r_oShapeX2,r_oShapeX2,i__carry__0_i_2__0_n_0}),
        .O(\NLW_r_oShapeX2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__0/i__carry__1 
       (.CI(\r_oShapeX2_inferred__0/i__carry__0_n_0 ),
        .CO({\r_oShapeX2_inferred__0/i__carry__1_n_0 ,\r_oShapeX2_inferred__0/i__carry__1_n_1 ,\r_oShapeX2_inferred__0/i__carry__1_n_2 ,\r_oShapeX2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({r_oShapeX2,r_oShapeX2,r_oShapeX2,r_oShapeX2}),
        .O(\NLW_r_oShapeX2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__0/i__carry__2 
       (.CI(\r_oShapeX2_inferred__0/i__carry__1_n_0 ),
        .CO({r_oShapeX260_in,\r_oShapeX2_inferred__0/i__carry__2_n_1 ,\r_oShapeX2_inferred__0/i__carry__2_n_2 ,\r_oShapeX2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({r_oShapeX2,r_oShapeX2,r_oShapeX2,r_oShapeX2}),
        .O(\NLW_r_oShapeX2_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\r_oShapeX2_inferred__1/i__carry_n_0 ,\r_oShapeX2_inferred__1/i__carry_n_1 ,\r_oShapeX2_inferred__1/i__carry_n_2 ,\r_oShapeX2_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_r_oShapeX2_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__1/i__carry__0 
       (.CI(\r_oShapeX2_inferred__1/i__carry_n_0 ),
        .CO({\r_oShapeX2_inferred__1/i__carry__0_n_0 ,\r_oShapeX2_inferred__1/i__carry__0_n_1 ,\r_oShapeX2_inferred__1/i__carry__0_n_2 ,\r_oShapeX2_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0}),
        .O(\NLW_r_oShapeX2_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__1/i__carry__1 
       (.CI(\r_oShapeX2_inferred__1/i__carry__0_n_0 ),
        .CO({\r_oShapeX2_inferred__1/i__carry__1_n_0 ,\r_oShapeX2_inferred__1/i__carry__1_n_1 ,\r_oShapeX2_inferred__1/i__carry__1_n_2 ,\r_oShapeX2_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0}),
        .O(\NLW_r_oShapeX2_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeX2_inferred__1/i__carry__2 
       (.CI(\r_oShapeX2_inferred__1/i__carry__1_n_0 ),
        .CO({r_oShapeX255_in,\r_oShapeX2_inferred__1/i__carry__2_n_1 ,\r_oShapeX2_inferred__1/i__carry__2_n_2 ,\r_oShapeX2_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0,i__carry__0_i_1__0_n_0}),
        .O(\NLW_r_oShapeX2_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'h00000000AAAAFCAA)) 
    \r_oShapeX[0]_i_2 
       (.I0(r_oShapeX260_in),
        .I1(\r_oShapeX[0]_i_4_n_0 ),
        .I2(\r_oShapeX_reg[9]_0 [1]),
        .I3(p_0_in67_in),
        .I4(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I5(\r_oShapeX_reg[9]_0 [0]),
        .O(\r_oShapeX[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeX[0]_i_4 
       (.I0(\r_oShapeX[8]_i_5_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [9]),
        .I2(\r_oShapeX_reg[9]_0 [8]),
        .O(\r_oShapeX[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_oShapeX[1]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [0]),
        .I1(\r_oShapeSize_reg[9]_0 [1]),
        .O(\r_oShapeX[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000444500000000)) 
    \r_oShapeX[2]_i_2 
       (.I0(r_oShapeX260_in),
        .I1(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I2(\r_oShapeX[9]_i_21_n_0 ),
        .I3(p_0_in67_in),
        .I4(timer_inst1_n_13),
        .I5(\r_oShapeX[2]_i_3_n_0 ),
        .O(\r_oShapeX[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \r_oShapeX[2]_i_3 
       (.I0(\r_oShapeSize_reg[9]_0 [1]),
        .I1(\r_oShapeSize_reg[9]_0 [0]),
        .I2(\r_oShapeSize_reg[9]_0 [2]),
        .O(\r_oShapeX[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \r_oShapeX[3]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [2]),
        .I1(\r_oShapeSize_reg[9]_0 [0]),
        .I2(\r_oShapeSize_reg[9]_0 [1]),
        .I3(\r_oShapeSize_reg[9]_0 [3]),
        .O(\r_oShapeX[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_oShapeX[3]_i_3 
       (.I0(\r_oShapeX_reg[9]_0 [2]),
        .I1(\r_oShapeX_reg[9]_0 [0]),
        .I2(\r_oShapeX_reg[9]_0 [1]),
        .I3(\r_oShapeX_reg[9]_0 [3]),
        .O(\r_oShapeX[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \r_oShapeX[3]_i_4 
       (.I0(\r_oShapeX_reg[9]_0 [2]),
        .I1(\r_oShapeX_reg[9]_0 [0]),
        .I2(\r_oShapeX_reg[9]_0 [1]),
        .I3(\r_oShapeX_reg[9]_0 [3]),
        .O(\r_oShapeX[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[4]_i_2 
       (.I0(\r_oShapeX_reg[9]_0 [2]),
        .I1(\r_oShapeX_reg[9]_0 [3]),
        .O(\r_oShapeX[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \r_oShapeX[5]_i_2 
       (.I0(\r_oShapeX_reg[9]_0 [0]),
        .I1(\r_oShapeX_reg[9]_0 [1]),
        .I2(\r_oShapeX_reg[9]_0 [3]),
        .I3(\r_oShapeX_reg[9]_0 [2]),
        .I4(\r_oShapeX_reg[9]_0 [4]),
        .I5(\r_oShapeX_reg[9]_0 [5]),
        .O(\r_oShapeX[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008080008000800)) 
    \r_oShapeX[5]_i_3 
       (.I0(r_oShapeX260_in),
        .I1(\r_oShapeX[8]_i_10_n_0 ),
        .I2(timer_inst1_n_13),
        .I3(\r_oShapeX_reg[9]_0 [5]),
        .I4(\r_oShapeX[5]_i_5_n_0 ),
        .I5(\r_oShapeX_reg[9]_0 [4]),
        .O(\r_oShapeX[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \r_oShapeX[5]_i_4 
       (.I0(\r_oShapeSize_reg[9]_0 [4]),
        .I1(\r_oShapeSize_reg[9]_0 [2]),
        .I2(\r_oShapeSize_reg[9]_0 [0]),
        .I3(\r_oShapeSize_reg[9]_0 [1]),
        .I4(\r_oShapeSize_reg[9]_0 [3]),
        .I5(\r_oShapeSize_reg[9]_0 [5]),
        .O(\r_oShapeX[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_oShapeX[5]_i_5 
       (.I0(\r_oShapeX_reg[9]_0 [3]),
        .I1(\r_oShapeX_reg[9]_0 [2]),
        .I2(\r_oShapeX_reg[9]_0 [1]),
        .I3(\r_oShapeX_reg[9]_0 [0]),
        .O(\r_oShapeX[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \r_oShapeX[6]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [5]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .O(\r_oShapeX[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_oShapeX[6]_i_3 
       (.I0(\r_oShapeX[9]_i_22_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [6]),
        .O(\r_oShapeX[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \r_oShapeX[6]_i_4 
       (.I0(\r_oShapeX[8]_i_6_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [5]),
        .I2(\r_oShapeX_reg[9]_0 [4]),
        .I3(\r_oShapeX_reg[9]_0 [3]),
        .I4(\r_oShapeX_reg[9]_0 [2]),
        .I5(\r_oShapeX_reg[9]_0 [6]),
        .O(\r_oShapeX[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \r_oShapeX[7]_i_2 
       (.I0(\r_oShapeSize_reg[9]_0 [6]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [7]),
        .O(\r_oShapeX[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_oShapeX[7]_i_3 
       (.I0(\r_oShapeX_reg[9]_0 [6]),
        .I1(\r_oShapeX[9]_i_22_n_0 ),
        .I2(\r_oShapeX_reg[9]_0 [7]),
        .O(\r_oShapeX[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \r_oShapeX[7]_i_4 
       (.I0(\r_oShapeX_reg[9]_0 [5]),
        .I1(\r_oShapeX_reg[9]_0 [4]),
        .I2(\r_oShapeX[4]_i_2_n_0 ),
        .I3(\r_oShapeX[8]_i_6_n_0 ),
        .I4(\r_oShapeX_reg[9]_0 [6]),
        .I5(\r_oShapeX_reg[9]_0 [7]),
        .O(\r_oShapeX[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[8]_i_1 
       (.I0(iGameRst),
        .I1(iRst),
        .O(p_1_in0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    \r_oShapeX[8]_i_10 
       (.I0(p_0_in67_in),
        .I1(p_0_in86_in),
        .I2(p_0_in84_in),
        .I3(p_0_in78_in),
        .I4(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .O(\r_oShapeX[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[8]_i_2 
       (.I0(timer_inst1_n_34),
        .I1(timer_inst1_n_6),
        .O(\r_oShapeX[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_oShapeX[8]_i_5 
       (.I0(\r_oShapeX_reg[9]_0 [2]),
        .I1(\r_oShapeX_reg[9]_0 [3]),
        .I2(\r_oShapeX_reg[9]_0 [4]),
        .I3(\r_oShapeX_reg[9]_0 [5]),
        .I4(\r_oShapeX_reg[9]_0 [7]),
        .I5(\r_oShapeX_reg[9]_0 [6]),
        .O(\r_oShapeX[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[8]_i_6 
       (.I0(\r_oShapeX_reg[9]_0 [0]),
        .I1(\r_oShapeX_reg[9]_0 [1]),
        .O(\r_oShapeX[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[8]_i_8 
       (.I0(p_0_in66_in),
        .I1(p_0_in86_in),
        .O(\r_oShapeX[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_oShapeX[8]_i_9 
       (.I0(\r_oShapeX[9]_i_22_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [6]),
        .I2(\r_oShapeX_reg[9]_0 [7]),
        .I3(\r_oShapeX_reg[9]_0 [8]),
        .O(\r_oShapeX[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[9]_i_10 
       (.I0(p_0_in84_in),
        .I1(p_0_in86_in),
        .O(\r_oShapeX[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    \r_oShapeX[9]_i_12 
       (.I0(\r_oShapeSize_reg[9]_0 [8]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [6]),
        .I4(\r_oShapeSize_reg[9]_0 [7]),
        .I5(\r_oShapeSize_reg[9]_0 [9]),
        .O(\r_oShapeX[9]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_oShapeX[9]_i_14 
       (.I0(\r_oShapeX[9]_i_22_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [8]),
        .I2(\r_oShapeX_reg[9]_0 [7]),
        .I3(\r_oShapeX_reg[9]_0 [6]),
        .I4(\r_oShapeX_reg[9]_0 [9]),
        .O(\r_oShapeX[9]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \r_oShapeX[9]_i_15 
       (.I0(\r_oShapeX[8]_i_5_n_0 ),
        .I1(\r_oShapeX_reg[9]_0 [1]),
        .I2(\r_oShapeX_reg[9]_0 [0]),
        .I3(\r_oShapeX_reg[9]_0 [8]),
        .I4(\r_oShapeX_reg[9]_0 [9]),
        .O(\r_oShapeX[9]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_oShapeX[9]_i_17 
       (.I0(\r_oShapeX_reg[9]_0 [8]),
        .I1(\r_oShapeX_reg[9]_0 [9]),
        .I2(\r_oShapeX[8]_i_5_n_0 ),
        .I3(\r_oShapeX_reg[9]_0 [1]),
        .I4(\r_oShapeX_reg[9]_0 [0]),
        .O(\r_oShapeX[9]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \r_oShapeX[9]_i_21 
       (.I0(p_0_in78_in),
        .I1(p_0_in84_in),
        .I2(p_0_in86_in),
        .O(\r_oShapeX[9]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_oShapeX[9]_i_22 
       (.I0(\r_oShapeX_reg[9]_0 [5]),
        .I1(\r_oShapeX_reg[9]_0 [4]),
        .I2(\r_oShapeX_reg[9]_0 [0]),
        .I3(\r_oShapeX_reg[9]_0 [1]),
        .I4(\r_oShapeX_reg[9]_0 [2]),
        .I5(\r_oShapeX_reg[9]_0 [3]),
        .O(\r_oShapeX[9]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \r_oShapeX[9]_i_4 
       (.I0(p_0_in78_in),
        .I1(p_0_in76_in),
        .I2(p_1_in82_in),
        .I3(p_0_in80_in),
        .O(\r_oShapeX[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[9]_i_6 
       (.I0(p_0_in67_in),
        .I1(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .O(\r_oShapeX[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000054)) 
    \r_oShapeX[9]_i_7 
       (.I0(p_1_in82_in),
        .I1(p_0_in76_in),
        .I2(p_0_in78_in),
        .I3(p_0_in66_in),
        .I4(p_0_in89_in),
        .O(\r_oShapeX[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeX[9]_i_9 
       (.I0(p_0_in89_in),
        .I1(p_0_in66_in),
        .O(\r_oShapeX[9]_i_9_n_0 ));
  FDSE \r_oShapeX_reg[0] 
       (.C(iClk),
        .CE(\r_oShapeX[8]_i_2_n_0 ),
        .D(timer_inst1_n_9),
        .Q(\r_oShapeX_reg[9]_0 [0]),
        .S(p_1_in0));
  FDRE \r_oShapeX_reg[1] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_32),
        .Q(\r_oShapeX_reg[9]_0 [1]),
        .R(timer_inst1_n_39));
  FDRE \r_oShapeX_reg[2] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_31),
        .Q(\r_oShapeX_reg[9]_0 [2]),
        .R(timer_inst1_n_39));
  FDRE \r_oShapeX_reg[3] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_30),
        .Q(\r_oShapeX_reg[9]_0 [3]),
        .R(timer_inst1_n_39));
  FDSE \r_oShapeX_reg[4] 
       (.C(iClk),
        .CE(\r_oShapeX[8]_i_2_n_0 ),
        .D(timer_inst1_n_5),
        .Q(\r_oShapeX_reg[9]_0 [4]),
        .S(p_1_in0));
  FDSE \r_oShapeX_reg[5] 
       (.C(iClk),
        .CE(\r_oShapeX[8]_i_2_n_0 ),
        .D(timer_inst1_n_7),
        .Q(\r_oShapeX_reg[9]_0 [5]),
        .S(p_1_in0));
  FDRE \r_oShapeX_reg[6] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_29),
        .Q(\r_oShapeX_reg[9]_0 [6]),
        .R(timer_inst1_n_39));
  FDRE \r_oShapeX_reg[7] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_28),
        .Q(\r_oShapeX_reg[9]_0 [7]),
        .R(timer_inst1_n_39));
  FDSE \r_oShapeX_reg[8] 
       (.C(iClk),
        .CE(\r_oShapeX[8]_i_2_n_0 ),
        .D(timer_inst1_n_8),
        .Q(\r_oShapeX_reg[9]_0 [8]),
        .S(p_1_in0));
  FDRE \r_oShapeX_reg[9] 
       (.C(iClk),
        .CE(timer_inst1_n_34),
        .D(timer_inst1_n_27),
        .Q(\r_oShapeX_reg[9]_0 [9]),
        .R(timer_inst1_n_39));
  LUT2 #(
    .INIT(4'h6)) 
    \r_oShapeY[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r_oShapeY[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_oShapeY[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r_oShapeY[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_oShapeY[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(r_oShapeY00_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_oShapeY[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\r_oShapeY[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \r_oShapeY[5]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\r_oShapeY[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_oShapeY[5]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(r_oShapeY00_in[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_oShapeY[6]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\r_oShapeY[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_oShapeY[6]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\r_oShapeY[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_oShapeY[6]_i_5 
       (.I0(\r_oShapeSize_reg[9]_0 [5]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [6]),
        .O(\r_oShapeY[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000F0004)) 
    \r_oShapeY[7]_i_1 
       (.I0(p_1_in82_in),
        .I1(\r_oShapeY[7]_i_3_n_0 ),
        .I2(timer_inst1_n_13),
        .I3(\r_oShapeY[7]_i_4_n_0 ),
        .I4(\r_oShapeY[9]_i_5_n_0 ),
        .I5(timer_inst1_n_1),
        .O(\r_oShapeY[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeY[7]_i_3 
       (.I0(p_0_in78_in),
        .I1(p_0_in76_in),
        .I2(p_0_in80_in),
        .O(\r_oShapeY[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeY[7]_i_4 
       (.I0(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I1(p_0_in67_in),
        .I2(p_0_in89_in),
        .O(\r_oShapeY[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_oShapeY[7]_i_6 
       (.I0(Q[6]),
        .I1(\r_oShapeY[9]_i_8_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\r_oShapeY[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \r_oShapeY[7]_i_7 
       (.I0(p_0_in66_in),
        .I1(p_0_in84_in),
        .I2(p_0_in86_in),
        .I3(Q[7]),
        .I4(\r_oShapeY[6]_i_4_n_0 ),
        .I5(Q[6]),
        .O(\r_oShapeY[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_oShapeY[7]_i_8 
       (.I0(\r_oShapeSize_reg[9]_0 [6]),
        .I1(i__carry_i_9_n_0),
        .I2(\r_oShapeSize_reg[9]_0 [5]),
        .I3(\r_oShapeSize_reg[9]_0 [7]),
        .O(\r_oShapeY[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_oShapeY[8]_i_3 
       (.I0(\r_oShapeY[6]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(r_oShapeY00_in[8]));
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeY[9]_i_11 
       (.I0(\r_oShapeY[9]_i_7_n_0 ),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(\r_oShapeY[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeY[9]_i_12 
       (.I0(p_0_in76_in),
        .I1(p_0_in78_in),
        .O(\r_oShapeY[9]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_oShapeY[9]_i_13 
       (.I0(\r_oShapeY[9]_i_5_n_0 ),
        .I1(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I2(p_0_in67_in),
        .I3(p_0_in89_in),
        .I4(p_1_in82_in),
        .O(\r_oShapeY[9]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_oShapeY[9]_i_14 
       (.I0(\r_oShapeY[6]_i_4_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .O(r_oShapeY00_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeY[9]_i_5 
       (.I0(p_0_in86_in),
        .I1(p_0_in84_in),
        .I2(p_0_in66_in),
        .O(\r_oShapeY[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_oShapeY[9]_i_7 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\r_oShapeY[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_oShapeY[9]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r_oShapeY[9]_i_8_n_0 ));
  FDSE \r_oShapeY_reg[0] 
       (.C(iClk),
        .CE(\r_oShapeY[7]_i_1_n_0 ),
        .D(timer_inst1_n_0),
        .Q(Q[0]),
        .S(p_1_in0));
  FDRE \r_oShapeY_reg[1] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(timer_inst1_n_40));
  FDRE \r_oShapeY_reg[2] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(timer_inst1_n_40));
  FDRE \r_oShapeY_reg[3] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(timer_inst1_n_40));
  FDRE \r_oShapeY_reg[4] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(timer_inst1_n_40));
  FDSE \r_oShapeY_reg[5] 
       (.C(iClk),
        .CE(\r_oShapeY[7]_i_1_n_0 ),
        .D(timer_inst1_n_2),
        .Q(Q[5]),
        .S(p_1_in0));
  FDSE \r_oShapeY_reg[6] 
       (.C(iClk),
        .CE(\r_oShapeY[7]_i_1_n_0 ),
        .D(timer_inst1_n_3),
        .Q(Q[6]),
        .S(p_1_in0));
  FDSE \r_oShapeY_reg[7] 
       (.C(iClk),
        .CE(\r_oShapeY[7]_i_1_n_0 ),
        .D(timer_inst1_n_4),
        .Q(Q[7]),
        .S(p_1_in0));
  FDRE \r_oShapeY_reg[8] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[8]),
        .Q(Q[8]),
        .R(timer_inst1_n_40));
  FDRE \r_oShapeY_reg[9] 
       (.C(iClk),
        .CE(timer_inst1_n_38),
        .D(p_2_in[9]),
        .Q(Q[9]),
        .R(timer_inst1_n_40));
  LUT2 #(
    .INIT(4'hE)) 
    r_oSpeedUp_i_2
       (.I0(iPage[0]),
        .I1(iPage[1]),
        .O(r_oSpeedUp_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    r_oSpeedUp_i_3
       (.I0(iRst),
        .I1(iGameRst),
        .I2(\FSM_onehot_rCurr_reg_n_0_[8] ),
        .I3(p_0_in67_in),
        .O(r_oSpeedUp_i_3_n_0));
  FDRE r_oSpeedUp_reg
       (.C(iClk),
        .CE(1'b1),
        .D(timer_inst1_n_52),
        .Q(oSpeedUp),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer timer_inst1
       (.CO(r_oShapeX255_in),
        .D({p_2_in[9:8],p_2_in[4:1]}),
        .DI(\r_oShapeSize[3]_i_2_n_0 ),
        .E(timer_inst1_n_34),
        .\FSM_onehot_rCurr_reg[0] (timer_inst1_n_36),
        .\FSM_onehot_rCurr_reg[0]_0 (timer_inst1_n_42),
        .\FSM_onehot_rCurr_reg[10] (timer_inst1_n_17),
        .\FSM_onehot_rCurr_reg[12] (timer_inst1_n_1),
        .\FSM_onehot_rCurr_reg[12]_0 (timer_inst1_n_16),
        .\FSM_onehot_rCurr_reg[12]_1 (timer_inst1_n_38),
        .\FSM_onehot_rCurr_reg[13] (timer_inst1_n_54),
        .\FSM_onehot_rCurr_reg[14] (timer_inst1_n_6),
        .\FSM_onehot_rCurr_reg[14]_0 (timer_inst1_n_39),
        .\FSM_onehot_rCurr_reg[2] (timer_inst1_n_52),
        .\FSM_onehot_rCurr_reg[3] (timer_inst1_n_18),
        .\FSM_onehot_rCurr_reg[3]_0 ({timer_inst1_n_27,timer_inst1_n_28,timer_inst1_n_29,timer_inst1_n_30,timer_inst1_n_31,timer_inst1_n_32}),
        .\FSM_onehot_rCurr_reg[4] (timer_inst1_n_19),
        .\FSM_onehot_rCurr_reg[7] (timer_inst1_n_20),
        .\FSM_onehot_rCurr_reg[8] (timer_inst1_n_7),
        .\FSM_onehot_rCurr_reg[8]_0 (timer_inst1_n_14),
        .\FSM_onehot_rCurr_reg[8]_1 (timer_inst1_n_41),
        .O({timer_inst1_n_50,timer_inst1_n_51}),
        .Q({Q[9:6],Q[4:0]}),
        .S({\r_oShapeSize[3]_i_3_n_0 ,\r_oShapeSize[3]_i_4_n_0 ,\r_oShapeSize[3]_i_5_n_0 }),
        .SR(timer_inst1_n_33),
        .iClk(iClk),
        .iGameRst(iGameRst),
        .iPage(iPage),
        .iRst(iRst),
        .iRst_0(timer_inst1_n_40),
        .oLEDDown(oLEDDown),
        .oLEDUp(oLEDUp),
        .oLeft(oLeft),
        .oRight(oRight),
        .oSpeedUp(oSpeedUp),
        .p_1_in0(p_1_in0),
        .\r_CntCurr_reg[3]_0 (timer_inst1_n_13),
        .r_oLEDDown_reg(timer_inst1_n_53),
        .r_oLEDDown_reg_0(\FSM_onehot_rCurr[5]_i_2_n_0 ),
        .r_oLEDDown_reg_1(r_oLEDDown_i_4_n_0),
        .r_oLEDLeft37_out(r_oLEDLeft37_out),
        .r_oLEDLeft_i_3_0(r_oLEDLeft_i_11_n_0),
        .r_oLEDLeft_reg(r_oLEDLeft_i_8_n_0),
        .r_oLEDLeft_reg_0(r_oLEDLeft_i_10_n_0),
        .r_oLEDRight46_out(r_oLEDRight46_out),
        .r_oLEDRight_i_4_0(r_oLEDRight_i_12_n_0),
        .r_oLEDRight_reg(r_oLEDRight_i_7_n_0),
        .r_oLEDRight_reg_0(r_oLEDRight_i_9_n_0),
        .r_oLEDRight_reg_1(r_oLEDRight_i_10_n_0),
        .r_oLEDUp_reg(\r_oShapeY[9]_i_5_n_0 ),
        .r_oLEDUp_reg_0(\r_oShapeY[7]_i_4_n_0 ),
        .r_oLEDUp_reg_1(\r_oShapeY[9]_i_13_n_0 ),
        .r_oLEDUp_reg_2(\r_oShapeY[7]_i_3_n_0 ),
        .r_oLEDUp_reg_3(r_oLEDUp_i_4_n_0),
        .r_oLeft_reg(timer_inst1_n_15),
        .r_oLeft_reg_0(r_oLeft_i_3_n_0),
        .r_oLeft_reg_1(r_oLeft_i_5_n_0),
        .r_oLeft_reg_2(\FSM_onehot_rCurr[15]_i_3_n_0 ),
        .r_oLeft_reg_3(r_oLeft_i_8_n_0),
        .r_oRight_reg(r_oRight_i_3_n_0),
        .r_oRight_reg_0(r_oRight_i_4_n_0),
        .\r_oShapeSize_reg[0] (timer_inst1_n_9),
        .\r_oShapeSize_reg[0]_0 (timer_inst1_n_10),
        .\r_oShapeSize_reg[0]_1 (timer_inst1_n_12),
        .\r_oShapeSize_reg[0]_2 (\r_oShapeSize_reg[9]_0 ),
        .\r_oShapeSize_reg[1] (\r_oShapeSize[9]_i_8_n_0 ),
        .\r_oShapeSize_reg[1]_0 (\r_oShapeSize[9]_i_9_n_0 ),
        .\r_oShapeSize_reg[4] (r_oShapeSize),
        .\r_oShapeSize_reg[7] ({timer_inst1_n_45,timer_inst1_n_46,timer_inst1_n_47,timer_inst1_n_48,timer_inst1_n_49}),
        .\r_oShapeSize_reg[7]_0 ({\r_oShapeSize[7]_i_2_n_0 ,\r_oShapeSize[7]_i_3_n_0 ,\r_oShapeSize[7]_i_4_n_0 ,\r_oShapeSize[7]_i_5_n_0 }),
        .\r_oShapeSize_reg[8] (timer_inst1_n_11),
        .\r_oShapeSize_reg[8]_0 (timer_inst1_n_37),
        .\r_oShapeSize_reg[9] (\r_oShapeSize[9]_i_7_n_0 ),
        .\r_oShapeX_reg[0] (\r_oShapeX[0]_i_2_n_0 ),
        .\r_oShapeX_reg[0]_0 ({p_0_in86_in,p_0_in84_in,p_1_in82_in,p_0_in80_in,p_0_in78_in,p_1_in69_in,p_1_in,\FSM_onehot_rCurr_reg_n_0_[8] ,p_0_in76_in,p_1_in74_in,p_0_in72_in,p_1_in70_in,p_0_in67_in,p_0_in66_in,p_0_in89_in}),
        .\r_oShapeX_reg[1] (\r_oShapeX[9]_i_6_n_0 ),
        .\r_oShapeX_reg[1]_0 (\r_oShapeX[9]_i_7_n_0 ),
        .\r_oShapeX_reg[1]_1 (\r_oShapeX[9]_i_9_n_0 ),
        .\r_oShapeX_reg[1]_2 (\r_oShapeX[9]_i_10_n_0 ),
        .\r_oShapeX_reg[2] (\r_oShapeX[2]_i_2_n_0 ),
        .\r_oShapeX_reg[3] (\r_oShapeX[3]_i_2_n_0 ),
        .\r_oShapeX_reg[3]_0 (\r_oShapeX[3]_i_3_n_0 ),
        .\r_oShapeX_reg[3]_1 (\r_oShapeX[3]_i_4_n_0 ),
        .\r_oShapeX_reg[4] (timer_inst1_n_5),
        .\r_oShapeX_reg[4]_0 (\r_oShapeX[8]_i_6_n_0 ),
        .\r_oShapeX_reg[4]_1 (\r_oShapeX[4]_i_2_n_0 ),
        .\r_oShapeX_reg[4]_2 (\r_oShapeX[5]_i_5_n_0 ),
        .\r_oShapeX_reg[4]_3 (\r_oShapeX[8]_i_10_n_0 ),
        .\r_oShapeX_reg[4]_4 (r_oShapeX260_in),
        .\r_oShapeX_reg[4]_5 (\r_oShapeX[8]_i_8_n_0 ),
        .\r_oShapeX_reg[5] (\r_oShapeX[5]_i_2_n_0 ),
        .\r_oShapeX_reg[5]_0 (\r_oShapeX[5]_i_3_n_0 ),
        .\r_oShapeX_reg[5]_1 (\r_oShapeX[5]_i_4_n_0 ),
        .\r_oShapeX_reg[6] (\r_oShapeX[6]_i_2_n_0 ),
        .\r_oShapeX_reg[6]_0 (\r_oShapeX[6]_i_3_n_0 ),
        .\r_oShapeX_reg[6]_1 (\r_oShapeX[6]_i_4_n_0 ),
        .\r_oShapeX_reg[7] (\r_oShapeX[7]_i_2_n_0 ),
        .\r_oShapeX_reg[7]_0 (\r_oShapeX[7]_i_3_n_0 ),
        .\r_oShapeX_reg[7]_1 (\r_oShapeX[7]_i_4_n_0 ),
        .\r_oShapeX_reg[8] (timer_inst1_n_8),
        .\r_oShapeX_reg[8]_0 ({\r_oShapeX_reg[9]_0 [8],\r_oShapeX_reg[9]_0 [4],\r_oShapeX_reg[9]_0 [2:0]}),
        .\r_oShapeX_reg[8]_1 (\r_oShapeX[8]_i_5_n_0 ),
        .\r_oShapeX_reg[8]_2 (\r_oShapeX[8]_i_9_n_0 ),
        .\r_oShapeX_reg[8]_3 (i__carry__0_i_7__0_n_0),
        .\r_oShapeX_reg[9] (\r_oShapeX[9]_i_12_n_0 ),
        .\r_oShapeX_reg[9]_0 (\r_oShapeX[9]_i_14_n_0 ),
        .\r_oShapeX_reg[9]_1 (\r_oShapeX[9]_i_15_n_0 ),
        .\r_oShapeX_reg[9]_2 (\r_oShapeX[9]_i_21_n_0 ),
        .\r_oShapeX_reg[9]_3 (\r_oShapeX[9]_i_17_n_0 ),
        .\r_oShapeX_reg[9]_4 (\r_oShapeX[9]_i_4_n_0 ),
        .r_oShapeY00_in({r_oShapeY00_in[9:8],r_oShapeY00_in[5],r_oShapeY00_in[3]}),
        .\r_oShapeY_reg[0] (timer_inst1_n_0),
        .\r_oShapeY_reg[0]_0 (timer_inst1_n_2),
        .\r_oShapeY_reg[0]_1 (\r_oShapeY[9]_i_12_n_0 ),
        .\r_oShapeY_reg[1] (\r_oShapeX[1]_i_2_n_0 ),
        .\r_oShapeY_reg[1]_0 (\r_oShapeY[1]_i_2_n_0 ),
        .\r_oShapeY_reg[2] (\r_oShapeY[2]_i_3_n_0 ),
        .\r_oShapeY_reg[2]_0 (\r_oShapeX[2]_i_3_n_0 ),
        .\r_oShapeY_reg[4] (\r_oShapeY[9]_i_8_n_0 ),
        .\r_oShapeY_reg[4]_0 (\r_oShapeY[4]_i_3_n_0 ),
        .\r_oShapeY_reg[4]_1 (i__carry_i_10_n_0),
        .\r_oShapeY_reg[5] (\r_oShapeY[5]_i_3_n_0 ),
        .\r_oShapeY_reg[6] (timer_inst1_n_3),
        .\r_oShapeY_reg[6]_0 (\r_oShapeY[6]_i_3_n_0 ),
        .\r_oShapeY_reg[6]_1 (\r_oShapeY[6]_i_4_n_0 ),
        .\r_oShapeY_reg[6]_2 (\r_oShapeY[6]_i_5_n_0 ),
        .\r_oShapeY_reg[7] (timer_inst1_n_4),
        .\r_oShapeY_reg[7]_0 (\r_oShapeY[7]_i_6_n_0 ),
        .\r_oShapeY_reg[7]_1 (\r_oShapeY[7]_i_7_n_0 ),
        .\r_oShapeY_reg[7]_2 (\r_oShapeY[7]_i_8_n_0 ),
        .\r_oShapeY_reg[8] (\r_oShapeY[9]_i_7_n_0 ),
        .\r_oShapeY_reg[8]_0 (i__carry__0_i_8_n_0),
        .\r_oShapeY_reg[9] (\r_oShapeY[9]_i_11_n_0 ),
        .\r_oShapeY_reg[9]_0 (i__carry__0_i_7_n_0),
        .r_oSpeedUp_reg(r_oSpeedUp_i_2_n_0),
        .r_oSpeedUp_reg_0(r_oSpeedUp_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_buttonCtrl_0_0,buttonCtrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "buttonCtrl,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (iClk,
    iRst,
    iGameRst,
    iPage,
    iPushUp,
    iPushDown,
    iPushLeft,
    iPushRight,
    oShapeX,
    oShapeY,
    oShapeSize,
    oLeft,
    oRight,
    oSpeedUp,
    oLEDUp,
    oLEDDown,
    oLEDLeft,
    oLEDRight);
  input iClk;
  input iRst;
  input iGameRst;
  input [1:0]iPage;
  input iPushUp;
  input iPushDown;
  input iPushLeft;
  input iPushRight;
  output [9:0]oShapeX;
  output [9:0]oShapeY;
  output [9:0]oShapeSize;
  output oLeft;
  output oRight;
  output oSpeedUp;
  output oLEDUp;
  output oLEDDown;
  output oLEDLeft;
  output oLEDRight;

  wire iClk;
  wire iGameRst;
  wire [1:0]iPage;
  wire iPushDown;
  wire iPushLeft;
  wire iPushRight;
  wire iPushUp;
  wire iRst;
  wire oLEDDown;
  wire oLEDLeft;
  wire oLEDRight;
  wire oLEDUp;
  wire oLeft;
  wire oRight;
  wire [9:0]oShapeSize;
  wire [9:0]oShapeX;
  wire [9:0]oShapeY;
  wire oSpeedUp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buttonCtrl inst
       (.Q(oShapeY),
        .iClk(iClk),
        .iGameRst(iGameRst),
        .iPage(iPage),
        .iPushDown(iPushDown),
        .iPushLeft(iPushLeft),
        .iPushRight(iPushRight),
        .iPushUp(iPushUp),
        .iRst(iRst),
        .oLEDDown(oLEDDown),
        .oLEDLeft(oLEDLeft),
        .oLEDRight(oLEDRight),
        .oLEDUp(oLEDUp),
        .oLeft(oLeft),
        .oRight(oRight),
        .oSpeedUp(oSpeedUp),
        .\r_oShapeSize_reg[9]_0 (oShapeSize),
        .\r_oShapeX_reg[9]_0 (oShapeX));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer
   (\r_oShapeY_reg[0] ,
    \FSM_onehot_rCurr_reg[12] ,
    \r_oShapeY_reg[0]_0 ,
    \r_oShapeY_reg[6] ,
    \r_oShapeY_reg[7] ,
    \r_oShapeX_reg[4] ,
    \FSM_onehot_rCurr_reg[14] ,
    \FSM_onehot_rCurr_reg[8] ,
    \r_oShapeX_reg[8] ,
    \r_oShapeSize_reg[0] ,
    \r_oShapeSize_reg[0]_0 ,
    \r_oShapeSize_reg[8] ,
    \r_oShapeSize_reg[0]_1 ,
    \r_CntCurr_reg[3]_0 ,
    \FSM_onehot_rCurr_reg[8]_0 ,
    r_oLeft_reg,
    \FSM_onehot_rCurr_reg[12]_0 ,
    \FSM_onehot_rCurr_reg[10] ,
    \FSM_onehot_rCurr_reg[3] ,
    \FSM_onehot_rCurr_reg[4] ,
    \FSM_onehot_rCurr_reg[7] ,
    D,
    \FSM_onehot_rCurr_reg[3]_0 ,
    SR,
    E,
    \r_oShapeSize_reg[4] ,
    \FSM_onehot_rCurr_reg[0] ,
    \r_oShapeSize_reg[8]_0 ,
    \FSM_onehot_rCurr_reg[12]_1 ,
    \FSM_onehot_rCurr_reg[14]_0 ,
    iRst_0,
    \FSM_onehot_rCurr_reg[8]_1 ,
    \FSM_onehot_rCurr_reg[0]_0 ,
    r_oLEDLeft37_out,
    r_oLEDRight46_out,
    \r_oShapeSize_reg[7] ,
    O,
    \FSM_onehot_rCurr_reg[2] ,
    r_oLEDDown_reg,
    \FSM_onehot_rCurr_reg[13] ,
    iClk,
    Q,
    \r_oShapeY_reg[5] ,
    \r_oShapeY_reg[6]_0 ,
    \r_oShapeY_reg[4] ,
    \r_oShapeY_reg[7]_0 ,
    \r_oShapeX_reg[8]_0 ,
    \r_oShapeX_reg[4]_0 ,
    \r_oShapeX_reg[4]_1 ,
    \r_oShapeX_reg[5] ,
    \r_oShapeX_reg[5]_0 ,
    \r_oShapeX_reg[5]_1 ,
    \r_oShapeX_reg[8]_1 ,
    \r_oShapeX_reg[0] ,
    \r_oShapeSize_reg[0]_2 ,
    \r_oShapeX_reg[0]_0 ,
    iRst,
    r_oLEDUp_reg,
    r_oLEDUp_reg_0,
    iPage,
    r_oLEDUp_reg_1,
    r_oLEDUp_reg_2,
    r_oSpeedUp_reg,
    r_oLEDUp_reg_3,
    r_oLEDDown_reg_0,
    r_oLEDDown_reg_1,
    p_1_in0,
    oRight,
    r_oRight_reg,
    r_oRight_reg_0,
    r_oLeft_reg_0,
    r_oLeft_reg_1,
    oLeft,
    r_oLeft_reg_2,
    r_oLeft_reg_3,
    r_oLEDRight_reg,
    r_oLEDRight_reg_0,
    r_oLEDRight_reg_1,
    r_oLEDRight_i_4_0,
    r_oLEDLeft_reg,
    r_oLEDLeft_i_3_0,
    CO,
    \r_oShapeY_reg[1] ,
    \r_oShapeY_reg[1]_0 ,
    \r_oShapeY_reg[8] ,
    \r_oShapeY_reg[9] ,
    \r_oShapeY_reg[2] ,
    \r_oShapeY_reg[2]_0 ,
    r_oShapeY00_in,
    \r_oShapeX_reg[3] ,
    \r_oShapeY_reg[4]_0 ,
    \r_oShapeY_reg[4]_1 ,
    \r_oShapeY_reg[6]_1 ,
    \r_oShapeY_reg[6]_2 ,
    \r_oShapeY_reg[7]_1 ,
    \r_oShapeY_reg[7]_2 ,
    \r_oShapeY_reg[8]_0 ,
    \r_oShapeY_reg[9]_0 ,
    \r_oShapeX_reg[2] ,
    \r_oShapeX_reg[3]_0 ,
    \r_oShapeX_reg[3]_1 ,
    \r_oShapeX_reg[4]_2 ,
    \r_oShapeX_reg[4]_3 ,
    \r_oShapeX_reg[4]_4 ,
    \r_oShapeX_reg[6] ,
    \r_oShapeX_reg[6]_0 ,
    \r_oShapeX_reg[6]_1 ,
    \r_oShapeX_reg[7] ,
    \r_oShapeX_reg[7]_0 ,
    \r_oShapeX_reg[7]_1 ,
    \r_oShapeX_reg[8]_2 ,
    \r_oShapeX_reg[8]_3 ,
    \r_oShapeX_reg[9] ,
    \r_oShapeX_reg[9]_0 ,
    \r_oShapeX_reg[9]_1 ,
    \r_oShapeX_reg[9]_2 ,
    \r_oShapeX_reg[9]_3 ,
    iGameRst,
    \r_oShapeSize_reg[1] ,
    \r_oShapeSize_reg[1]_0 ,
    \r_oShapeX_reg[1] ,
    \r_oShapeX_reg[1]_0 ,
    \r_oShapeX_reg[1]_1 ,
    \r_oShapeX_reg[1]_2 ,
    \r_oShapeX_reg[9]_4 ,
    \r_oShapeX_reg[4]_5 ,
    \r_oShapeY_reg[0]_1 ,
    r_oLEDLeft_reg_0,
    DI,
    S,
    \r_oShapeSize_reg[7]_0 ,
    \r_oShapeSize_reg[9] ,
    r_oSpeedUp_reg_0,
    oSpeedUp,
    oLEDDown,
    oLEDUp);
  output \r_oShapeY_reg[0] ;
  output \FSM_onehot_rCurr_reg[12] ;
  output \r_oShapeY_reg[0]_0 ;
  output \r_oShapeY_reg[6] ;
  output \r_oShapeY_reg[7] ;
  output \r_oShapeX_reg[4] ;
  output \FSM_onehot_rCurr_reg[14] ;
  output \FSM_onehot_rCurr_reg[8] ;
  output \r_oShapeX_reg[8] ;
  output \r_oShapeSize_reg[0] ;
  output \r_oShapeSize_reg[0]_0 ;
  output \r_oShapeSize_reg[8] ;
  output \r_oShapeSize_reg[0]_1 ;
  output \r_CntCurr_reg[3]_0 ;
  output \FSM_onehot_rCurr_reg[8]_0 ;
  output r_oLeft_reg;
  output \FSM_onehot_rCurr_reg[12]_0 ;
  output \FSM_onehot_rCurr_reg[10] ;
  output \FSM_onehot_rCurr_reg[3] ;
  output \FSM_onehot_rCurr_reg[4] ;
  output \FSM_onehot_rCurr_reg[7] ;
  output [5:0]D;
  output [5:0]\FSM_onehot_rCurr_reg[3]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output [0:0]\r_oShapeSize_reg[4] ;
  output \FSM_onehot_rCurr_reg[0] ;
  output \r_oShapeSize_reg[8]_0 ;
  output [0:0]\FSM_onehot_rCurr_reg[12]_1 ;
  output [0:0]\FSM_onehot_rCurr_reg[14]_0 ;
  output [0:0]iRst_0;
  output \FSM_onehot_rCurr_reg[8]_1 ;
  output \FSM_onehot_rCurr_reg[0]_0 ;
  output r_oLEDLeft37_out;
  output r_oLEDRight46_out;
  output [4:0]\r_oShapeSize_reg[7] ;
  output [1:0]O;
  output \FSM_onehot_rCurr_reg[2] ;
  output r_oLEDDown_reg;
  output \FSM_onehot_rCurr_reg[13] ;
  input iClk;
  input [8:0]Q;
  input \r_oShapeY_reg[5] ;
  input \r_oShapeY_reg[6]_0 ;
  input \r_oShapeY_reg[4] ;
  input \r_oShapeY_reg[7]_0 ;
  input [4:0]\r_oShapeX_reg[8]_0 ;
  input \r_oShapeX_reg[4]_0 ;
  input \r_oShapeX_reg[4]_1 ;
  input \r_oShapeX_reg[5] ;
  input \r_oShapeX_reg[5]_0 ;
  input \r_oShapeX_reg[5]_1 ;
  input \r_oShapeX_reg[8]_1 ;
  input \r_oShapeX_reg[0] ;
  input [9:0]\r_oShapeSize_reg[0]_2 ;
  input [14:0]\r_oShapeX_reg[0]_0 ;
  input iRst;
  input r_oLEDUp_reg;
  input r_oLEDUp_reg_0;
  input [1:0]iPage;
  input r_oLEDUp_reg_1;
  input r_oLEDUp_reg_2;
  input r_oSpeedUp_reg;
  input r_oLEDUp_reg_3;
  input r_oLEDDown_reg_0;
  input r_oLEDDown_reg_1;
  input p_1_in0;
  input oRight;
  input r_oRight_reg;
  input r_oRight_reg_0;
  input r_oLeft_reg_0;
  input r_oLeft_reg_1;
  input oLeft;
  input r_oLeft_reg_2;
  input r_oLeft_reg_3;
  input r_oLEDRight_reg;
  input r_oLEDRight_reg_0;
  input r_oLEDRight_reg_1;
  input r_oLEDRight_i_4_0;
  input r_oLEDLeft_reg;
  input r_oLEDLeft_i_3_0;
  input [0:0]CO;
  input \r_oShapeY_reg[1] ;
  input \r_oShapeY_reg[1]_0 ;
  input \r_oShapeY_reg[8] ;
  input \r_oShapeY_reg[9] ;
  input \r_oShapeY_reg[2] ;
  input \r_oShapeY_reg[2]_0 ;
  input [3:0]r_oShapeY00_in;
  input \r_oShapeX_reg[3] ;
  input \r_oShapeY_reg[4]_0 ;
  input \r_oShapeY_reg[4]_1 ;
  input \r_oShapeY_reg[6]_1 ;
  input \r_oShapeY_reg[6]_2 ;
  input \r_oShapeY_reg[7]_1 ;
  input \r_oShapeY_reg[7]_2 ;
  input \r_oShapeY_reg[8]_0 ;
  input \r_oShapeY_reg[9]_0 ;
  input \r_oShapeX_reg[2] ;
  input \r_oShapeX_reg[3]_0 ;
  input \r_oShapeX_reg[3]_1 ;
  input \r_oShapeX_reg[4]_2 ;
  input \r_oShapeX_reg[4]_3 ;
  input [0:0]\r_oShapeX_reg[4]_4 ;
  input \r_oShapeX_reg[6] ;
  input \r_oShapeX_reg[6]_0 ;
  input \r_oShapeX_reg[6]_1 ;
  input \r_oShapeX_reg[7] ;
  input \r_oShapeX_reg[7]_0 ;
  input \r_oShapeX_reg[7]_1 ;
  input \r_oShapeX_reg[8]_2 ;
  input \r_oShapeX_reg[8]_3 ;
  input \r_oShapeX_reg[9] ;
  input \r_oShapeX_reg[9]_0 ;
  input \r_oShapeX_reg[9]_1 ;
  input \r_oShapeX_reg[9]_2 ;
  input \r_oShapeX_reg[9]_3 ;
  input iGameRst;
  input \r_oShapeSize_reg[1] ;
  input \r_oShapeSize_reg[1]_0 ;
  input \r_oShapeX_reg[1] ;
  input \r_oShapeX_reg[1]_0 ;
  input \r_oShapeX_reg[1]_1 ;
  input \r_oShapeX_reg[1]_2 ;
  input \r_oShapeX_reg[9]_4 ;
  input \r_oShapeX_reg[4]_5 ;
  input \r_oShapeY_reg[0]_1 ;
  input r_oLEDLeft_reg_0;
  input [0:0]DI;
  input [2:0]S;
  input [3:0]\r_oShapeSize_reg[7]_0 ;
  input [0:0]\r_oShapeSize_reg[9] ;
  input r_oSpeedUp_reg_0;
  input oSpeedUp;
  input oLEDDown;
  input oLEDUp;

  wire [0:0]CO;
  wire [5:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_rCurr_reg[0] ;
  wire \FSM_onehot_rCurr_reg[0]_0 ;
  wire \FSM_onehot_rCurr_reg[10] ;
  wire \FSM_onehot_rCurr_reg[12] ;
  wire \FSM_onehot_rCurr_reg[12]_0 ;
  wire [0:0]\FSM_onehot_rCurr_reg[12]_1 ;
  wire \FSM_onehot_rCurr_reg[13] ;
  wire \FSM_onehot_rCurr_reg[14] ;
  wire [0:0]\FSM_onehot_rCurr_reg[14]_0 ;
  wire \FSM_onehot_rCurr_reg[2] ;
  wire \FSM_onehot_rCurr_reg[3] ;
  wire [5:0]\FSM_onehot_rCurr_reg[3]_0 ;
  wire \FSM_onehot_rCurr_reg[4] ;
  wire \FSM_onehot_rCurr_reg[7] ;
  wire \FSM_onehot_rCurr_reg[8] ;
  wire \FSM_onehot_rCurr_reg[8]_0 ;
  wire \FSM_onehot_rCurr_reg[8]_1 ;
  wire [1:0]O;
  wire [8:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire iClk;
  wire iGameRst;
  wire [1:0]iPage;
  wire iRst;
  wire [0:0]iRst_0;
  wire oLEDDown;
  wire oLEDUp;
  wire oLeft;
  wire oRight;
  wire oSpeedUp;
  wire p_1_in0;
  wire \r_CntCurr[0]_i_1_n_0 ;
  wire \r_CntCurr[0]_i_3_n_0 ;
  wire \r_CntCurr[0]_i_4_n_0 ;
  wire \r_CntCurr[0]_i_5_n_0 ;
  wire \r_CntCurr[0]_i_6_n_0 ;
  wire \r_CntCurr[0]_i_7_n_0 ;
  wire \r_CntCurr[0]_i_8_n_0 ;
  wire \r_CntCurr[0]_i_9_n_0 ;
  wire [17:0]r_CntCurr_reg;
  wire \r_CntCurr_reg[0]_i_2_n_0 ;
  wire \r_CntCurr_reg[0]_i_2_n_1 ;
  wire \r_CntCurr_reg[0]_i_2_n_2 ;
  wire \r_CntCurr_reg[0]_i_2_n_3 ;
  wire \r_CntCurr_reg[0]_i_2_n_4 ;
  wire \r_CntCurr_reg[0]_i_2_n_5 ;
  wire \r_CntCurr_reg[0]_i_2_n_6 ;
  wire \r_CntCurr_reg[0]_i_2_n_7 ;
  wire \r_CntCurr_reg[12]_i_1_n_0 ;
  wire \r_CntCurr_reg[12]_i_1_n_1 ;
  wire \r_CntCurr_reg[12]_i_1_n_2 ;
  wire \r_CntCurr_reg[12]_i_1_n_3 ;
  wire \r_CntCurr_reg[12]_i_1_n_4 ;
  wire \r_CntCurr_reg[12]_i_1_n_5 ;
  wire \r_CntCurr_reg[12]_i_1_n_6 ;
  wire \r_CntCurr_reg[12]_i_1_n_7 ;
  wire \r_CntCurr_reg[16]_i_1_n_3 ;
  wire \r_CntCurr_reg[16]_i_1_n_6 ;
  wire \r_CntCurr_reg[16]_i_1_n_7 ;
  wire \r_CntCurr_reg[3]_0 ;
  wire \r_CntCurr_reg[4]_i_1_n_0 ;
  wire \r_CntCurr_reg[4]_i_1_n_1 ;
  wire \r_CntCurr_reg[4]_i_1_n_2 ;
  wire \r_CntCurr_reg[4]_i_1_n_3 ;
  wire \r_CntCurr_reg[4]_i_1_n_4 ;
  wire \r_CntCurr_reg[4]_i_1_n_5 ;
  wire \r_CntCurr_reg[4]_i_1_n_6 ;
  wire \r_CntCurr_reg[4]_i_1_n_7 ;
  wire \r_CntCurr_reg[8]_i_1_n_0 ;
  wire \r_CntCurr_reg[8]_i_1_n_1 ;
  wire \r_CntCurr_reg[8]_i_1_n_2 ;
  wire \r_CntCurr_reg[8]_i_1_n_3 ;
  wire \r_CntCurr_reg[8]_i_1_n_4 ;
  wire \r_CntCurr_reg[8]_i_1_n_5 ;
  wire \r_CntCurr_reg[8]_i_1_n_6 ;
  wire \r_CntCurr_reg[8]_i_1_n_7 ;
  wire r_oLEDDown_i_2_n_0;
  wire r_oLEDDown_i_3_n_0;
  wire r_oLEDDown_reg;
  wire r_oLEDDown_reg_0;
  wire r_oLEDDown_reg_1;
  wire r_oLEDLeft37_out;
  wire r_oLEDLeft_i_3_0;
  wire r_oLEDLeft_i_7_n_0;
  wire r_oLEDLeft_i_9_n_0;
  wire r_oLEDLeft_reg;
  wire r_oLEDLeft_reg_0;
  wire r_oLEDRight46_out;
  wire r_oLEDRight_i_11_n_0;
  wire r_oLEDRight_i_4_0;
  wire r_oLEDRight_i_8_n_0;
  wire r_oLEDRight_reg;
  wire r_oLEDRight_reg_0;
  wire r_oLEDRight_reg_1;
  wire r_oLEDUp_i_2_n_0;
  wire r_oLEDUp_i_3_n_0;
  wire r_oLEDUp_reg;
  wire r_oLEDUp_reg_0;
  wire r_oLEDUp_reg_1;
  wire r_oLEDUp_reg_2;
  wire r_oLEDUp_reg_3;
  wire r_oLeft_i_2_n_0;
  wire r_oLeft_i_4_n_0;
  wire r_oLeft_i_6_n_0;
  wire r_oLeft_i_7_n_0;
  wire r_oLeft_i_9_n_0;
  wire r_oLeft_reg;
  wire r_oLeft_reg_0;
  wire r_oLeft_reg_1;
  wire r_oLeft_reg_2;
  wire r_oLeft_reg_3;
  wire r_oRight_i_2_n_0;
  wire r_oRight_reg;
  wire r_oRight_reg_0;
  wire \r_oShapeSize[3]_i_6_n_0 ;
  wire \r_oShapeSize_reg[0] ;
  wire \r_oShapeSize_reg[0]_0 ;
  wire \r_oShapeSize_reg[0]_1 ;
  wire [9:0]\r_oShapeSize_reg[0]_2 ;
  wire \r_oShapeSize_reg[1] ;
  wire \r_oShapeSize_reg[1]_0 ;
  wire \r_oShapeSize_reg[3]_i_1_n_0 ;
  wire \r_oShapeSize_reg[3]_i_1_n_1 ;
  wire \r_oShapeSize_reg[3]_i_1_n_2 ;
  wire \r_oShapeSize_reg[3]_i_1_n_3 ;
  wire \r_oShapeSize_reg[3]_i_1_n_4 ;
  wire \r_oShapeSize_reg[3]_i_1_n_7 ;
  wire [0:0]\r_oShapeSize_reg[4] ;
  wire [4:0]\r_oShapeSize_reg[7] ;
  wire [3:0]\r_oShapeSize_reg[7]_0 ;
  wire \r_oShapeSize_reg[7]_i_1_n_0 ;
  wire \r_oShapeSize_reg[7]_i_1_n_1 ;
  wire \r_oShapeSize_reg[7]_i_1_n_2 ;
  wire \r_oShapeSize_reg[7]_i_1_n_3 ;
  wire \r_oShapeSize_reg[8] ;
  wire \r_oShapeSize_reg[8]_0 ;
  wire [0:0]\r_oShapeSize_reg[9] ;
  wire \r_oShapeX[0]_i_3_n_0 ;
  wire \r_oShapeX[4]_i_3_n_0 ;
  wire \r_oShapeX[8]_i_7_n_0 ;
  wire \r_oShapeX[9]_i_11_n_0 ;
  wire \r_oShapeX[9]_i_13_n_0 ;
  wire \r_oShapeX[9]_i_16_n_0 ;
  wire \r_oShapeX[9]_i_18_n_0 ;
  wire \r_oShapeX[9]_i_19_n_0 ;
  wire \r_oShapeX[9]_i_20_n_0 ;
  wire \r_oShapeX[9]_i_5_n_0 ;
  wire \r_oShapeX_reg[0] ;
  wire [14:0]\r_oShapeX_reg[0]_0 ;
  wire \r_oShapeX_reg[1] ;
  wire \r_oShapeX_reg[1]_0 ;
  wire \r_oShapeX_reg[1]_1 ;
  wire \r_oShapeX_reg[1]_2 ;
  wire \r_oShapeX_reg[2] ;
  wire \r_oShapeX_reg[3] ;
  wire \r_oShapeX_reg[3]_0 ;
  wire \r_oShapeX_reg[3]_1 ;
  wire \r_oShapeX_reg[4] ;
  wire \r_oShapeX_reg[4]_0 ;
  wire \r_oShapeX_reg[4]_1 ;
  wire \r_oShapeX_reg[4]_2 ;
  wire \r_oShapeX_reg[4]_3 ;
  wire [0:0]\r_oShapeX_reg[4]_4 ;
  wire \r_oShapeX_reg[4]_5 ;
  wire \r_oShapeX_reg[5] ;
  wire \r_oShapeX_reg[5]_0 ;
  wire \r_oShapeX_reg[5]_1 ;
  wire \r_oShapeX_reg[6] ;
  wire \r_oShapeX_reg[6]_0 ;
  wire \r_oShapeX_reg[6]_1 ;
  wire \r_oShapeX_reg[7] ;
  wire \r_oShapeX_reg[7]_0 ;
  wire \r_oShapeX_reg[7]_1 ;
  wire \r_oShapeX_reg[8] ;
  wire [4:0]\r_oShapeX_reg[8]_0 ;
  wire \r_oShapeX_reg[8]_1 ;
  wire \r_oShapeX_reg[8]_2 ;
  wire \r_oShapeX_reg[8]_3 ;
  wire \r_oShapeX_reg[9] ;
  wire \r_oShapeX_reg[9]_0 ;
  wire \r_oShapeX_reg[9]_1 ;
  wire \r_oShapeX_reg[9]_2 ;
  wire \r_oShapeX_reg[9]_3 ;
  wire \r_oShapeX_reg[9]_4 ;
  wire [3:0]r_oShapeY00_in;
  wire \r_oShapeY[0]_i_2_n_0 ;
  wire \r_oShapeY[0]_i_3_n_0 ;
  wire \r_oShapeY[2]_i_2_n_0 ;
  wire \r_oShapeY[3]_i_2_n_0 ;
  wire \r_oShapeY[4]_i_2_n_0 ;
  wire \r_oShapeY[5]_i_2_n_0 ;
  wire \r_oShapeY[6]_i_2_n_0 ;
  wire \r_oShapeY[7]_i_5_n_0 ;
  wire \r_oShapeY[8]_i_2_n_0 ;
  wire \r_oShapeY[9]_i_10_n_0 ;
  wire \r_oShapeY[9]_i_6_n_0 ;
  wire \r_oShapeY[9]_i_9_n_0 ;
  wire \r_oShapeY_reg[0] ;
  wire \r_oShapeY_reg[0]_0 ;
  wire \r_oShapeY_reg[0]_1 ;
  wire \r_oShapeY_reg[1] ;
  wire \r_oShapeY_reg[1]_0 ;
  wire \r_oShapeY_reg[2] ;
  wire \r_oShapeY_reg[2]_0 ;
  wire \r_oShapeY_reg[4] ;
  wire \r_oShapeY_reg[4]_0 ;
  wire \r_oShapeY_reg[4]_1 ;
  wire \r_oShapeY_reg[5] ;
  wire \r_oShapeY_reg[6] ;
  wire \r_oShapeY_reg[6]_0 ;
  wire \r_oShapeY_reg[6]_1 ;
  wire \r_oShapeY_reg[6]_2 ;
  wire \r_oShapeY_reg[7] ;
  wire \r_oShapeY_reg[7]_0 ;
  wire \r_oShapeY_reg[7]_1 ;
  wire \r_oShapeY_reg[7]_2 ;
  wire \r_oShapeY_reg[8] ;
  wire \r_oShapeY_reg[8]_0 ;
  wire \r_oShapeY_reg[9] ;
  wire \r_oShapeY_reg[9]_0 ;
  wire r_oSpeedUp_reg;
  wire r_oSpeedUp_reg_0;
  wire [3:1]\NLW_r_CntCurr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_CntCurr_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_r_oShapeSize_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_oShapeSize_reg[9]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \r_CntCurr[0]_i_1 
       (.I0(\r_CntCurr[0]_i_3_n_0 ),
        .I1(r_CntCurr_reg[4]),
        .I2(\r_CntCurr[0]_i_4_n_0 ),
        .I3(iRst),
        .I4(\r_CntCurr[0]_i_5_n_0 ),
        .I5(\r_CntCurr[0]_i_6_n_0 ),
        .O(\r_CntCurr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CFF0CFF0CFF0CAE)) 
    \r_CntCurr[0]_i_3 
       (.I0(\r_CntCurr[0]_i_8_n_0 ),
        .I1(r_CntCurr_reg[13]),
        .I2(\r_CntCurr[0]_i_9_n_0 ),
        .I3(\r_oShapeX[9]_i_18_n_0 ),
        .I4(r_CntCurr_reg[5]),
        .I5(r_CntCurr_reg[6]),
        .O(\r_CntCurr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \r_CntCurr[0]_i_4 
       (.I0(\r_oShapeX[9]_i_18_n_0 ),
        .I1(r_CntCurr_reg[3]),
        .O(\r_CntCurr[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_CntCurr[0]_i_5 
       (.I0(r_CntCurr_reg[9]),
        .I1(r_CntCurr_reg[8]),
        .I2(r_CntCurr_reg[11]),
        .I3(r_CntCurr_reg[10]),
        .O(\r_CntCurr[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_CntCurr[0]_i_6 
       (.I0(r_CntCurr_reg[16]),
        .I1(r_CntCurr_reg[17]),
        .I2(r_CntCurr_reg[14]),
        .I3(r_CntCurr_reg[15]),
        .I4(r_CntCurr_reg[12]),
        .O(\r_CntCurr[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_CntCurr[0]_i_7 
       (.I0(r_CntCurr_reg[0]),
        .O(\r_CntCurr[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_CntCurr[0]_i_8 
       (.I0(r_CntCurr_reg[0]),
        .I1(r_CntCurr_reg[1]),
        .I2(r_CntCurr_reg[2]),
        .I3(r_CntCurr_reg[4]),
        .O(\r_CntCurr[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_CntCurr[0]_i_9 
       (.I0(r_CntCurr_reg[15]),
        .I1(r_CntCurr_reg[14]),
        .I2(r_CntCurr_reg[17]),
        .I3(r_CntCurr_reg[16]),
        .O(\r_CntCurr[0]_i_9_n_0 ));
  FDRE \r_CntCurr_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[0]_i_2_n_7 ),
        .Q(r_CntCurr_reg[0]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_CntCurr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_CntCurr_reg[0]_i_2_n_0 ,\r_CntCurr_reg[0]_i_2_n_1 ,\r_CntCurr_reg[0]_i_2_n_2 ,\r_CntCurr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_CntCurr_reg[0]_i_2_n_4 ,\r_CntCurr_reg[0]_i_2_n_5 ,\r_CntCurr_reg[0]_i_2_n_6 ,\r_CntCurr_reg[0]_i_2_n_7 }),
        .S({r_CntCurr_reg[3:1],\r_CntCurr[0]_i_7_n_0 }));
  FDRE \r_CntCurr_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[8]_i_1_n_5 ),
        .Q(r_CntCurr_reg[10]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[8]_i_1_n_4 ),
        .Q(r_CntCurr_reg[11]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[12]_i_1_n_7 ),
        .Q(r_CntCurr_reg[12]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_CntCurr_reg[12]_i_1 
       (.CI(\r_CntCurr_reg[8]_i_1_n_0 ),
        .CO({\r_CntCurr_reg[12]_i_1_n_0 ,\r_CntCurr_reg[12]_i_1_n_1 ,\r_CntCurr_reg[12]_i_1_n_2 ,\r_CntCurr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_CntCurr_reg[12]_i_1_n_4 ,\r_CntCurr_reg[12]_i_1_n_5 ,\r_CntCurr_reg[12]_i_1_n_6 ,\r_CntCurr_reg[12]_i_1_n_7 }),
        .S(r_CntCurr_reg[15:12]));
  FDRE \r_CntCurr_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[12]_i_1_n_6 ),
        .Q(r_CntCurr_reg[13]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[12]_i_1_n_5 ),
        .Q(r_CntCurr_reg[14]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[12]_i_1_n_4 ),
        .Q(r_CntCurr_reg[15]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[16] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[16]_i_1_n_7 ),
        .Q(r_CntCurr_reg[16]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_CntCurr_reg[16]_i_1 
       (.CI(\r_CntCurr_reg[12]_i_1_n_0 ),
        .CO({\NLW_r_CntCurr_reg[16]_i_1_CO_UNCONNECTED [3:1],\r_CntCurr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_CntCurr_reg[16]_i_1_O_UNCONNECTED [3:2],\r_CntCurr_reg[16]_i_1_n_6 ,\r_CntCurr_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,r_CntCurr_reg[17:16]}));
  FDRE \r_CntCurr_reg[17] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[16]_i_1_n_6 ),
        .Q(r_CntCurr_reg[17]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[0]_i_2_n_6 ),
        .Q(r_CntCurr_reg[1]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[0]_i_2_n_5 ),
        .Q(r_CntCurr_reg[2]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[0]_i_2_n_4 ),
        .Q(r_CntCurr_reg[3]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[4]_i_1_n_7 ),
        .Q(r_CntCurr_reg[4]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_CntCurr_reg[4]_i_1 
       (.CI(\r_CntCurr_reg[0]_i_2_n_0 ),
        .CO({\r_CntCurr_reg[4]_i_1_n_0 ,\r_CntCurr_reg[4]_i_1_n_1 ,\r_CntCurr_reg[4]_i_1_n_2 ,\r_CntCurr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_CntCurr_reg[4]_i_1_n_4 ,\r_CntCurr_reg[4]_i_1_n_5 ,\r_CntCurr_reg[4]_i_1_n_6 ,\r_CntCurr_reg[4]_i_1_n_7 }),
        .S(r_CntCurr_reg[7:4]));
  FDRE \r_CntCurr_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[4]_i_1_n_6 ),
        .Q(r_CntCurr_reg[5]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[4]_i_1_n_5 ),
        .Q(r_CntCurr_reg[6]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[4]_i_1_n_4 ),
        .Q(r_CntCurr_reg[7]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  FDRE \r_CntCurr_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[8]_i_1_n_7 ),
        .Q(r_CntCurr_reg[8]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_CntCurr_reg[8]_i_1 
       (.CI(\r_CntCurr_reg[4]_i_1_n_0 ),
        .CO({\r_CntCurr_reg[8]_i_1_n_0 ,\r_CntCurr_reg[8]_i_1_n_1 ,\r_CntCurr_reg[8]_i_1_n_2 ,\r_CntCurr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_CntCurr_reg[8]_i_1_n_4 ,\r_CntCurr_reg[8]_i_1_n_5 ,\r_CntCurr_reg[8]_i_1_n_6 ,\r_CntCurr_reg[8]_i_1_n_7 }),
        .S(r_CntCurr_reg[11:8]));
  FDRE \r_CntCurr_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\r_CntCurr_reg[8]_i_1_n_6 ),
        .Q(r_CntCurr_reg[9]),
        .R(\r_CntCurr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    r_oLEDDown_i_1
       (.I0(r_oLEDDown_i_2_n_0),
        .I1(r_oLEDDown_i_3_n_0),
        .I2(oLEDDown),
        .O(r_oLEDDown_reg));
  LUT6 #(
    .INIT(64'h0C0F0C0C04000400)) 
    r_oLEDDown_i_2
       (.I0(\r_oShapeX_reg[0]_0 [5]),
        .I1(r_oLEDDown_reg_0),
        .I2(r_oLeft_i_7_n_0),
        .I3(r_oSpeedUp_reg),
        .I4(\r_oShapeX_reg[0]_0 [4]),
        .I5(r_oLEDDown_reg_1),
        .O(r_oLEDDown_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAA0E)) 
    r_oLEDDown_i_3
       (.I0(\r_oShapeX_reg[0]_0 [12]),
        .I1(r_oLEDUp_reg),
        .I2(r_oLEDUp_reg_0),
        .I3(iPage[0]),
        .I4(iPage[1]),
        .I5(r_oLeft_i_7_n_0),
        .O(r_oLEDDown_i_3_n_0));
  LUT6 #(
    .INIT(64'h0054005400540000)) 
    r_oLEDLeft_i_2
       (.I0(\r_oShapeX_reg[0]_0 [3]),
        .I1(\r_oShapeX_reg[0]_0 [8]),
        .I2(\r_oShapeX_reg[0]_0 [9]),
        .I3(r_oLeft_i_7_n_0),
        .I4(iPage[0]),
        .I5(iPage[1]),
        .O(\FSM_onehot_rCurr_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0A0FFE0)) 
    r_oLEDLeft_i_3
       (.I0(r_oLEDLeft_i_7_n_0),
        .I1(\r_oShapeX_reg[0]_0 [6]),
        .I2(r_oLEDLeft_reg),
        .I3(\r_oShapeX_reg[0]_0 [13]),
        .I4(\r_CntCurr_reg[3]_0 ),
        .I5(r_oLEDLeft_i_9_n_0),
        .O(\FSM_onehot_rCurr_reg[7] ));
  LUT6 #(
    .INIT(64'h0000CC0F0000CC0A)) 
    r_oLEDLeft_i_5
       (.I0(\r_oShapeX_reg[0]_0 [2]),
        .I1(r_oRight_reg_0),
        .I2(\r_oShapeX_reg[0]_0 [7]),
        .I3(r_oSpeedUp_reg),
        .I4(r_oLeft_i_7_n_0),
        .I5(\r_oShapeX_reg[0]_0 [0]),
        .O(\FSM_onehot_rCurr_reg[3] ));
  LUT6 #(
    .INIT(64'h3232320000000000)) 
    r_oLEDLeft_i_6
       (.I0(\r_oShapeX_reg[0]_0 [1]),
        .I1(\r_oShapeX_reg[0]_0 [7]),
        .I2(\r_oShapeX_reg[0]_0 [2]),
        .I3(r_oLeft_i_7_n_0),
        .I4(r_oLEDLeft_reg_0),
        .I5(r_oSpeedUp_reg),
        .O(r_oLEDLeft37_out));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    r_oLEDLeft_i_7
       (.I0(r_oLEDLeft_i_3_0),
        .I1(\r_oShapeX[9]_i_18_n_0 ),
        .I2(r_CntCurr_reg[3]),
        .I3(\r_CntCurr[0]_i_5_n_0 ),
        .I4(\r_oShapeX[9]_i_19_n_0 ),
        .I5(\r_oShapeX[9]_i_20_n_0 ),
        .O(r_oLEDLeft_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    r_oLEDLeft_i_9
       (.I0(\r_oShapeX_reg[0]_0 [12]),
        .I1(\r_oShapeX[9]_i_18_n_0 ),
        .I2(r_CntCurr_reg[3]),
        .I3(\r_CntCurr[0]_i_5_n_0 ),
        .I4(\r_oShapeX[9]_i_19_n_0 ),
        .I5(\r_oShapeX[9]_i_20_n_0 ),
        .O(r_oLEDLeft_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    r_oLEDRight_i_11
       (.I0(r_oSpeedUp_reg),
        .I1(\r_oShapeX[9]_i_18_n_0 ),
        .I2(r_CntCurr_reg[3]),
        .I3(\r_CntCurr[0]_i_5_n_0 ),
        .I4(\r_oShapeX[9]_i_19_n_0 ),
        .I5(\r_oShapeX[9]_i_20_n_0 ),
        .O(r_oLEDRight_i_11_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    r_oLEDRight_i_2
       (.I0(\r_oShapeX_reg[0]_0 [0]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(\r_oShapeX_reg[0]_0 [2]),
        .O(\FSM_onehot_rCurr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_oLEDRight_i_3
       (.I0(\r_oShapeX_reg[0]_0 [7]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .O(\FSM_onehot_rCurr_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hF000F000FFFFF444)) 
    r_oLEDRight_i_4
       (.I0(\r_oShapeX_reg[0]_0 [11]),
        .I1(r_oLEDRight_reg),
        .I2(r_oLEDRight_i_8_n_0),
        .I3(r_oLEDRight_reg_0),
        .I4(r_oLEDRight_reg_1),
        .I5(\r_CntCurr_reg[3]_0 ),
        .O(\FSM_onehot_rCurr_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF400000000)) 
    r_oLEDRight_i_5
       (.I0(\r_oShapeX_reg[0]_0 [9]),
        .I1(\r_oShapeX_reg[0]_0 [8]),
        .I2(\r_oShapeX_reg[0]_0 [3]),
        .I3(\r_oShapeX_reg[0]_0 [5]),
        .I4(\r_oShapeX_reg[0]_0 [12]),
        .I5(r_oLEDRight_i_11_n_0),
        .O(\FSM_onehot_rCurr_reg[10] ));
  LUT6 #(
    .INIT(64'hAAAA000200000000)) 
    r_oLEDRight_i_6
       (.I0(r_oSpeedUp_reg),
        .I1(r_oLEDDown_reg_0),
        .I2(\r_oShapeX_reg[0]_0 [5]),
        .I3(\r_oShapeX_reg[0]_0 [12]),
        .I4(r_oLeft_i_7_n_0),
        .I5(\r_oShapeX_reg[0]_0 [7]),
        .O(r_oLEDRight46_out));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    r_oLEDRight_i_8
       (.I0(r_oLEDRight_i_4_0),
        .I1(\r_oShapeX[9]_i_18_n_0 ),
        .I2(r_CntCurr_reg[3]),
        .I3(\r_CntCurr[0]_i_5_n_0 ),
        .I4(\r_oShapeX[9]_i_19_n_0 ),
        .I5(\r_oShapeX[9]_i_20_n_0 ),
        .O(r_oLEDRight_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000FFFDFFFF0002)) 
    r_oLEDUp_i_1
       (.I0(r_oLEDUp_i_2_n_0),
        .I1(\r_oShapeX_reg[0]_0 [12]),
        .I2(r_oLEDUp_reg_0),
        .I3(r_oLEDUp_reg),
        .I4(r_oLEDUp_i_3_n_0),
        .I5(oLEDUp),
        .O(\FSM_onehot_rCurr_reg[13] ));
  LUT5 #(
    .INIT(32'h22232222)) 
    r_oLEDUp_i_2
       (.I0(r_oLEDDown_reg_0),
        .I1(r_oLeft_i_7_n_0),
        .I2(iPage[1]),
        .I3(iPage[0]),
        .I4(\r_oShapeX_reg[0]_0 [4]),
        .O(r_oLEDUp_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FF3200002232)) 
    r_oLEDUp_i_3
       (.I0(\r_oShapeX_reg[0]_0 [5]),
        .I1(r_oLEDUp_reg_1),
        .I2(r_oLEDUp_reg_2),
        .I3(r_oSpeedUp_reg),
        .I4(r_oLeft_i_7_n_0),
        .I5(r_oLEDUp_reg_3),
        .O(r_oLEDUp_i_3_n_0));
  LUT6 #(
    .INIT(64'h88888FFF88888888)) 
    r_oLeft_i_1
       (.I0(r_oLeft_i_2_n_0),
        .I1(r_oLeft_reg_0),
        .I2(r_oLeft_i_4_n_0),
        .I3(r_oLeft_reg_1),
        .I4(r_oLeft_i_6_n_0),
        .I5(oLeft),
        .O(r_oLeft_reg));
  LUT6 #(
    .INIT(64'hAAABAAABAAAB0000)) 
    r_oLeft_i_2
       (.I0(r_oLeft_i_7_n_0),
        .I1(\r_oShapeX_reg[0]_0 [12]),
        .I2(\r_oShapeX_reg[0]_0 [5]),
        .I3(r_oLEDDown_reg_0),
        .I4(iPage[1]),
        .I5(iPage[0]),
        .O(r_oLeft_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000054)) 
    r_oLeft_i_4
       (.I0(r_oLEDDown_reg_0),
        .I1(iPage[1]),
        .I2(iPage[0]),
        .I3(\r_oShapeX_reg[0]_0 [12]),
        .I4(\r_oShapeX_reg[0]_0 [5]),
        .I5(r_oLeft_i_7_n_0),
        .O(r_oLeft_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000202FF02)) 
    r_oLeft_i_6
       (.I0(r_oLeft_i_7_n_0),
        .I1(iPage[1]),
        .I2(iPage[0]),
        .I3(r_oLeft_reg_2),
        .I4(r_oLeft_reg_3),
        .I5(p_1_in0),
        .O(r_oLeft_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    r_oLeft_i_7
       (.I0(\r_oShapeX[9]_i_20_n_0 ),
        .I1(r_CntCurr_reg[0]),
        .I2(r_oLeft_i_9_n_0),
        .I3(\r_CntCurr[0]_i_5_n_0 ),
        .I4(r_CntCurr_reg[3]),
        .I5(\r_oShapeX[9]_i_18_n_0 ),
        .O(r_oLeft_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_oLeft_i_9
       (.I0(r_CntCurr_reg[5]),
        .I1(r_CntCurr_reg[6]),
        .O(r_oLeft_i_9_n_0));
  LUT6 #(
    .INIT(64'h080808FF08080808)) 
    r_oRight_i_1
       (.I0(r_oLeft_i_2_n_0),
        .I1(\r_oShapeX_reg[0]_0 [7]),
        .I2(p_1_in0),
        .I3(r_oRight_i_2_n_0),
        .I4(r_oLeft_i_6_n_0),
        .I5(oRight),
        .O(\FSM_onehot_rCurr_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h1010101010111010)) 
    r_oRight_i_2
       (.I0(r_oRight_reg),
        .I1(p_1_in0),
        .I2(r_oLeft_i_7_n_0),
        .I3(r_oRight_reg_0),
        .I4(r_oSpeedUp_reg),
        .I5(r_oLEDDown_reg_0),
        .O(r_oRight_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_oShapeSize[1]_i_1 
       (.I0(\r_oShapeSize_reg[3]_i_1_n_7 ),
        .I1(\r_oShapeSize_reg[8] ),
        .O(\r_oShapeSize_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \r_oShapeSize[3]_i_6 
       (.I0(\r_oShapeSize_reg[0]_2 [1]),
        .I1(\r_oShapeX_reg[0]_0 [0]),
        .I2(\r_CntCurr_reg[3]_0 ),
        .O(\r_oShapeSize[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_oShapeSize[4]_i_1 
       (.I0(\r_oShapeSize_reg[3]_i_1_n_4 ),
        .I1(\r_oShapeSize_reg[8] ),
        .O(\r_oShapeSize_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeSize[9]_i_1 
       (.I0(\r_oShapeSize_reg[8] ),
        .I1(iRst),
        .I2(iGameRst),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC8)) 
    \r_oShapeSize[9]_i_2 
       (.I0(\r_oShapeSize_reg[0]_2 [4]),
        .I1(\FSM_onehot_rCurr_reg[0] ),
        .I2(\r_oShapeSize_reg[0]_2 [5]),
        .I3(\r_oShapeSize_reg[0]_2 [6]),
        .I4(\r_oShapeSize_reg[0]_2 [7]),
        .I5(\r_oShapeSize_reg[8]_0 ),
        .O(\r_oShapeSize_reg[4] ));
  LUT5 #(
    .INIT(32'h0000F800)) 
    \r_oShapeSize[9]_i_4 
       (.I0(\r_oShapeSize_reg[0]_2 [8]),
        .I1(\r_oShapeSize_reg[1] ),
        .I2(\r_oShapeSize_reg[0]_2 [9]),
        .I3(\r_oShapeSize_reg[1]_0 ),
        .I4(\r_CntCurr_reg[3]_0 ),
        .O(\r_oShapeSize_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \r_oShapeSize[9]_i_5 
       (.I0(\r_oShapeX_reg[0]_0 [0]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(\r_oShapeX_reg[0]_0 [7]),
        .I3(\r_oShapeX_reg[0]_0 [2]),
        .O(\FSM_onehot_rCurr_reg[0] ));
  LUT6 #(
    .INIT(64'h0C0F0C0C0C0E0C0C)) 
    \r_oShapeSize[9]_i_6 
       (.I0(\r_oShapeSize_reg[0]_2 [8]),
        .I1(\r_oShapeSize_reg[1]_0 ),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(\r_oShapeX_reg[1] ),
        .I4(\r_oShapeX_reg[0]_0 [0]),
        .I5(\r_oShapeSize_reg[0]_2 [9]),
        .O(\r_oShapeSize_reg[8]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeSize_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\r_oShapeSize_reg[3]_i_1_n_0 ,\r_oShapeSize_reg[3]_i_1_n_1 ,\r_oShapeSize_reg[3]_i_1_n_2 ,\r_oShapeSize_reg[3]_i_1_n_3 }),
        .CYINIT(\r_oShapeSize_reg[0]_2 [0]),
        .DI({\r_oShapeSize_reg[0]_2 [3:1],DI}),
        .O({\r_oShapeSize_reg[3]_i_1_n_4 ,\r_oShapeSize_reg[7] [1:0],\r_oShapeSize_reg[3]_i_1_n_7 }),
        .S({S,\r_oShapeSize[3]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeSize_reg[7]_i_1 
       (.CI(\r_oShapeSize_reg[3]_i_1_n_0 ),
        .CO({\r_oShapeSize_reg[7]_i_1_n_0 ,\r_oShapeSize_reg[7]_i_1_n_1 ,\r_oShapeSize_reg[7]_i_1_n_2 ,\r_oShapeSize_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_oShapeSize_reg[0]_2 [7:4]),
        .O({O[1],\r_oShapeSize_reg[7] [3:2],O[0]}),
        .S(\r_oShapeSize_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_oShapeSize_reg[9]_i_3 
       (.CI(\r_oShapeSize_reg[7]_i_1_n_0 ),
        .CO(\NLW_r_oShapeSize_reg[9]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_oShapeSize_reg[9]_i_3_O_UNCONNECTED [3:1],\r_oShapeSize_reg[7] [4]}),
        .S({1'b0,1'b0,1'b0,\r_oShapeSize_reg[9] }));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    \r_oShapeX[0]_i_1 
       (.I0(\r_oShapeX_reg[0] ),
        .I1(\r_oShapeSize_reg[0]_2 [0]),
        .I2(\r_oShapeX[9]_i_11_n_0 ),
        .I3(\r_oShapeX[0]_i_3_n_0 ),
        .I4(\r_oShapeX_reg[8]_0 [0]),
        .I5(\FSM_onehot_rCurr_reg[14] ),
        .O(\r_oShapeSize_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001101)) 
    \r_oShapeX[0]_i_3 
       (.I0(\r_oShapeX_reg[0]_0 [2]),
        .I1(\r_oShapeX_reg[0]_0 [7]),
        .I2(\r_oShapeX_reg[0]_0 [10]),
        .I3(\r_oShapeX_reg[0]_0 [13]),
        .I4(\r_oShapeX_reg[0]_0 [14]),
        .I5(\r_CntCurr_reg[3]_0 ),
        .O(\r_oShapeX[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8FF88F8F888)) 
    \r_oShapeX[1]_i_1 
       (.I0(\r_oShapeX[9]_i_11_n_0 ),
        .I1(\r_oShapeY_reg[1] ),
        .I2(\r_oShapeX[9]_i_13_n_0 ),
        .I3(\r_oShapeX_reg[8]_0 [0]),
        .I4(\r_oShapeX_reg[8]_0 [1]),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFEEAAFAEEEEAAA)) 
    \r_oShapeX[2]_i_1 
       (.I0(\r_oShapeX_reg[2] ),
        .I1(\r_oShapeX[9]_i_13_n_0 ),
        .I2(\r_oShapeX_reg[8]_0 [1]),
        .I3(\r_oShapeX_reg[8]_0 [0]),
        .I4(\r_oShapeX_reg[8]_0 [2]),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \r_oShapeX[3]_i_1 
       (.I0(\r_oShapeX[9]_i_11_n_0 ),
        .I1(\r_oShapeX_reg[3] ),
        .I2(\r_oShapeX[9]_i_13_n_0 ),
        .I3(\r_oShapeX_reg[3]_0 ),
        .I4(\r_oShapeX_reg[3]_1 ),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h00000000FFFF8882)) 
    \r_oShapeX[4]_i_1 
       (.I0(\r_oShapeX[9]_i_16_n_0 ),
        .I1(\r_oShapeX_reg[8]_0 [3]),
        .I2(\r_oShapeX_reg[4]_0 ),
        .I3(\r_oShapeX_reg[4]_1 ),
        .I4(\r_oShapeX[4]_i_3_n_0 ),
        .I5(\FSM_onehot_rCurr_reg[14] ),
        .O(\r_oShapeX_reg[4] ));
  LUT6 #(
    .INIT(64'h0066000000F00000)) 
    \r_oShapeX[4]_i_3 
       (.I0(\r_oShapeX_reg[4]_2 ),
        .I1(\r_oShapeX_reg[8]_0 [3]),
        .I2(\r_oShapeY_reg[4]_1 ),
        .I3(\r_CntCurr_reg[3]_0 ),
        .I4(\r_oShapeX_reg[4]_3 ),
        .I5(\r_oShapeX_reg[4]_4 ),
        .O(\r_oShapeX[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF2F2F2)) 
    \r_oShapeX[5]_i_1 
       (.I0(\r_oShapeX[9]_i_16_n_0 ),
        .I1(\r_oShapeX_reg[5] ),
        .I2(\r_oShapeX_reg[5]_0 ),
        .I3(\r_oShapeX_reg[5]_1 ),
        .I4(\r_oShapeX[9]_i_11_n_0 ),
        .I5(\FSM_onehot_rCurr_reg[14] ),
        .O(\FSM_onehot_rCurr_reg[8] ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \r_oShapeX[6]_i_1 
       (.I0(\r_oShapeX[9]_i_11_n_0 ),
        .I1(\r_oShapeX_reg[6] ),
        .I2(\r_oShapeX[9]_i_13_n_0 ),
        .I3(\r_oShapeX_reg[6]_0 ),
        .I4(\r_oShapeX_reg[6]_1 ),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \r_oShapeX[7]_i_1 
       (.I0(\r_oShapeX[9]_i_11_n_0 ),
        .I1(\r_oShapeX_reg[7] ),
        .I2(\r_oShapeX[9]_i_13_n_0 ),
        .I3(\r_oShapeX_reg[7]_0 ),
        .I4(\r_oShapeX_reg[7]_1 ),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [4]));
  LUT6 #(
    .INIT(64'h00000000FFFF8882)) 
    \r_oShapeX[8]_i_3 
       (.I0(\r_oShapeX[9]_i_16_n_0 ),
        .I1(\r_oShapeX_reg[8]_0 [4]),
        .I2(\r_oShapeX_reg[8]_1 ),
        .I3(\r_oShapeX_reg[4]_0 ),
        .I4(\r_oShapeX[8]_i_7_n_0 ),
        .I5(\FSM_onehot_rCurr_reg[14] ),
        .O(\r_oShapeX_reg[8] ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \r_oShapeX[8]_i_4 
       (.I0(\r_oShapeX_reg[9]_4 ),
        .I1(\r_oShapeX_reg[0]_0 [13]),
        .I2(\r_oShapeX_reg[9]_3 ),
        .I3(\r_oShapeX_reg[4]_5 ),
        .I4(\r_CntCurr_reg[3]_0 ),
        .I5(r_oLEDUp_reg_0),
        .O(\FSM_onehot_rCurr_reg[14] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \r_oShapeX[8]_i_7 
       (.I0(\r_oShapeX_reg[8]_2 ),
        .I1(\r_oShapeX_reg[8]_3 ),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(\r_oShapeX_reg[4]_3 ),
        .I4(\r_oShapeX_reg[4]_4 ),
        .O(\r_oShapeX[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFC8)) 
    \r_oShapeX[9]_i_1 
       (.I0(\r_oShapeX_reg[9]_4 ),
        .I1(\r_oShapeX[9]_i_5_n_0 ),
        .I2(\r_oShapeX_reg[0]_0 [13]),
        .I3(iRst),
        .I4(iGameRst),
        .O(\FSM_onehot_rCurr_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005501)) 
    \r_oShapeX[9]_i_11 
       (.I0(\r_CntCurr_reg[3]_0 ),
        .I1(\r_oShapeX_reg[0]_0 [2]),
        .I2(\r_oShapeX_reg[9]_2 ),
        .I3(\r_oShapeX_reg[0]_0 [7]),
        .I4(\r_oShapeX_reg[4]_4 ),
        .O(\r_oShapeX[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55010000)) 
    \r_oShapeX[9]_i_13 
       (.I0(\r_CntCurr_reg[3]_0 ),
        .I1(\r_oShapeX_reg[0]_0 [2]),
        .I2(\r_oShapeX_reg[9]_2 ),
        .I3(\r_oShapeX_reg[0]_0 [7]),
        .I4(\r_oShapeX_reg[4]_4 ),
        .O(\r_oShapeX[9]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCCEECCFC)) 
    \r_oShapeX[9]_i_16 
       (.I0(\r_oShapeX_reg[9]_3 ),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(\r_oShapeX_reg[9]_2 ),
        .I3(\r_oShapeX_reg[0]_0 [7]),
        .I4(\r_oShapeX_reg[0]_0 [2]),
        .O(\r_oShapeX[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_oShapeX[9]_i_18 
       (.I0(r_CntCurr_reg[12]),
        .I1(r_CntCurr_reg[15]),
        .I2(r_CntCurr_reg[14]),
        .I3(r_CntCurr_reg[17]),
        .I4(r_CntCurr_reg[16]),
        .I5(r_CntCurr_reg[7]),
        .O(\r_oShapeX[9]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \r_oShapeX[9]_i_19 
       (.I0(r_CntCurr_reg[6]),
        .I1(r_CntCurr_reg[5]),
        .I2(r_CntCurr_reg[0]),
        .O(\r_oShapeX[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00AE00FF00AE00AE)) 
    \r_oShapeX[9]_i_2 
       (.I0(\r_oShapeX_reg[1] ),
        .I1(\r_oShapeX_reg[1]_0 ),
        .I2(\r_oShapeX_reg[0]_0 [11]),
        .I3(\r_CntCurr_reg[3]_0 ),
        .I4(\r_oShapeX_reg[1]_1 ),
        .I5(\r_oShapeX_reg[1]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \r_oShapeX[9]_i_20 
       (.I0(r_CntCurr_reg[2]),
        .I1(r_CntCurr_reg[1]),
        .I2(r_CntCurr_reg[13]),
        .I3(r_CntCurr_reg[4]),
        .O(\r_oShapeX[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \r_oShapeX[9]_i_3 
       (.I0(\r_oShapeX[9]_i_11_n_0 ),
        .I1(\r_oShapeX_reg[9] ),
        .I2(\r_oShapeX[9]_i_13_n_0 ),
        .I3(\r_oShapeX_reg[9]_0 ),
        .I4(\r_oShapeX_reg[9]_1 ),
        .I5(\r_oShapeX[9]_i_16_n_0 ),
        .O(\FSM_onehot_rCurr_reg[3]_0 [5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_oShapeX[9]_i_5 
       (.I0(\r_oShapeX_reg[9]_3 ),
        .I1(\r_oShapeX_reg[0]_0 [1]),
        .I2(\r_oShapeX_reg[0]_0 [14]),
        .I3(\r_CntCurr_reg[3]_0 ),
        .I4(\r_oShapeX_reg[1] ),
        .I5(\r_oShapeX_reg[0]_0 [0]),
        .O(\r_oShapeX[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \r_oShapeX[9]_i_8 
       (.I0(\r_oShapeX[9]_i_18_n_0 ),
        .I1(r_CntCurr_reg[3]),
        .I2(\r_CntCurr[0]_i_5_n_0 ),
        .I3(\r_oShapeX[9]_i_19_n_0 ),
        .I4(\r_oShapeX[9]_i_20_n_0 ),
        .I5(r_oSpeedUp_reg),
        .O(\r_CntCurr_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \r_oShapeY[0]_i_1 
       (.I0(\r_oShapeY[0]_i_2_n_0 ),
        .I1(\r_oShapeY[0]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_rCurr_reg[12] ),
        .O(\r_oShapeY_reg[0] ));
  LUT6 #(
    .INIT(64'h00002200FFF022F0)) 
    \r_oShapeY[0]_i_2 
       (.I0(\r_oShapeSize_reg[0]_2 [0]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(Q[1]),
        .I3(r_oLEDUp_reg),
        .I4(CO),
        .I5(Q[0]),
        .O(\r_oShapeY[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55545555)) 
    \r_oShapeY[0]_i_3 
       (.I0(r_oLEDUp_reg),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\r_oShapeY_reg[8] ),
        .I4(\r_oShapeX_reg[0]_0 [11]),
        .I5(\r_CntCurr_reg[3]_0 ),
        .O(\r_oShapeY[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2220FFFF22200A00)) 
    \r_oShapeY[1]_i_1 
       (.I0(r_oLEDUp_reg),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(\r_oShapeY_reg[1] ),
        .I4(\r_oShapeY_reg[1]_0 ),
        .I5(\r_oShapeY[9]_i_9_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFE100)) 
    \r_oShapeY[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\r_oShapeY[9]_i_9_n_0 ),
        .I4(\r_oShapeY[2]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h060F000006000000)) 
    \r_oShapeY[2]_i_2 
       (.I0(Q[2]),
        .I1(\r_oShapeY_reg[2] ),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(CO),
        .I4(r_oLEDUp_reg),
        .I5(\r_oShapeY_reg[2]_0 ),
        .O(\r_oShapeY[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE010000)) 
    \r_oShapeY[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\r_oShapeY[9]_i_9_n_0 ),
        .I5(\r_oShapeY[3]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h23002000)) 
    \r_oShapeY[3]_i_2 
       (.I0(r_oShapeY00_in[0]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(r_oLEDUp_reg),
        .I4(\r_oShapeX_reg[3] ),
        .O(\r_oShapeY[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE010000)) 
    \r_oShapeY[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\r_oShapeY_reg[4] ),
        .I3(Q[4]),
        .I4(\r_oShapeY[9]_i_9_n_0 ),
        .I5(\r_oShapeY[4]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h060F000006000000)) 
    \r_oShapeY[4]_i_2 
       (.I0(Q[4]),
        .I1(\r_oShapeY_reg[4]_0 ),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(CO),
        .I4(r_oLEDUp_reg),
        .I5(\r_oShapeY_reg[4]_1 ),
        .O(\r_oShapeY[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \r_oShapeY[5]_i_1 
       (.I0(\r_oShapeY[5]_i_2_n_0 ),
        .I1(\r_oShapeY[9]_i_9_n_0 ),
        .I2(\r_oShapeY_reg[5] ),
        .I3(\FSM_onehot_rCurr_reg[12] ),
        .O(\r_oShapeY_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h20002300)) 
    \r_oShapeY[5]_i_2 
       (.I0(r_oShapeY00_in[1]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(r_oLEDUp_reg),
        .I4(\r_oShapeX_reg[5]_1 ),
        .O(\r_oShapeY[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAEAAE)) 
    \r_oShapeY[6]_i_1 
       (.I0(\r_oShapeY[6]_i_2_n_0 ),
        .I1(\r_oShapeY[9]_i_9_n_0 ),
        .I2(Q[5]),
        .I3(\r_oShapeY_reg[6]_0 ),
        .I4(\r_oShapeY_reg[4] ),
        .I5(\FSM_onehot_rCurr_reg[12] ),
        .O(\r_oShapeY_reg[6] ));
  LUT6 #(
    .INIT(64'h06000000060F0000)) 
    \r_oShapeY[6]_i_2 
       (.I0(Q[5]),
        .I1(\r_oShapeY_reg[6]_1 ),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(CO),
        .I4(r_oLEDUp_reg),
        .I5(\r_oShapeY_reg[6]_2 ),
        .O(\r_oShapeY[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EAAE)) 
    \r_oShapeY[7]_i_2 
       (.I0(\r_oShapeY[7]_i_5_n_0 ),
        .I1(\r_oShapeY[9]_i_9_n_0 ),
        .I2(Q[6]),
        .I3(\r_oShapeY_reg[7]_0 ),
        .I4(\FSM_onehot_rCurr_reg[12] ),
        .O(\r_oShapeY_reg[7] ));
  LUT5 #(
    .INIT(32'h20202320)) 
    \r_oShapeY[7]_i_5 
       (.I0(\r_oShapeY_reg[7]_1 ),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(r_oLEDUp_reg),
        .I4(\r_oShapeY_reg[7]_2 ),
        .O(\r_oShapeY[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE010000)) 
    \r_oShapeY[8]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r_oShapeY_reg[8] ),
        .I3(Q[7]),
        .I4(\r_oShapeY[9]_i_9_n_0 ),
        .I5(\r_oShapeY[8]_i_2_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h20002300)) 
    \r_oShapeY[8]_i_2 
       (.I0(r_oShapeY00_in[2]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(r_oLEDUp_reg),
        .I4(\r_oShapeY_reg[8]_0 ),
        .O(\r_oShapeY[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_oShapeY[9]_i_1 
       (.I0(\FSM_onehot_rCurr_reg[12] ),
        .I1(iRst),
        .I2(iGameRst),
        .O(iRst_0));
  LUT5 #(
    .INIT(32'h23002000)) 
    \r_oShapeY[9]_i_10 
       (.I0(r_oShapeY00_in[3]),
        .I1(\r_CntCurr_reg[3]_0 ),
        .I2(CO),
        .I3(r_oLEDUp_reg),
        .I4(\r_oShapeY_reg[9]_0 ),
        .O(\r_oShapeY[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88888888CCCCCCC8)) 
    \r_oShapeY[9]_i_2 
       (.I0(r_oLEDUp_reg),
        .I1(\r_oShapeY[9]_i_6_n_0 ),
        .I2(\r_oShapeX_reg[0]_0 [11]),
        .I3(\r_oShapeX_reg[0]_0 [6]),
        .I4(\r_oShapeX_reg[0]_0 [10]),
        .I5(\r_oShapeX_reg[0]_0 [12]),
        .O(\FSM_onehot_rCurr_reg[12]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE010000)) 
    \r_oShapeY[9]_i_3 
       (.I0(\r_oShapeY_reg[8] ),
        .I1(\r_oShapeY_reg[4] ),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(\r_oShapeY[9]_i_9_n_0 ),
        .I5(\r_oShapeY[9]_i_10_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \r_oShapeY[9]_i_4 
       (.I0(\r_oShapeY_reg[9] ),
        .I1(\r_oShapeY_reg[4] ),
        .I2(\r_oShapeY_reg[0]_1 ),
        .I3(r_oLEDUp_reg_1),
        .I4(\r_oShapeX_reg[0]_0 [11]),
        .I5(\r_CntCurr_reg[3]_0 ),
        .O(\FSM_onehot_rCurr_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_oShapeY[9]_i_6 
       (.I0(\r_oShapeX_reg[0]_0 [0]),
        .I1(\r_oShapeX_reg[0]_0 [2]),
        .I2(\r_oShapeX_reg[0]_0 [7]),
        .I3(\r_CntCurr_reg[3]_0 ),
        .O(\r_oShapeY[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFFFFEFF)) 
    \r_oShapeY[9]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r_CntCurr_reg[3]_0 ),
        .I3(\r_oShapeX_reg[0]_0 [11]),
        .I4(\r_oShapeY_reg[9] ),
        .I5(r_oLEDUp_reg),
        .O(\r_oShapeY[9]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88888FFF88888000)) 
    r_oSpeedUp_i_1
       (.I0(r_oSpeedUp_reg),
        .I1(\r_oShapeX_reg[0]_0 [1]),
        .I2(r_oLeft_i_4_n_0),
        .I3(r_oSpeedUp_reg_0),
        .I4(r_oLeft_i_6_n_0),
        .I5(oSpeedUp),
        .O(\FSM_onehot_rCurr_reg[2] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
