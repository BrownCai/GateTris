`timescale 1ns / 1ps

module random_TB;
    reg iClk, iRst;
    wire [3:0] r_random;
    wire w;
    
    randomNumberGenerator
    randomNumberGenerator_inst(
        .iClk(iClk),
        .iRst(iRst),
        .random(r_random)
    );
    
//    initial begin
//        iRst = 1;
//        #10;
//        iRst = 0;
//    end
        
    localparam T = 20;
    always
    begin
        iClk=1;
        #(T/2);
        iClk=0;
        #(T/2);
    end
    
    initial
    begin
        iRst=1;
        #50;
        iRst=0;
        
//        #(T*16);
//        iRst=1;
//        #(T*2);
//        iRst=0;
    $stop;
    end
    
endmodule 
