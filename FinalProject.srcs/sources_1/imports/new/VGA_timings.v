`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 09:42:08 AM
// Design Name: 
// Module Name: VGA_timings
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


module VGA_timings #(
    parameter   WIDTH   = 640,
    parameter   H_FP    = 16,
    parameter   H_PW    = 96,
    parameter   H_BP    = 48,
    parameter   H_TOT   = WIDTH + H_FP + H_PW + H_BP,
    
    parameter   HEIGHT  = 480,
    parameter   V_FP    = 10,
    parameter   V_PW    = 2,
    parameter   V_BP    = 33,
    parameter   V_TOT   = HEIGHT + V_FP + V_PW + V_BP
    )
    (
    input wire iClk, iRst,
    output wire[$clog2(H_TOT)-1:0] oCountH,
    output wire[$clog2(V_TOT)-1:0] oCountV,
    output wire oHS, oVS
    );
    
    wire V_en;
    reg r_oHS, r_oVS;
    
    counter #(.LIM(H_TOT))
    cntH(.iClk(iClk), .iRst(iRst), .iEn(1), .oQ(oCountH));
    
    counter #(.LIM(V_TOT))
    cntV(.iClk(iClk), .iRst(iRst), .iEn(V_en), .oQ(oCountV));
    
    assign V_en = (oCountH == (H_TOT - 1));
    
    always @(*)
    begin
        if (oCountH >= (WIDTH + H_FP) && oCountH < (WIDTH + H_FP + H_PW))
            r_oHS = 0;
        else
            r_oHS = 1;
        
        if (oCountV >= (HEIGHT + V_FP) && oCountV < (HEIGHT + V_FP + V_PW))
            r_oVS = 0;
        else
            r_oVS = 1;
    end
    
    assign oHS = r_oHS;
    assign oVS = r_oVS;
    
endmodule
