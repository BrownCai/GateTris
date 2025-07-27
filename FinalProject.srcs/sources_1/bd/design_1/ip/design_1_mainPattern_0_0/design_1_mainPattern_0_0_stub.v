// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Dec 11 01:35:30 2023
// Host        : WellDone running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/CircuitProjects/Xilinx/FinalProject/FinalProject.srcs/sources_1/bd/design_1/ip/design_1_mainPattern_0_0/design_1_mainPattern_0_0_stub.v
// Design      : design_1_mainPattern_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mainPattern,Vivado 2020.1" *)
module design_1_mainPattern_0_0(iRst, iGameRst, iClk, iShapeX, iShapeY, iShapeSize, 
  iLeft, iRight, iSpeedUp, iCountH, iCountV, iHS, iVS, oPage, oRed, oGreen, oBlue, oHS, oVS)
/* synthesis syn_black_box black_box_pad_pin="iRst,iGameRst,iClk,iShapeX[9:0],iShapeY[9:0],iShapeSize[9:0],iLeft,iRight,iSpeedUp,iCountH[9:0],iCountV[9:0],iHS,iVS,oPage[1:0],oRed[3:0],oGreen[3:0],oBlue[3:0],oHS,oVS" */;
  input iRst;
  input iGameRst;
  input iClk;
  input [9:0]iShapeX;
  input [9:0]iShapeY;
  input [9:0]iShapeSize;
  input iLeft;
  input iRight;
  input iSpeedUp;
  input [9:0]iCountH;
  input [9:0]iCountV;
  input iHS;
  input iVS;
  output [1:0]oPage;
  output [3:0]oRed;
  output [3:0]oGreen;
  output [3:0]oBlue;
  output oHS;
  output oVS;
endmodule
