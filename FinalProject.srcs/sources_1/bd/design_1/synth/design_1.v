//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Dec 11 01:34:18 2023
//Host        : WellDone running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (iClk,
    iGameRst,
    iPushDown,
    iPushLeft,
    iPushRight,
    iPushUp,
    iRst,
    oBlue,
    oGreen,
    oHS,
    oLEDDown,
    oLEDLeft,
    oLEDRight,
    oLEDUp,
    oRed,
    oVS);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN design_1_iClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
  input iGameRst;
  input iPushDown;
  input iPushLeft;
  input iPushRight;
  input iPushUp;
  input iRst;
  output [3:0]oBlue;
  output [3:0]oGreen;
  output oHS;
  output oLEDDown;
  output oLEDLeft;
  output oLEDRight;
  output oLEDUp;
  output [3:0]oRed;
  output oVS;

  wire Debounce_Switch_0_o_Switch;
  wire Debounce_Switch_4_o_Switch;
  wire Debounce_Switch_Down_o_Switch;
  wire Debounce_Switch_Left_o_Switch;
  wire Debounce_Switch_Right_o_Switch;
  wire Debounce_Switch_Up_o_Switch;
  wire [9:0]VGA_timings_0_oCountH;
  wire [9:0]VGA_timings_0_oCountV;
  wire VGA_timings_0_oHS;
  wire VGA_timings_0_oVS;
  wire buttonCtrl_0_oLEDDown;
  wire buttonCtrl_0_oLEDLeft;
  wire buttonCtrl_0_oLEDRight;
  wire buttonCtrl_0_oLEDUp;
  wire buttonCtrl_0_oLeft;
  wire buttonCtrl_0_oRight;
  wire [9:0]buttonCtrl_0_oShapeSize;
  wire [9:0]buttonCtrl_0_oShapeX;
  wire [9:0]buttonCtrl_0_oShapeY;
  wire buttonCtrl_0_oSpeedUp;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire i_Switch_0_1;
  wire i_Switch_0_2;
  wire i_Switch_0_3;
  wire i_Switch_0_4;
  wire i_Switch_0_5;
  wire i_Switch_0_6;
  wire [3:0]mainPattern_0_oBlue;
  wire [3:0]mainPattern_0_oGreen;
  wire mainPattern_0_oHS;
  wire [1:0]mainPattern_0_oPage;
  wire [3:0]mainPattern_0_oRed;
  wire mainPattern_0_oVS;

  assign clk_in1_0_1 = iClk;
  assign i_Switch_0_1 = iRst;
  assign i_Switch_0_2 = iPushUp;
  assign i_Switch_0_3 = iPushDown;
  assign i_Switch_0_4 = iPushLeft;
  assign i_Switch_0_5 = iPushRight;
  assign i_Switch_0_6 = iGameRst;
  assign oBlue[3:0] = mainPattern_0_oBlue;
  assign oGreen[3:0] = mainPattern_0_oGreen;
  assign oHS = mainPattern_0_oHS;
  assign oLEDDown = buttonCtrl_0_oLEDDown;
  assign oLEDLeft = buttonCtrl_0_oLEDLeft;
  assign oLEDRight = buttonCtrl_0_oLEDRight;
  assign oLEDUp = buttonCtrl_0_oLEDUp;
  assign oRed[3:0] = mainPattern_0_oRed;
  assign oVS = mainPattern_0_oVS;
  design_1_Debounce_Switch_0_2 Debounce_Switch_0
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_6),
        .o_Switch(Debounce_Switch_0_o_Switch));
  design_1_Debounce_Switch_1_0 Debounce_Switch_Down
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_3),
        .o_Switch(Debounce_Switch_Down_o_Switch));
  design_1_Debounce_Switch_2_0 Debounce_Switch_Left
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_4),
        .o_Switch(Debounce_Switch_Left_o_Switch));
  design_1_Debounce_Switch_3_0 Debounce_Switch_Right
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_5),
        .o_Switch(Debounce_Switch_Right_o_Switch));
  design_1_Debounce_Switch_4_0 Debounce_Switch_Rst
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_1),
        .o_Switch(Debounce_Switch_4_o_Switch));
  design_1_Debounce_Switch_0_0 Debounce_Switch_Up
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_2),
        .o_Switch(Debounce_Switch_Up_o_Switch));
  design_1_VGA_timings_0_0 VGA_timings_0
       (.iClk(clk_wiz_0_clk_out1),
        .iRst(Debounce_Switch_4_o_Switch),
        .oCountH(VGA_timings_0_oCountH),
        .oCountV(VGA_timings_0_oCountV),
        .oHS(VGA_timings_0_oHS),
        .oVS(VGA_timings_0_oVS));
  design_1_buttonCtrl_0_0 buttonCtrl_0
       (.iClk(clk_wiz_0_clk_out1),
        .iGameRst(Debounce_Switch_0_o_Switch),
        .iPage(mainPattern_0_oPage),
        .iPushDown(Debounce_Switch_Down_o_Switch),
        .iPushLeft(Debounce_Switch_Left_o_Switch),
        .iPushRight(Debounce_Switch_Right_o_Switch),
        .iPushUp(Debounce_Switch_Up_o_Switch),
        .iRst(Debounce_Switch_4_o_Switch),
        .oLEDDown(buttonCtrl_0_oLEDDown),
        .oLEDLeft(buttonCtrl_0_oLEDLeft),
        .oLEDRight(buttonCtrl_0_oLEDRight),
        .oLEDUp(buttonCtrl_0_oLEDUp),
        .oLeft(buttonCtrl_0_oLeft),
        .oRight(buttonCtrl_0_oRight),
        .oShapeSize(buttonCtrl_0_oShapeSize),
        .oShapeX(buttonCtrl_0_oShapeX),
        .oShapeY(buttonCtrl_0_oShapeY),
        .oSpeedUp(buttonCtrl_0_oSpeedUp));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_mainPattern_0_0 mainPattern_0
       (.iClk(clk_wiz_0_clk_out1),
        .iCountH(VGA_timings_0_oCountH),
        .iCountV(VGA_timings_0_oCountV),
        .iGameRst(Debounce_Switch_0_o_Switch),
        .iHS(VGA_timings_0_oHS),
        .iLeft(buttonCtrl_0_oLeft),
        .iRight(buttonCtrl_0_oRight),
        .iRst(Debounce_Switch_4_o_Switch),
        .iShapeSize(buttonCtrl_0_oShapeSize),
        .iShapeX(buttonCtrl_0_oShapeX),
        .iShapeY(buttonCtrl_0_oShapeY),
        .iSpeedUp(buttonCtrl_0_oSpeedUp),
        .iVS(VGA_timings_0_oVS),
        .oBlue(mainPattern_0_oBlue),
        .oGreen(mainPattern_0_oGreen),
        .oHS(mainPattern_0_oHS),
        .oPage(mainPattern_0_oPage),
        .oRed(mainPattern_0_oRed),
        .oVS(mainPattern_0_oVS));
endmodule
