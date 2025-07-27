// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:mainPattern:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_mainPattern_0_0 (
  iRst,
  iGameRst,
  iClk,
  iShapeX,
  iShapeY,
  iShapeSize,
  iLeft,
  iRight,
  iSpeedUp,
  iCountH,
  iCountV,
  iHS,
  iVS,
  oPage,
  oRed,
  oGreen,
  oBlue,
  oHS,
  oVS
);

input wire iRst;
input wire iGameRst;
input wire iClk;
input wire [9 : 0] iShapeX;
input wire [9 : 0] iShapeY;
input wire [9 : 0] iShapeSize;
input wire iLeft;
input wire iRight;
input wire iSpeedUp;
input wire [9 : 0] iCountH;
input wire [9 : 0] iCountV;
input wire iHS;
input wire iVS;
output wire [1 : 0] oPage;
output wire [3 : 0] oRed;
output wire [3 : 0] oGreen;
output wire [3 : 0] oBlue;
output wire oHS;
output wire oVS;

  mainPattern #(
    .sHome(2'B00),
    .sEasy(2'B01),
    .sNormal(2'B10),
    .sHard(2'B11),
    .CLK_FREQ(25000000),
    .speedEasy(1),
    .speedNormal(2),
    .speedHard(5),
    .speedUp(10),
    .size(20),
    .WIDTH(640),
    .H_FP(16),
    .H_PW(96),
    .H_BP(48),
    .H_TOT(800),
    .HEIGHT(480),
    .V_FP(10),
    .V_PW(2),
    .V_BP(33),
    .V_TOT(525),
    .H_tetris(152),
    .V_tetris(30),
    .L_tetris(336),
    .W_tetris(75),
    .H_tip(160),
    .V_tip(125),
    .L_tip(320),
    .W_tip(52),
    .V_numberTens(296),
    .V_numberOnes(296),
    .H_numberTens(70),
    .H_numberOnes(118),
    .L_numberTens(32),
    .L_numberOnes(32),
    .W_numberTens(44),
    .W_numberOnes(44),
    .TetrisBlockSize(20),
    .BeginH(20),
    .BeginV(20),
    .OuterH(600),
    .InnerH(580),
    .OuterV(440),
    .InnerV(420),
    .centerV(80),
    .centerH(80)
  ) inst (
    .iRst(iRst),
    .iGameRst(iGameRst),
    .iClk(iClk),
    .iShapeX(iShapeX),
    .iShapeY(iShapeY),
    .iShapeSize(iShapeSize),
    .iLeft(iLeft),
    .iRight(iRight),
    .iSpeedUp(iSpeedUp),
    .iCountH(iCountH),
    .iCountV(iCountV),
    .iHS(iHS),
    .iVS(iVS),
    .oPage(oPage),
    .oRed(oRed),
    .oGreen(oGreen),
    .oBlue(oBlue),
    .oHS(oHS),
    .oVS(oVS)
  );
endmodule
