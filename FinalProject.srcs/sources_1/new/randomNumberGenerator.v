`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 19:01:45
// Design Name: 
// Module Name: randomNumberGenerator
// Project Name: GateTris
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

// ----------------------------------------------------------------------------
// 2025/07
// 开源协议 / Open Source License:
// 本代码采用AGPL-3.0许可证 - Licensed under AGPL-3.0
//
// 学术诚信提示 / Academic Integrity Notice:
// 直接复制代码将触发AGPL开源传染条款
// Direct copying triggers AGPL's copyleft requirements
// 未经授权用于课程作业将面临学术不端调查
// Unauthorized academic use will cause academic misconduct investigation
// ----------------------------------------------------------------------------


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
