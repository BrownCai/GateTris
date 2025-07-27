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


// IP VLNV: xilinx.com:module_ref:buttonCtrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "buttonCtrl,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_buttonCtrl_0_0,buttonCtrl,{}" *)
(* CORE_GENERATION_INFO = "design_1_buttonCtrl_0_0,buttonCtrl,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=buttonCtrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ=25000000,Ratio=100,step=1,sizeStep=1,WIDTH=640,H_FP=16,H_PW=96,H_BP=48,H_TOT=800,HEIGHT=480,V_FP=10,V_PW=2,V_BP=33,V_TOT=525}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_buttonCtrl_0_0 (
  iClk,
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
  oLEDRight
);

input wire iClk;
input wire iRst;
input wire iGameRst;
input wire [1 : 0] iPage;
input wire iPushUp;
input wire iPushDown;
input wire iPushLeft;
input wire iPushRight;
output wire [9 : 0] oShapeX;
output wire [9 : 0] oShapeY;
output wire [9 : 0] oShapeSize;
output wire oLeft;
output wire oRight;
output wire oSpeedUp;
output wire oLEDUp;
output wire oLEDDown;
output wire oLEDLeft;
output wire oLEDRight;

  buttonCtrl #(
    .CLK_FREQ(25000000),
    .Ratio(100),
    .step(1),
    .sizeStep(1),
    .WIDTH(640),
    .H_FP(16),
    .H_PW(96),
    .H_BP(48),
    .H_TOT(800),
    .HEIGHT(480),
    .V_FP(10),
    .V_PW(2),
    .V_BP(33),
    .V_TOT(525)
  ) inst (
    .iClk(iClk),
    .iRst(iRst),
    .iGameRst(iGameRst),
    .iPage(iPage),
    .iPushUp(iPushUp),
    .iPushDown(iPushDown),
    .iPushLeft(iPushLeft),
    .iPushRight(iPushRight),
    .oShapeX(oShapeX),
    .oShapeY(oShapeY),
    .oShapeSize(oShapeSize),
    .oLeft(oLeft),
    .oRight(oRight),
    .oSpeedUp(oSpeedUp),
    .oLEDUp(oLEDUp),
    .oLEDDown(oLEDDown),
    .oLEDLeft(oLEDLeft),
    .oLEDRight(oLEDRight)
  );
endmodule
