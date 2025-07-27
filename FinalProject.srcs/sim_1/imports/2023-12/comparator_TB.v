`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 08:42:29
// Design Name: 
// Module Name: comparator
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


module comparator_TB;
    reg [19:0]r_iA;
    reg [19:0]r_iB;
    wire r_oQ;
    
    comparator
    comparator_inst(.iA(r_iA),
                    .iB(r_iB),
                    .oQ(r_oQ)
                    );
    initial
        begin
        r_iA = 0; r_iB = 0;
        # 50;
        if( r_oQ == 0)  $display("passed");
        else            $display("failed");
        r_iA = 0; r_iB = 0;
        
        r_iA[2] = 1; r_iB[2] = 1;
        #50;
        if( r_oQ == 1)  $display("passed");
        else            $display("failed");
        r_iA = 0; r_iB = 0;
        
        r_iA[3] = 1; r_iB[5] = 1;
        #50;
        if( r_oQ == 0)  $display("passed");
        else            $display("failed");
        r_iA = 0; r_iB = 0;
        
        end
endmodule
