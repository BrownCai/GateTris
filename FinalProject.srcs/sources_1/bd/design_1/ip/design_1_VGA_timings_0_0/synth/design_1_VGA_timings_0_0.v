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


// IP VLNV: xilinx.com:module_ref:VGA_timings:1.0
// IP Revision: 1

(* X_CORE_INFO = "VGA_timings,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_VGA_timings_0_0,VGA_timings,{}" *)
(* CORE_GENERATION_INFO = "design_1_VGA_timings_0_0,VGA_timings,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VGA_timings,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,WIDTH=640,H_FP=16,H_PW=96,H_BP=48,H_TOT=800,HEIGHT=480,V_FP=10,V_PW=2,V_BP=33,V_TOT=525}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_VGA_timings_0_0 (
  iClk,
  iRst,
  oCountH,
  oCountV,
  oHS,
  oVS
);

input wire iClk;
input wire iRst;
output wire [9 : 0] oCountH;
output wire [9 : 0] oCountV;
output wire oHS;
output wire oVS;

  VGA_timings #(
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
    .oCountH(oCountH),
    .oCountV(oCountV),
    .oHS(oHS),
    .oVS(oVS)
  );
endmodule
