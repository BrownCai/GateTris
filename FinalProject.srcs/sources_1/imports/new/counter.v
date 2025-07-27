`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 10:26:10 AM
// Design Name: 
// Module Name: counter
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


module counter #(
    parameter LIM = 25_000_000,
    parameter N = $clog2(LIM)
    )
    (
    input wire iClk, iRst,iEn,
    output wire[N-1:0] oQ
    );
    
    reg[N-1:0]  r_CntCurr;
    wire[N-1:0] w_CntNext;
    
    always @(posedge iClk)
    begin
        if (iRst == 1)
            r_CntCurr <= 0;
        else if (iEn == 1)
            if (r_CntCurr == LIM -1)
                r_CntCurr <= 0;
            else
                r_CntCurr <= w_CntNext;
    end
    
    assign w_CntNext = r_CntCurr + 1;
    assign oQ = r_CntCurr;
endmodule
