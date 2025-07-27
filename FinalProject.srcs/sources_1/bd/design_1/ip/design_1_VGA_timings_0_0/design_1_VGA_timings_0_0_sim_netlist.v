// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Dec  4 18:04:52 2023
// Host        : WellDone running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/CircuitProjects/Xilinx/FinalProject/FinalProject.srcs/sources_1/bd/design_1/ip/design_1_VGA_timings_0_0/design_1_VGA_timings_0_0_sim_netlist.v
// Design      : design_1_VGA_timings_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_VGA_timings_0_0,VGA_timings,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VGA_timings,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_VGA_timings_0_0
   (iClk,
    iRst,
    oCountH,
    oCountV,
    oHS,
    oVS);
  input iClk;
  input iRst;
  output [9:0]oCountH;
  output [9:0]oCountV;
  output oHS;
  output oVS;

  wire iClk;
  wire iRst;
  wire [9:0]oCountH;
  wire [9:0]oCountV;
  wire oHS;
  wire oVS;

  design_1_VGA_timings_0_0_VGA_timings inst
       (.Q(oCountH),
        .iClk(iClk),
        .iRst(iRst),
        .oHS(oHS),
        .oVS(oVS),
        .\r_CntCurr_reg[9] (oCountV));
endmodule

(* ORIG_REF_NAME = "VGA_timings" *) 
module design_1_VGA_timings_0_0_VGA_timings
   (Q,
    \r_CntCurr_reg[9] ,
    oHS,
    oVS,
    iRst,
    iClk);
  output [9:0]Q;
  output [9:0]\r_CntCurr_reg[9] ;
  output oHS;
  output oVS;
  input iRst;
  input iClk;

  wire [9:0]Q;
  wire V_en;
  wire iClk;
  wire iRst;
  wire oHS;
  wire oVS;
  wire [9:0]\r_CntCurr_reg[9] ;

  design_1_VGA_timings_0_0_counter cntH
       (.E(V_en),
        .Q(Q),
        .iClk(iClk),
        .iRst(iRst),
        .oHS(oHS));
  design_1_VGA_timings_0_0_counter__parameterized0 cntV
       (.E(V_en),
        .Q(\r_CntCurr_reg[9] ),
        .iClk(iClk),
        .iRst(iRst),
        .oVS(oVS));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_VGA_timings_0_0_counter
   (Q,
    E,
    oHS,
    iRst,
    iClk);
  output [9:0]Q;
  output [0:0]E;
  output oHS;
  input iRst;
  input iClk;

  wire [0:0]E;
  wire [9:0]Q;
  wire iClk;
  wire iRst;
  wire oHS;
  wire [9:0]r_CntCurr;
  wire \r_CntCurr[9]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF81FFFFFFFFFF)) 
    oHS_INST_0
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(oHS));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_CntCurr[0]_i_1 
       (.I0(Q[0]),
        .O(r_CntCurr[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_CntCurr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_CntCurr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_CntCurr[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(r_CntCurr[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_CntCurr[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(r_CntCurr[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_CntCurr[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(r_CntCurr[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55515555)) 
    \r_CntCurr[5]_i_1 
       (.I0(\r_CntCurr[9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[5]),
        .O(r_CntCurr[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_CntCurr[6]_i_1 
       (.I0(Q[5]),
        .I1(\r_CntCurr[9]_i_2_n_0 ),
        .I2(Q[6]),
        .O(r_CntCurr[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \r_CntCurr[7]_i_1 
       (.I0(Q[6]),
        .I1(\r_CntCurr[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(r_CntCurr[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \r_CntCurr[8]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\r_CntCurr[9]_i_2_n_0 ),
        .O(r_CntCurr[8]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \r_CntCurr[9]_i_1 
       (.I0(Q[5]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(\r_CntCurr[9]_i_2_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hC6CCCCCCCCCCCCC4)) 
    \r_CntCurr[9]_i_1__0 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(\r_CntCurr[9]_i_2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(r_CntCurr[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_CntCurr[9]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\r_CntCurr[9]_i_2_n_0 ));
  FDRE \r_CntCurr_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[0]),
        .Q(Q[0]),
        .R(iRst));
  FDRE \r_CntCurr_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[1]),
        .Q(Q[1]),
        .R(iRst));
  FDRE \r_CntCurr_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[2]),
        .Q(Q[2]),
        .R(iRst));
  FDRE \r_CntCurr_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[3]),
        .Q(Q[3]),
        .R(iRst));
  FDRE \r_CntCurr_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[4]),
        .Q(Q[4]),
        .R(iRst));
  FDRE \r_CntCurr_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[5]),
        .Q(Q[5]),
        .R(iRst));
  FDRE \r_CntCurr_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[6]),
        .Q(Q[6]),
        .R(iRst));
  FDRE \r_CntCurr_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[7]),
        .Q(Q[7]),
        .R(iRst));
  FDRE \r_CntCurr_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[8]),
        .Q(Q[8]),
        .R(iRst));
  FDRE \r_CntCurr_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(r_CntCurr[9]),
        .Q(Q[9]),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_VGA_timings_0_0_counter__parameterized0
   (Q,
    oVS,
    iRst,
    E,
    iClk);
  output [9:0]Q;
  output oVS;
  input iRst;
  input [0:0]E;
  input iClk;

  wire [0:0]E;
  wire [9:0]Q;
  wire iClk;
  wire iRst;
  wire oVS;
  wire oVS_INST_0_i_1_n_0;
  wire [9:0]r_CntCurr;
  wire \r_CntCurr[3]_i_2_n_0 ;
  wire \r_CntCurr[8]_i_2_n_0 ;
  wire \r_CntCurr[9]_i_3_n_0 ;
  wire \r_CntCurr[9]_i_4_n_0 ;
  wire \r_CntCurr[9]_i_5_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    oVS_INST_0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(oVS_INST_0_i_1_n_0),
        .O(oVS));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    oVS_INST_0_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(oVS_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00FF00BF)) 
    \r_CntCurr[0]_i_1__0 
       (.I0(\r_CntCurr[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(r_CntCurr[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_CntCurr[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(r_CntCurr[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h33CCCCC4)) 
    \r_CntCurr[2]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\r_CntCurr[3]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(r_CntCurr[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h66CCCCC4)) 
    \r_CntCurr[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\r_CntCurr[3]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(r_CntCurr[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \r_CntCurr[3]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[4]),
        .I5(Q[9]),
        .O(\r_CntCurr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_CntCurr[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(r_CntCurr[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_CntCurr[5]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(r_CntCurr[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \r_CntCurr[6]_i_1__0 
       (.I0(\r_CntCurr[8]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(r_CntCurr[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \r_CntCurr[7]_i_1__0 
       (.I0(\r_CntCurr[8]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(r_CntCurr[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \r_CntCurr[8]_i_1__0 
       (.I0(\r_CntCurr[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(r_CntCurr[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_CntCurr[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\r_CntCurr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFF1000EFFC1000)) 
    \r_CntCurr[9]_i_2__0 
       (.I0(\r_CntCurr[9]_i_3_n_0 ),
        .I1(\r_CntCurr[9]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[9]),
        .I5(\r_CntCurr[9]_i_5_n_0 ),
        .O(r_CntCurr[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_CntCurr[9]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(\r_CntCurr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_CntCurr[9]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\r_CntCurr[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_CntCurr[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\r_CntCurr[9]_i_5_n_0 ));
  FDRE \r_CntCurr_reg[0] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[0]),
        .Q(Q[0]),
        .R(iRst));
  FDRE \r_CntCurr_reg[1] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[1]),
        .Q(Q[1]),
        .R(iRst));
  FDRE \r_CntCurr_reg[2] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[2]),
        .Q(Q[2]),
        .R(iRst));
  FDRE \r_CntCurr_reg[3] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[3]),
        .Q(Q[3]),
        .R(iRst));
  FDRE \r_CntCurr_reg[4] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[4]),
        .Q(Q[4]),
        .R(iRst));
  FDRE \r_CntCurr_reg[5] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[5]),
        .Q(Q[5]),
        .R(iRst));
  FDRE \r_CntCurr_reg[6] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[6]),
        .Q(Q[6]),
        .R(iRst));
  FDRE \r_CntCurr_reg[7] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[7]),
        .Q(Q[7]),
        .R(iRst));
  FDRE \r_CntCurr_reg[8] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[8]),
        .Q(Q[8]),
        .R(iRst));
  FDRE \r_CntCurr_reg[9] 
       (.C(iClk),
        .CE(E),
        .D(r_CntCurr[9]),
        .Q(Q[9]),
        .R(iRst));
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
