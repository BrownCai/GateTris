`timescale 1ns / 1ps

module counter_lim_en
   #(
    parameter LIM=525,
    parameter N=$clog2(LIM-1)
    )
    (
    input wire iClk,
    input wire iRst,
    input wire iEn,
    output wire [N-1:0] oQ
    );
    
    reg[N-1:0] r_CntCurr;
    
    always @(posedge iClk)
        begin          
            if (iRst==1)
                r_CntCurr<=0;
            else if (r_CntCurr>LIM-1)
                r_CntCurr<=0;
            else if (iEn==1)
                r_CntCurr<=r_CntCurr+1;            
        end
    
    assign oQ=r_CntCurr;
    
endmodule
