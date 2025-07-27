`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 08:20:04
// Design Name: 
// Module Name: VGA_timing
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_timing #(
    parameter WIDTH = 640,
    parameter H_FP =16,
    parameter H_PW=96,
    parameter H_BP=48,
    parameter H_TOT = WIDTH + H_FP + H_PW + H_BP,
    
    parameter HEIGHT=480,
    parameter V_FP=10,
    parameter V_PW=2,
    parameter V_BP=33,
    parameter V_TOT=HEIGHT+V_FP+V_PW+V_BP
   )
   (
    input wire iClk, iRst,
    output wire oHS, oVS,
    output wire[$clog2(H_TOT)-1:0] oCountH,
    output wire[$clog2(V_TOT)-1:0] oCountV
   );
    
    wire w_En, w_GEQH, w_LTH, w_GEQV, w_LTV, w_ANDH, w_ANDV;
    
    counter
    counter_inst(
        .iClk(iClk),
        .iRst(iRst),
        .oQ(oCountH)
    );
    
    counter_lim_en
    counter_lin_en_inst(
        .iClk(iClk),
        .iRst(iRst),
        .iEn(w_En),
        .oQ(oCountV)
    );
    
    mux
    mux_instH(
        .iA(0),
        .iB(1),
        .iC(w_ANDH),
        .oY(oHS)
    );
    
    mux
    mux_instV(
        .iA(0),
        .iB(1),
        .iC(w_ANDV),
        .oY(oVS)
    );
    
    assign w_En = (oCountH == 10'b1100011111) ? 1 : 0;
    assign w_GEQH = (oCountH >= 10'b1010010000) ? 1 : 0;
    assign w_LTH = (oCountH < 10'b1011110000) ? 1 : 0;
    assign w_GEQV = (oCountV >= 10'b0111101010) ? 1 : 0;
    assign w_LTV = (oCountV < 10'b0111101100) ? 1 : 0;
    assign w_ANDH = w_GEQH & w_LTH;
    assign w_ANDV = w_GEQV & w_LTV;
    
endmodule
