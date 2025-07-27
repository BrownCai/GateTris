`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/10 19:59:47
// Design Name: 
// Module Name: timerSelector_TB
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


module timerSelector_TB;

reg [1:0] iPage;
reg iTimer1,iTimer2,iTimer3;
wire oTimer;

timerSelector
test(
        .iPage(iPage),
        .iTimer1(iTimer1),
        .iTimer2(iTimer2),
        .iTimer3(iTimer3),
        .oTimer(oTimer)
        );

localparam T=20;
        
        always begin
        iTimer1=1;iTimer2=1;iTimer3=1;
        #(T/4);
        iTimer1=0;
        #(T/4)
        iTimer1=1;iTimer2=0;
        #(T/4);
        iTimer1=0;
        #(T/4);
        iTimer1=1; iTimer2=1;iTimer3=0;
        #(T/4);
        iTimer1=0;
        #(T/4);
        iTimer1=1;iTimer2=0;
        #(T/4);
        iTimer1=0;
        #(T/4);
        end
        
        initial begin
        
        iPage=2'b00;
        #(2*T);
        iPage=2'b11;
        #(2*T);
        iPage=2'b10;
        #(2*T);
        iPage=2'b01;
        #(2*T);
        $stop;
        
        end
        
endmodule



