`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 13:25:08
// Design Name: 
// Module Name: timerSelector
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


module timerSelector #(
     parameter sHome=2'b00,
     parameter sEasy=2'b01,
     parameter sNormal=2'b10,
     parameter sHard=2'b11
     )
     (
    input [1:0] iPage,
    input iTimer1, iTimer2, iTimer3,
    output oTimer
    );
    
    reg r_oTimer;
    
    always @(*)
    begin
        case (iPage)
            sHome:
                r_oTimer=iTimer1;
            sEasy:
                r_oTimer=iTimer1;
            sNormal:
                r_oTimer=iTimer2;
            sHard:
                r_oTimer=iTimer3;
        endcase
    end
    
    assign oTimer=r_oTimer;
    
endmodule
