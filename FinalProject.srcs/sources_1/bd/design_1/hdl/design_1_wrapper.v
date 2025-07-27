//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Dec 11 01:34:18 2023
//Host        : WellDone running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input iClk;
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

  wire iClk;
  wire iGameRst;
  wire iPushDown;
  wire iPushLeft;
  wire iPushRight;
  wire iPushUp;
  wire iRst;
  wire [3:0]oBlue;
  wire [3:0]oGreen;
  wire oHS;
  wire oLEDDown;
  wire oLEDLeft;
  wire oLEDRight;
  wire oLEDUp;
  wire [3:0]oRed;
  wire oVS;

  design_1 design_1_i
       (.iClk(iClk),
        .iGameRst(iGameRst),
        .iPushDown(iPushDown),
        .iPushLeft(iPushLeft),
        .iPushRight(iPushRight),
        .iPushUp(iPushUp),
        .iRst(iRst),
        .oBlue(oBlue),
        .oGreen(oGreen),
        .oHS(oHS),
        .oLEDDown(oLEDDown),
        .oLEDLeft(oLEDLeft),
        .oLEDRight(oLEDRight),
        .oLEDUp(oLEDUp),
        .oRed(oRed),
        .oVS(oVS));
endmodule
