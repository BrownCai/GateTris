`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/09 19:48:02
// Design Name: 
// Module Name: timerEn
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


module timerEn
    #(parameter CLK_FREQ=25_000_000,
      parameter ratio=1
    )
    (
    input wire iClk, iRst, iEn,
    output wire oQ 
    );
    localparam N= $clog2((CLK_FREQ/ratio)-1);
    
    reg [N-1:0] r_CntCurr;
    
    always @(posedge iClk)
        if (iRst == 1)
         r_CntCurr<=0;
        else if (iEn==1)
            if(r_CntCurr>(CLK_FREQ/ratio))
              r_CntCurr<=0;
            else
              r_CntCurr<=r_CntCurr+1;
        else
            r_CntCurr<=0;
              
    assign oQ = (r_CntCurr==(CLK_FREQ/ratio)-1) ? 1 : 0;
endmodule
