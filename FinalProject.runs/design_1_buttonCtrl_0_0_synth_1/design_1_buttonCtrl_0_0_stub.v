// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Dec 10 18:18:14 2023
// Host        : WellDone running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_buttonCtrl_0_0_stub.v
// Design      : design_1_buttonCtrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "buttonCtrl,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(iClk, iRst, iGameRst, iPage, iPushUp, iPushDown, 
  iPushLeft, iPushRight, oShapeX, oShapeY, oShapeSize, oLeft, oRight, oSpeedUp, oLEDUp, oLEDDown, 
  oLEDLeft, oLEDRight)
/* synthesis syn_black_box black_box_pad_pin="iClk,iRst,iGameRst,iPage[1:0],iPushUp,iPushDown,iPushLeft,iPushRight,oShapeX[9:0],oShapeY[9:0],oShapeSize[9:0],oLeft,oRight,oSpeedUp,oLEDUp,oLEDDown,oLEDLeft,oLEDRight" */;
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
endmodule
