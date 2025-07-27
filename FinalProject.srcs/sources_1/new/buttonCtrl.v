`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Xinghao Cai
// 
// Create Date: 2023/11/22 22:49:25
// Design Name: Tetris
// Module Name: buttonCtrl
// Project Name: GateTris
// Target Devices: PYNQ-Z2
// Tool Versions: Vivado 2020.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: This module realized the function of more than one signal 
//                      output when more than one buttons are pushed at the same time.
//                      This module also generate control signals for patterns.
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

module buttonCtrl
    #(parameter CLK_FREQ=25_000_000,
      parameter Ratio = 100,
      parameter step = 1,
      parameter sizeStep = 1,
      
      parameter WIDTH = 640,
      parameter H_FP =16,
      parameter H_PW=96,
      parameter H_BP=48,
      parameter H_TOT = WIDTH + H_FP + H_PW + H_BP,
     
      parameter HEIGHT=480,
      parameter V_FP=10,
      parameter V_PW=2,
      parameter V_BP=33,
      parameter V_TOT=HEIGHT+V_FP+V_PW+V_BP
    )
    (
        input wire iClk, iRst, iGameRst, //iGameOver,
        input wire [1:0] iPage,
        input wire iPushUp, iPushDown, iPushLeft, iPushRight,
        output wire [9:0] oShapeX, 
        output wire [9:0] oShapeY,
        output wire [9:0] oShapeSize,
        output wire oLeft, oRight,
        //output wire oRotate,
        output wire oSpeedUp,
        output wire oLEDUp, oLEDDown, oLEDLeft, oLEDRight
    );
        localparam N= $clog2(CLK_FREQ-1);
        localparam sInit=4'b0000;
        localparam s1=4'b0001;
        localparam s2=4'b0010;
        localparam s3=4'b0011;
        localparam s4=4'b0100;
        localparam s5=4'b0101;
        localparam s6=4'b0110;
        localparam s7=4'b0111;
        localparam s8=4'b1000;
        localparam s9=4'b1001;
        localparam s10=4'b1010;
        localparam s11=4'b1011;
        localparam s12=4'b1100;
        localparam s13=4'b1101;
        localparam s14=4'b1110;
        localparam s15=4'b1111;
        
        localparam sHome=2'b00;
        localparam sEasy=2'b01;
        localparam sNormal=2'b10;
        localparam sHard=2'b11;
        
    reg [3:0] rCurr, rNext;
    reg [1:0] rPage;
    reg [1:0] rNextPage;
    reg [9:0] r_oShapeX;
    reg [9:0] r_oShapeY;
    reg [9:0] r_oShapeSize;
    reg r_oLeft, r_oRight;
    reg r_oSpeedUp;
    //reg r_oRotate;
    
    always @(posedge iClk)
    begin
        if (iRst==1)
            begin
                rCurr<=sInit;
            end
        else
            begin
                rCurr<=rNext;
            end
    end
    
    always @(*)
    begin
        case (rCurr)
            
            sInit:
            if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s15;            
            else if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s14;            
            else if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s13;            
            else if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s12;            
            else if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s11;            
            else if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s10;            
            else if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s9;            
            else if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s8;            
            else if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s7;            
            else if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s6;            
            else if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s5;            
            else if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s4;            
            else if ((iPushUp==0)&&(iPushDown==0)&&(iPushRight==1)&&(iPushLeft==1))
                rNext<=s3;            
            else if ((iPushUp==0)&&(iPushDown==0)&&(iPushRight==0)&&(iPushLeft==1))
                rNext<=s2;            
            else if ((iPushUp==0)&&(iPushDown==0)&&(iPushRight==1)&&(iPushLeft==0))
                rNext<=s1;
            else
                rNext<=sInit;
            
            s15:
            if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s15;
            else
                rNext<=sInit;
            
            s14:
            if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s14;
            else
                rNext<=sInit;
            
            s13:
            if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s13;
            else
                rNext<=sInit;
            
            s12:
            if ((iPushUp==1)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s12;
            else
                rNext<=sInit;
            
            s11:
            if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s11;
            else
                rNext<=sInit;
            
            s10:
            if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s10;
            else
                rNext<=sInit;
            
            s9:
            if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s9;
            else
                rNext<=sInit;
            
            s8:
            if ((iPushUp==1)&&(iPushDown==0)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s8;
            else
                rNext<=sInit;
                
            s7:
            if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==1))
                rNext<=s7;
            else
                rNext<=sInit;
            
            s6:
            if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s6;
            else
                rNext<=sInit;
            
            s5:
            if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s5;
            else
                rNext<=sInit;
                
            s4:
            if ((iPushUp==0)&&(iPushDown==1)&&(iPushLeft==0)&&(iPushRight==0))
                rNext<=s4;
            else
                rNext<=sInit;
            
            s3:
            if ((iPushUp==0)&&(iPushDown==0)&&(iPushRight==1)&&(iPushLeft==1))
                rNext<=s3;
            else
                rNext<=sInit;
            
            s2:
            if ((iPushUp==0)&&(iPushDown==0)&&(iPushLeft==1)&&(iPushRight==0))
                rNext<=s2;
            else
                rNext<=sInit;
                
            s1:
            if ((iPushUp==0)&&(iPushDown==0)&&(iPushLeft==0)&&(iPushRight==1))
                rNext<=s1;
            else
                rNext<=sInit;
        
            default: 
                rNext<=sInit;
                
        endcase
    end      
        
    
    wire  w1;
    
    timer #(.ratio(Ratio)) timer_inst1(.iClk(iClk), .iRst(iRst), .oQ(w1));
    
    reg r_oLEDUp,r_oLEDDown,r_oLEDLeft,r_oLEDRight;    
    
    always @(posedge iClk)
    begin
        if ((iRst == 1)||(iGameRst == 1))//||(iGameOver==1)
            begin
                r_oLEDUp <= 0;
                r_oLEDDown<=0;
                r_oLEDLeft<=0;
                r_oLEDRight<=0;
                r_oShapeX<=(WIDTH/2-'d15);
                r_oShapeY<=(HEIGHT/2-'d15);
                r_oShapeSize<='d30;
            end
            
        else if((iPage==sHome)&&(rCurr==s1)&&(w1==1))
            begin
                r_oLEDRight<=~r_oLEDRight;
                if (r_oShapeX>=(WIDTH-r_oShapeSize))
                    r_oShapeX<=WIDTH-r_oShapeSize;
                else
                    r_oShapeX<=r_oShapeX+step;
            end
            
        else if((iPage==sHome)&&(rCurr==s2)&&(w1==1))
            begin
                r_oLEDLeft<=~r_oLEDLeft;
                if (r_oShapeX==0)
                    r_oShapeX<=r_oShapeX;
                else
                    r_oShapeX<=r_oShapeX-step;
            end
            
        else if((iPage==sHome)&&(rCurr==s3)&&(w1==1))
            begin
                r_oLEDLeft<=~r_oLEDLeft;
                r_oLEDRight<=~r_oLEDRight;
                if (r_oShapeSize>15)
                    r_oShapeSize<=r_oShapeSize-sizeStep;
                else
                    r_oShapeSize<=r_oShapeSize;
            end
            
        else if((iPage==sHome)&&(rCurr==s4)&&(w1==1))
            begin
                r_oLEDDown<=~r_oLEDDown;
                if (r_oShapeY>=HEIGHT-r_oShapeSize)
                    r_oShapeY<=HEIGHT-r_oShapeSize;
                else
                    r_oShapeY<=r_oShapeY+step;
            end
            
        else if((iPage==sHome)&&(rCurr==s5)&&(w1==1))
            begin
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDRight<=~r_oLEDRight;
                if ((r_oShapeY>=HEIGHT-r_oShapeSize)&&(r_oShapeX>=WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=WIDTH-r_oShapeSize;
                        r_oShapeY<=HEIGHT-r_oShapeSize;
                    end
                else if ((r_oShapeY>=HEIGHT-r_oShapeSize)&&(r_oShapeX<WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=r_oShapeX+step;
                        r_oShapeY<=HEIGHT-r_oShapeSize;                        
                    end
                else if ((r_oShapeY<HEIGHT-r_oShapeSize)&&(r_oShapeX>=WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=WIDTH-r_oShapeSize;
                        r_oShapeY<=r_oShapeY+step;
                    end
                else
                    begin
                        r_oShapeX<=r_oShapeX+step;
                        r_oShapeY<=r_oShapeY+step;
                    end
            end
            
        else if((iPage==sHome)&&(rCurr==s6)&&(w1==1))
            begin
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDLeft<=~r_oLEDLeft;
                if ((r_oShapeY>=HEIGHT-r_oShapeSize)&&(r_oShapeX==0))
                    begin
                        r_oShapeX<=r_oShapeX;
                        r_oShapeY<=HEIGHT-r_oShapeSize;
                    end
                else if ((r_oShapeY>=HEIGHT-r_oShapeSize)&&(r_oShapeX>0))
                    begin
                        r_oShapeX<=r_oShapeX-step;
                        r_oShapeY<=HEIGHT-r_oShapeSize;                        
                    end
                else if ((r_oShapeY<HEIGHT-r_oShapeSize)&&(r_oShapeX==0))
                    begin
                        r_oShapeX<=r_oShapeX;
                        r_oShapeY<=r_oShapeY+step;
                    end
                else
                    begin
                        r_oShapeX<=r_oShapeX-step;
                        r_oShapeY<=r_oShapeY+step;
                    end
            end
        
        else if((rCurr==s7)&&(w1==1))
            begin
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDLeft<=~r_oLEDLeft;
                r_oLEDRight<=~r_oLEDRight;
            end
        
        else if((iPage==sHome)&&(rCurr==s8)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                if (r_oShapeY==0)
                    r_oShapeY<=r_oShapeY;
                else
                    r_oShapeY<=r_oShapeY-step;
            end
            
        else if((iPage==sHome)&&(rCurr==s9)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDRight<=~r_oLEDRight;
                if ((r_oShapeY==0)&&(r_oShapeX>=WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=WIDTH-r_oShapeSize;
                        r_oShapeY<=r_oShapeY;
                    end
                else if ((r_oShapeY==0)&&(r_oShapeX<WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=r_oShapeX+step;
                        r_oShapeY<=r_oShapeY;                        
                    end
                else if ((r_oShapeY>0)&&(r_oShapeX>=WIDTH-r_oShapeSize))
                    begin
                        r_oShapeX<=WIDTH-r_oShapeSize;
                        r_oShapeY<=r_oShapeY-step;
                    end
                else
                    begin
                        r_oShapeX<=r_oShapeX+step;
                        r_oShapeY<=r_oShapeY-step;
                    end
            end
        
        else if((iPage==sHome)&&(rCurr==s10)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDLeft<=~r_oLEDLeft;
                if ((r_oShapeY==0)&&(r_oShapeX==0))
                    begin
                        r_oShapeX<=r_oShapeX;
                        r_oShapeY<=r_oShapeY;
                    end
                else if ((r_oShapeY==0)&&(r_oShapeX>0))
                    begin
                        r_oShapeX<=r_oShapeX-step;
                        r_oShapeY<=r_oShapeY;                        
                    end
                else if ((r_oShapeY>0)&&(r_oShapeX==0))
                    begin
                        r_oShapeX<=r_oShapeX;
                        r_oShapeY<=r_oShapeY-step;
                    end
                else
                    begin
                        r_oShapeX<=r_oShapeX-step;
                        r_oShapeY<=r_oShapeY-step;
                    end
            end
        
        else if((rCurr==s11)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDLeft<=~r_oLEDLeft;
                r_oLEDRight<=~r_oLEDRight;
            end
        
        else if((iPage==sHome)&&(rCurr==s12)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDDown<=~r_oLEDDown;
                if (r_oShapeSize<300)
                    r_oShapeSize<=r_oShapeSize+sizeStep;
                else
                    r_oShapeSize<=300;
            end
        
        else if((rCurr==s13)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDRight<=~r_oLEDRight;
            end
        
        else if((rCurr==s14)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDLeft<=~r_oLEDLeft;
            end
        
        else if((rCurr==s15)&&(w1==1))
            begin
                r_oLEDUp<=~r_oLEDUp;
                r_oLEDDown<=~r_oLEDDown;
                r_oLEDLeft<=~r_oLEDLeft;
                r_oLEDRight<=~r_oLEDRight;
            end
        
        else if ((iPage!=sHome)&&(rCurr==s1))
            begin
                r_oLEDRight<=1;
                r_oRight<=1;
            end
            
        else if ((iPage!=sHome)&&(rCurr==s2))
            begin
                r_oLEDLeft<=1;
                r_oLeft<=1;
            end
            
        else if ((iPage!=sHome)&&(rCurr==s4))
            begin
                r_oLEDLeft<=1;
                r_oSpeedUp<=1;
            end
            
        else
            begin
                r_oLEDRight<=r_oLEDRight;
                r_oLEDLeft<=r_oLEDLeft;
                r_oLEDDown<=r_oLEDDown;
                r_oLEDUp<=r_oLEDUp;
                r_oRight<=0;
                r_oLeft<=0;
                r_oSpeedUp<=0;
                //r_oRotate<=0;
            end        
    end
    
    assign oLEDUp=r_oLEDUp;
    assign oLEDDown=r_oLEDDown;
    assign oLEDLeft=r_oLEDLeft;
    assign oLEDRight=r_oLEDRight;
    
    assign oShapeSize=r_oShapeSize;
    assign oShapeX=r_oShapeX;
    assign oShapeY=r_oShapeY;
    assign oLeft=r_oLeft;
    assign oRight=r_oRight;
    //assign oRotate=r_oRotate;
    assign oSpeedUp=r_oSpeedUp;
    
endmodule
