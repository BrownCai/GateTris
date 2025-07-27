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


module comparator(
    input wire [19:0] iA,
    input wire [19:0] iB,
    
    output wire oQ
    );
    
    wire [19:0] w;
    
    assign w[19]=iA[19]&iB[19];
    assign w[18]=iA[18]&iB[18];
    assign w[17]=iA[17]&iB[17];
    assign w[16]=iA[16]&iB[16];
    assign w[15]=iA[15]&iB[15];
    assign w[14]=iA[14]&iB[14];
    assign w[13]=iA[13]&iB[13];
    assign w[12]=iA[12]&iB[12];
    assign w[11]=iA[11]&iB[11];
    assign w[10]=iA[10]&iB[10];
    assign w[9]=iA[9]&iB[9];
    assign w[8]=iA[8]&iB[8];
    assign w[7]=iA[7]&iB[7];
    assign w[6]=iA[6]&iB[6];
    assign w[5]=iA[5]&iB[5];
    assign w[4]=iA[4]&iB[4];
    assign w[3]=iA[3]&iB[3];
    assign w[2]=iA[2]&iB[2];
    assign w[1]=iA[1]&iB[1];
    assign w[0]=iA[0]&iB[0];
    
    assign oQ=w[0]|w[1]|w[2]|w[3]|w[4]|w[5]|w[6]|w[7]|w[8]|w[9]|w[10]|w[11]|w[12]|w[13]|w[14]|w[15]|w[16]|w[17]|w[18]|w[19];
    
endmodule
