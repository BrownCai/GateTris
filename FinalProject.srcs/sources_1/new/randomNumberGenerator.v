`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 19:01:45
// Design Name: 
// Module Name: randomNumberGenerator
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


module randomNumberGenerator
    #(parameter CLK_FREQ=25_000_000,
      parameter ratio=30)
    (
     input wire iClk, iRst,
     output wire [3:0] random
    );
    
    wire w;
    timer #(.ratio(ratio)) highFreq(.iClk(iClk), .iRst(iRst), .oQ(w));
    
    reg[3:0]  r_CntCurr;
    
    always @(posedge iClk)
    begin
        if (iRst==1)
            r_CntCurr<=0;
        else
            if ((w==1)&&(r_CntCurr==4'b1111))
                r_CntCurr<=0;
            else if ((w==1)&&(r_CntCurr<4'b1111))
                r_CntCurr<=r_CntCurr+1;
            else
                r_CntCurr<=r_CntCurr;
    end
    
    assign random=r_CntCurr;
    
endmodule
