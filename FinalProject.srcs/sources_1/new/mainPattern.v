`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Xinghao Cai & Shuchang Hu
// 
// Create Date: 2023/11/22 23:08:32
// Design Name: Tetris
// Module Name: mainPattern
// Project Name: FinalProject
// Target Devices: PYNQ-Z2
// Tool Versions: Vivado 2020.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mainPattern #(
     parameter sHome=2'b00,
     parameter sEasy=2'b01,
     parameter sNormal=2'b10,
     parameter sHard=2'b11,
     parameter CLK_FREQ=25_000_000,
     parameter speedEasy=1,
     parameter speedNormal=2,
     parameter speedHard=5,
     parameter speedUp=10,
     parameter size=20,
     
     parameter WIDTH = 640,
     parameter H_FP =16,
     parameter H_PW=96,
     parameter H_BP=48,
     parameter H_TOT = WIDTH + H_FP + H_PW + H_BP,
     
     parameter HEIGHT=480,
     parameter V_FP=10,
     parameter V_PW=2,
     parameter V_BP=33,
     parameter V_TOT=HEIGHT+V_FP+V_PW+V_BP,
     
     parameter H_tetris=152,
     parameter V_tetris=30,
     parameter L_tetris=336,
     parameter W_tetris=75,
    
     parameter H_tip=160,
     parameter V_tip=V_tetris+W_tetris+20,
     parameter L_tip=320,
     parameter W_tip=52,
     
     parameter V_numberTens=296,
     parameter V_numberOnes=296,
     parameter H_numberTens=70,
     parameter H_numberOnes=118,
     parameter L_numberTens=32,
     parameter L_numberOnes=32,
     parameter W_numberTens=44,
     parameter W_numberOnes=44,
     
     parameter  TetrisBlockSize = 20,
     parameter BeginH = 20,
     parameter BeginV = 20,
    
     parameter OuterH = 600,
     parameter InnerH = 580,
     parameter OuterV = 440,
     parameter InnerV = 420,
    
     parameter  centerV = 80,
     parameter  centerH = 80
    )
    (
     input wire iRst, iGameRst, iClk,
     input wire [9:0]iShapeX, [9:0]iShapeY, [9:0]iShapeSize,     
     input wire iLeft, iRight, iSpeedUp,
     input wire [$clog2(H_TOT)-1:0] iCountH,
     input wire [$clog2(V_TOT)-1:0] iCountV,
     input wire iHS, iVS,
     //output wire oGameOver,
     output wire [1:0] oPage,
     output wire [3:0] oRed, oGreen, oBlue,
     output wire oHS, oVS
    );
    localparam sInit=3'b000; //Release both fixed blocks array and moving tetris array
    localparam sNewTetris=3'b001; // Randomly create a new tetris
    localparam sDrop=3'b010; //Make tetris drop
    localparam sTouchDetect=3'b011; //Detect if the tetris touches bottom or existing blocks
    localparam sStore=3'b100; //Store stopped tetris
    localparam sFixedChange=3'b101; //Determine if it needs to clear a line or gameover
    localparam sLeft=3'b110; //Tetris moving left
    localparam sRight=3'b111; ////Tetris moving right
        
    assign iHS=oHS;
    assign iVS=oVS;
    
    reg [1:0] rPage;
    reg [1:0] rNextPage;
    assign oPage=rPage;
        
    reg [3:0] r_oRed;
    reg [3:0] r_oBlue;
    reg [3:0] r_oGreen;
    assign oRed=r_oRed;
    assign oGreen=r_oGreen;
    assign oBlue=r_oBlue;
    
    //Define display arrays
    reg [19:0] still [19:0];
    reg [19:0] move [19:0];
    reg [19:0] next [19:0];
    
    //reg w_GameOver;
    //assign oGameOver=w_GameOver;
    
    //Score counter and divider
    reg [6:0] scoreCounter;
    wire [3:0] tens;
    wire [3:0] ones;
    assign tens=scoreCounter/10;
    assign ones=scoreCounter%10;
    
    reg [2:0] stateCurr;
    reg [2:0] stateNext;
    reg rNewTetris, rNewTetrisNext;
    reg rDrop, rDropNext;
    reg rFixedChange, rFixedChangeNext;
    
    reg [335:0] tetris [74:0];
    reg [319:0] tip [51:0];
    reg [43:0] zero [31:0];
    reg [43:0] one [31:0];
    reg [43:0] two [31:0];
    reg [43:0] three [31:0];
    reg [43:0] four [31:0];
    reg [43:0] five [31:0];
    reg [43:0] six [31:0];
    reg [43:0] seven [31:0];
    reg [43:0] eight [31:0];
    reg [43:0] nine [31:0];
    
    //Import random number
    wire [3:0] state;
    randomNumberGenerator random(.iClk(iClk), .iRst(iRst), .random(state));
    
    //Select differet speed of Timers due to different difficulty
    wire w_timer, w_timerSelect, w_timerEasy, w_timerNormal, w_timerHard, w_timerSpeedUp;
    timer #(.ratio(speedEasy)) timer_Easy(.iClk(iClk), .iRst(iRst), .oQ(w_timerEasy));
    timer #(.ratio(speedNormal)) timer_Normal(.iClk(iClk), .iRst(iRst), .oQ(w_timerNormal));
    timer #(.ratio(speedHard)) timer_Hard(.iClk(iClk), .iRst(iRst), .oQ(w_timerHard));
    timerEn #(.ratio(speedUp)) timer_SpeedUp(.iClk(iClk), .iRst(iRst), .iEn(iSpeedUp), .oQ(w_timerspeedUp));
    timerSelector timer(.iPage(rPage), .iTimer1(w_timerEasy), .iTimer2(w_timerNormal), .iTimer3(w_timerHard), .oTimer(w_timerSelect));
    assign w_timer=w_timerSelect|w_timerspeedUp;
    
    //Make edge detects
    wire w_touch, w_full, w_leftest, w_rightest;
    wire line0, line1, line2, line3, line4, line5, line6, line7, line8, line9, line10, line11, line12, line13, line14, line15, line16, line17, line18, lineBottom;
    comparator inst01(  .iA(still[1][19:0]),  .iB(move[0][19:0]),  .oQ(line0));
    comparator inst12(  .iA(still[2][19:0]),  .iB(move[1][19:0]),  .oQ(line1));
    comparator inst23(  .iA(still[3][19:0]),  .iB(move[2][19:0]),  .oQ(line2));
    comparator inst34(  .iA(still[4][19:0]),  .iB(move[3][19:0]),  .oQ(line3));
    comparator inst45(  .iA(still[5][19:0]),  .iB(move[4][19:0]),  .oQ(line4));
    comparator inst56(  .iA(still[6][19:0]),  .iB(move[5][19:0]),  .oQ(line5));
    comparator inst67(  .iA(still[7][19:0]),  .iB(move[6][19:0]),  .oQ(line6));
    comparator inst78(  .iA(still[8][19:0]),  .iB(move[7][19:0]),  .oQ(line7));
    comparator inst89(  .iA(still[9][19:0]),  .iB(move[8][19:0]),  .oQ(line8));
    comparator inst910( .iA(still[10][19:0]), .iB(move[9][19:0]),  .oQ(line9));
    comparator inst1011(.iA(still[11][19:0]), .iB(move[10][19:0]), .oQ(line10));
    comparator inst1112(.iA(still[12][19:0]), .iB(move[11][19:0]), .oQ(line11));
    comparator inst1213(.iA(still[13][19:0]), .iB(move[12][19:0]), .oQ(line12));
    comparator inst1314(.iA(still[14][19:0]), .iB(move[13][19:0]), .oQ(line13));
    comparator inst1415(.iA(still[15][19:0]), .iB(move[14][19:0]), .oQ(line14));
    comparator inst1516(.iA(still[16][19:0]), .iB(move[15][19:0]), .oQ(line15));
    comparator inst1617(.iA(still[17][19:0]), .iB(move[16][19:0]), .oQ(line16));
    comparator inst1718(.iA(still[18][19:0]), .iB(move[17][19:0]), .oQ(line17));
    comparator inst1819(.iA(still[19][19:0]), .iB(move[18][19:0]), .oQ(line18));
    comparator touchBottom(.iA(20'hfffff), .iB(move[19][19:0]), .oQ(lineBottom));
    assign w_touch = line0|line1|line2|line3|line4|line5|line6|line7|line8|line9|line10|line11|line12|line13|line14|line15|line16|line17|line18|lineBottom;
    
    comparator full(.iA(still[0][19:0]), .iB(20'hfffff), .oQ(w_full));
    
    reg [19:0] left;
    reg [19:0] right;
    comparator leftest(.iA(20'hfffff), .iB(left[19:0]), .oQ(w_leftest));
    comparator rightest(.iA(20'hfffff), .iB(right[19:0]), .oQ(w_rightest));
    always @(*)
    begin
        left[0] <= move[0][19];     right[0] <= move[0][0];
        left[1] <= move[1][19];     right[1] <= move[1][0];
        left[2] <= move[2][19];     right[2] <= move[2][0];
        left[3] <= move[3][19];     right[3] <= move[3][0];
        left[4] <= move[4][19];     right[4] <= move[4][0];
        left[5] <= move[5][19];     right[5] <= move[5][0];
        left[6] <= move[6][19];     right[6] <= move[6][0];
        left[7] <= move[7][19];     right[7] <= move[7][0];
        left[8] <= move[8][19];     right[8] <= move[8][0];
        left[9] <= move[9][19];     right[9] <= move[9][0];
        left[10]<=move[10][19];     right[10]<=move[10][0];
        left[11]<=move[11][19];     right[11]<=move[11][0];
        left[12]<=move[12][19];     right[12]<=move[12][0];
        left[13]<=move[13][19];     right[13]<=move[13][0];
        left[14]<=move[14][19];     right[14]<=move[14][0];
        left[15]<=move[15][19];     right[15]<=move[15][0];
        left[16]<=move[16][19];     right[16]<=move[16][0];
        left[17]<=move[17][19];     right[17]<=move[17][0];
        left[18]<=move[18][19];     right[18]<=move[18][0];
        left[19]<=move[19][19];     right[19]<=move[19][0];
    end
    
    
    //Definitions of next state logic of FSM
    always @(posedge iClk)
    begin
        if (iRst==1)
            begin
                rPage<=sHome;
                stateCurr<=sInit;
                //w_GameOver<=0;
                rDrop<=0;
                rFixedChange<=0;
                rNewTetris<=0;
            end
        else
            begin
                rPage<=rNextPage;
                stateCurr<=stateNext;
                rDrop<=rDropNext;
                rFixedChange<=rFixedChangeNext;   
                rNewTetris<=rNewTetrisNext;
            end
    end
    
    always @(*)
    begin
        case (rPage)
            sHome:
                if ((iShapeX>='d80-iShapeSize)&&(iShapeX<'d80)&&(iShapeY>='d420-iShapeSize)&&(iShapeY<'d420))
                    begin
                        rNextPage<=sEasy;
                        stateNext<=sInit;
                    end
                else if ((iShapeX>='d320-iShapeSize)&&(iShapeX<'d320)&&(iShapeY>='d420-iShapeSize)&&(iShapeY<'d420))
                    begin
                        rNextPage<=sNormal;
                        stateNext<=sInit;
                    end
                else if ((iShapeX>='d560-iShapeSize)&&(iShapeX<'d560)&&(iShapeY>='d420-iShapeSize)&&(iShapeY<'d420))
                    begin
                        rNextPage<=sHard;
                        stateNext<=sInit;
                    end
                else
                    rNextPage<=sHome;
           sEasy:
                begin
                    if ((iGameRst==1))//||(w_GameOver==1)
                        begin
                            rNextPage<=sHome;
                            //w_GameOver<=0;
                            stateNext<=sInit;
                        end
                    else
                        begin
                        rNextPage<=sEasy;
                        
                        end
                end 
            
            sNormal:
                begin
                    if ((iGameRst==1))//||(w_GameOver==1)
                        begin
                            rNextPage<=sHome;
                            //w_GameOver<=0;
                            stateNext<=sInit;
                        end
                    else
                        rNextPage<=sNormal;
                    
                    
                end
                     
            sHard:
                begin
                    if ((iGameRst==1))//||(w_GameOver==1)
                        begin
                            rNextPage<=sHome;
                            //w_GameOver<=0;
                            stateNext<=sInit;
                        end
                    else
                        rNextPage<=sHard;            
                end
//            default:
//                rNextPage<=sHome;
        endcase
        
        case (stateCurr)
            sInit:
              if (rPage==sHome)
                begin
                    stateNext<=sInit;
                end
              else
                stateNext<=sNewTetris;
                    
            sNewTetris:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                stateNext<=sTouchDetect;
                    
            sTouchDetect:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                if ((w_touch==1))
                    stateNext<=sStore;
                else
                    if ((iLeft==1)&&(iRight==0))
                        stateNext<=sLeft;
                    else if ((iLeft==0)&&(iRight==1))
                        stateNext<=sRight;
                    else
                        stateNext<=sDrop;
                    
            sDrop:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                if ((iLeft==1)&&(iRight==0)&&(rDrop==1))
                    stateNext<=sLeft;
                else if ((iLeft==0)&&(iRight==1)&&(rDrop==1))
                    stateNext<=sRight;
                else if ((iLeft==0)&&(iRight==0)&&(rDrop==1))
                    stateNext<=sTouchDetect;
                else
                    stateNext<=sDrop;
                    
            sStore:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                stateNext<=sFixedChange;
                    
            sFixedChange:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                if (w_full==1)
                    //w_GameOver<=1;
                    stateNext<=sInit;
                else if (rFixedChange==1)
                    stateNext<=sNewTetris;
                else
                    stateNext<=sFixedChange;
            
            sLeft:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                if ((iLeft==1))
                    stateNext<=sLeft;
                else
                    stateNext<=sTouchDetect;
                
            sRight:
              if (rPage==sHome)
                stateNext<=sInit;
              else
                if ((iRight==1))
                    stateNext<=sRight;
                else
                    stateNext<=sTouchDetect;
        endcase
    end
       
      
      //Actions in each FSM
      always @(posedge iClk)
      begin
        if ((w_timer==1)&&(stateCurr==sDrop))
            begin
                move[19]<=move[18];     move[9] <=move[8];
                move[18]<=move[17];     move[8] <=move[7];
                move[17]<=move[16];     move[7] <=move[6];
                move[16]<=move[15];     move[6] <=move[5];
                move[15]<=move[14];     move[5] <=move[4];
                move[14]<=move[13];     move[4] <=move[3];
                move[13]<=move[12];     move[3] <=move[2];
                move[12]<=move[11];     move[2] <=move[1];
                move[11]<=move[10];     move[1] <=move[0];
                move[10]<=move[9];      move[0] <=0;      
                rDropNext<=1;
            end
        
        else if (stateCurr==sInit)
            begin
                still[0] <=0;   still[10]<=0;
                still[1] <=0;   still[11]<=0;
                still[2] <=0;   still[12]<=0;
                still[3] <=0;   still[13]<=0;
                still[4] <=0;   still[14]<=0;
                still[5] <=0;   still[15]<=0;
                still[6] <=0;   still[16]<=0;
                still[7] <=0;   still[17]<=0;
                still[8] <=0;   still[18]<=0;
                still[9] <=0;   still[19]<=0;
                scoreCounter<=0;
            end
        
        else if ((stateCurr==sNewTetris))
            begin
                move[0]<=next[0];       move[10]<=next[10];
                move[1]<=next[1];       move[11]<=next[11];
                move[2]<=next[2];       move[12]<=next[12];
                move[3]<=next[3];       move[13]<=next[13];
                move[4]<=next[4];       move[14]<=next[14];
                move[5]<=next[5];       move[15]<=next[15];
                move[6]<=next[6];       move[16]<=next[16];
                move[7]<=next[7];       move[17]<=next[17];
                move[8]<=next[8];       move[18]<=next[18];
                move[9]<=next[9];       move[19]<=next[19];
                rNewTetrisNext<=1;
            end
            
        
        else if ((stateCurr==sStore))
            begin
                still[0][19:0] <= still[0][19:0]+move[0][19:0];
                still[1][19:0] <= still[1][19:0]+move[1][19:0];
                still[2][19:0] <= still[2][19:0]+move[2][19:0];
                still[3][19:0] <= still[3][19:0]+move[3][19:0];
                still[4][19:0] <= still[4][19:0]+move[4][19:0];
                still[5][19:0] <= still[5][19:0]+move[5][19:0];
                still[6][19:0] <= still[6][19:0]+move[6][19:0];
                still[7][19:0] <= still[7][19:0]+move[7][19:0];
                still[8][19:0] <= still[8][19:0]+move[8][19:0];
                still[9][19:0] <= still[9][19:0]+move[9][19:0];
                still[10][19:0]<=still[10][19:0]+move[10][19:0];
                still[11][19:0]<=still[11][19:0]+move[11][19:0];
                still[12][19:0]<=still[12][19:0]+move[12][19:0];
                still[13][19:0]<=still[13][19:0]+move[13][19:0];
                still[14][19:0]<=still[14][19:0]+move[14][19:0];
                still[15][19:0]<=still[15][19:0]+move[15][19:0];
                still[16][19:0]<=still[16][19:0]+move[16][19:0];
                still[17][19:0]<=still[17][19:0]+move[17][19:0];
                still[18][19:0]<=still[18][19:0]+move[18][19:0];
                still[19][19:0]<=still[19][19:0]+move[19][19:0];
                rFixedChangeNext<=0;
            end
        
        else if (stateCurr==sFixedChange)
            begin
                if(still[19]==20'hfffff)
                    begin
                        still[19]<= still[18];      still[9] <= still[8];
                        still[18]<= still[17];      still[8] <= still[7];
                        still[17]<= still[16];      still[7] <= still[6];
                        still[16]<= still[15];      still[6] <= still[5];
                        still[15]<= still[14];      still[5] <= still[4];
                        still[14]<= still[13];      still[4] <= still[3];
                        still[13]<= still[12];      still[3] <= still[2];
                        still[12]<= still[11];      still[2] <= still[1];
                        still[11]<= still[10];      still[1] <= still[0];
                        still[10]<= still[9];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[18]==20'hfffff)
                    begin
                        still[18]<= still[17];      still[9] <= still[8];
                        still[17]<= still[16];      still[8] <= still[7];
                        still[16]<= still[15];      still[7] <= still[6];
                        still[15]<= still[14];      still[6] <= still[5];
                        still[14]<= still[13];      still[5] <= still[4];
                        still[13]<= still[12];      still[4] <= still[3];
                        still[12]<= still[11];      still[3] <= still[2];
                        still[11]<= still[10];      still[2] <= still[1];
                        still[10]<= still[9];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[17]==20'hfffff)
                    begin
                        still[17]<= still[16];      still[9] <= still[8];
                        still[16]<= still[15];      still[8] <= still[7];
                        still[15]<= still[14];      still[7] <= still[6];
                        still[14]<= still[13];      still[6] <= still[5];
                        still[13]<= still[12];      still[5] <= still[4];
                        still[12]<= still[11];      still[4] <= still[3];
                        still[11]<= still[10];      still[3] <= still[2];
                        still[10]<= still[9];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[16]==20'hfffff)
                    begin
                        still[16]<= still[15];      still[8] <= still[7];
                        still[15]<= still[14];      still[7] <= still[6];
                        still[14]<= still[13];      still[6] <= still[5];
                        still[13]<= still[12];      still[5] <= still[4];
                        still[12]<= still[11];      still[4] <= still[3];
                        still[11]<= still[10];      still[3] <= still[2];
                        still[10]<= still[9];       still[2] <= still[1];
                        still[9] <= still[8];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[15]==20'hfffff)
                    begin
                        still[15]<= still[14];      still[8] <= still[7];
                        still[14]<= still[13];      still[7] <= still[6];
                        still[13]<= still[12];      still[6] <= still[5];
                        still[12]<= still[11];      still[5] <= still[4];
                        still[11]<= still[10];      still[4] <= still[3];
                        still[10]<= still[9];       still[3] <= still[2];
                        still[9] <= still[8];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[14]==20'hfffff)
                    begin
                        still[14]<= still[13];      still[7] <= still[6];
                        still[13]<= still[12];      still[6] <= still[5];
                        still[12]<= still[11];      still[5] <= still[4];
                        still[11]<= still[10];      still[4] <= still[3];
                        still[10]<= still[9];       still[3] <= still[2];
                        still[9] <= still[8];       still[2] <= still[1];
                        still[8] <= still[7];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[13]==20'hfffff)
                    begin
                        still[13]<= still[12];      still[7] <= still[6];
                        still[12]<= still[11];      still[6] <= still[5];
                        still[11]<= still[10];      still[5] <= still[4];
                        still[10]<= still[9];       still[4] <= still[3];
                        still[9] <= still[8];       still[3] <= still[2];
                        still[8] <= still[7];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[12]==20'hfffff)
                    begin
                        still[12]<= still[11];      still[6] <= still[5];
                        still[11]<= still[10];      still[5] <= still[4];
                        still[10]<= still[9];       still[4] <= still[3];
                        still[9] <= still[8];       still[3] <= still[2];
                        still[8] <= still[7];       still[2] <= still[1];
                        still[7] <= still[6];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[11]==20'hfffff)
                    begin
                        still[11]<= still[10];      still[6] <= still[5];
                        still[10]<= still[9];       still[5] <= still[4];
                        still[9] <= still[8];       still[4] <= still[3];
                        still[8] <= still[7];       still[3] <= still[2];
                        still[7] <= still[6];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[10]==20'hfffff)
                    begin
                        still[10]<= still[9];       still[5] <= still[4];
                        still[9] <= still[8];       still[4] <= still[3];
                        still[8] <= still[7];       still[3] <= still[2];
                        still[7] <= still[6];       still[2] <= still[1];
                        still[6] <= still[5];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[9]==20'hfffff)
                    begin
                        still[9] <= still[8];       still[5] <= still[4];
                        still[8] <= still[7];       still[4] <= still[3];
                        still[7] <= still[6];       still[3] <= still[2];
                        still[6] <= still[5];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[8]==20'hfffff)
                    begin
                        still[8] <= still[7];       still[4] <= still[3];
                        still[7] <= still[6];       still[3] <= still[2];
                        still[6] <= still[5];       still[2] <= still[1];
                        still[5] <= still[4];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[7]==20'hfffff)
                    begin
                        still[7] <= still[6];       still[4] <= still[3];
                        still[6] <= still[5];       still[3] <= still[2];
                        still[5] <= still[4];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[6]==20'hfffff)
                    begin
                        still[6] <= still[5];       still[3] <= still[2];
                        still[5] <= still[4];       still[2] <= still[1];
                        still[4] <= still[3];       still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[5]==20'hfffff)
                    begin
                        still[5] <= still[4];       still[3] <= still[2];
                        still[4] <= still[3];       still[2] <= still[1];
                                                    still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else if(still[4]==20'hfffff)
                    begin
                        still[4] <= still[3];
                        still[3] <= still[2];
                        still[2] <= still[1];
                        still[1] <= still[0];
                        rFixedChangeNext<=0;
                        scoreCounter<=scoreCounter+1;
                    end
                else 
                    begin
                        still[0] <=still[0];        still[10]<=still[10];
                        still[1] <=still[1];        still[11]<=still[11];
                        still[2] <=still[2];        still[12]<=still[12];
                        still[3] <=still[3];        still[13]<=still[13];
                        still[4] <=still[4];        still[14]<=still[14];
                        still[5] <=still[5];        still[15]<=still[15];
                        still[6] <=still[6];        still[16]<=still[16];
                        still[7] <=still[7];        still[17]<=still[17];
                        still[8] <=still[8];        still[18]<=still[18];
                        still[9] <=still[9];        still[19]<=still[19];
                        rFixedChangeNext<=1;
                    end     
            end
        
        else if (stateCurr==sTouchDetect)
            rDropNext<=0;
        
        else if ((stateCurr==sLeft)&&(w_timerHard==1)&&(w_leftest==0))
            begin
                move[0] <= move[0]*2;       move[10]<=move[10]*2;
                move[1] <= move[1]*2;       move[11]<=move[11]*2;
                move[2] <= move[2]*2;       move[12]<=move[12]*2;
                move[3] <= move[3]*2;       move[13]<=move[13]*2;
                move[4] <= move[4]*2;       move[14]<=move[14]*2;
                move[5] <= move[5]*2;       move[15]<=move[15]*2;
                move[6] <= move[6]*2;       move[16]<=move[16]*2;
                move[7] <= move[7]*2;       move[17]<=move[17]*2;
                move[8] <= move[8]*2;       move[18]<=move[18]*2;
                move[9] <= move[9]*2;       move[19]<=move[19]*2;
                rDropNext<=0;
            end
        
        else if ((stateCurr==sRight)&&(w_timerHard==1)&&(w_rightest==0))
            begin
                move[0] <= move[0]/2;       move[10]<=move[10]/2;
                move[1] <= move[1]/2;       move[11]<=move[11]/2;
                move[2] <= move[2]/2;       move[12]<=move[12]/2;
                move[3] <= move[3]/2;       move[13]<=move[13]/2;
                move[4] <= move[4]/2;       move[14]<=move[14]/2;
                move[5] <= move[5]/2;       move[15]<=move[15]/2;
                move[6] <= move[6]/2;       move[16]<=move[16]/2;
                move[7] <= move[7]/2;       move[17]<=move[17]/2;
                move[8] <= move[8]/2;       move[18]<=move[18]/2;
                move[9] <= move[9]/2;       move[19]<=move[19]/2;
                rDropNext<=0;
            end
        
        else
            begin
                move[0] <=move[0];      move[10]<=move[10];
                move[1] <=move[1];      move[11]<=move[11];
                move[2] <=move[2];      move[12]<=move[12];
                move[3] <=move[3];      move[13]<=move[13];
                move[4] <=move[4];      move[14]<=move[14];
                move[5] <=move[5];      move[15]<=move[15];
                move[6] <=move[6];      move[16]<=move[16];
                move[7] <=move[7];      move[17]<=move[17];
                move[8] <=move[8];      move[18]<=move[18];
                move[9] <=move[9];      move[19]<=move[19];
            end
            
        if((rNewTetris==1)||(rPage==sHome))
            begin
                if(state == 1)
                    begin
                        next[0]<=20'h200;       next[10]<=0;
                        next[1]<=20'h700;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 2)
                    begin
                        next[0]<=20'h400;       next[10]<=0;
                        next[1]<=20'h700;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 3)
                    begin
                        next[0]<=20'h400;       next[10]<=0;
                        next[1]<=20'h400;       next[11]<=0;
                        next[2]<=20'h400;       next[12]<=0;
                        next[3]<=20'h400;       next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 4)
                    begin
                        next[0]<=20'h600;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 5)
                    begin
                        next[0]<=20'h200;       next[10]<=0;
                        next[1]<=20'h200;       next[11]<=0;
                        next[2]<=20'h600;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 6)
                    begin
                        next[0]<=20'h200;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=20'h200;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 7)
                    begin
                        next[0]<=20'h400;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=20'h200;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 8)                         
                    begin                                   
                        next[0]<=20'h100;       next[10]<=0;
                        next[1]<=20'h700;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                else if(state == 9)                         
                    begin                                   
                        next[0]<=20'hf00;       next[10]<=0;
                        next[1]<=0;             next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 10)                         
                    begin                                   
                        next[0]<=20'h600;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 11)                        
                    begin                                   
                        next[0]<=20'h400;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=20'h400;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 12)                        
                    begin                                   
                        next[0]<=20'h400;       next[10]<=0;
                        next[1]<=20'h400;       next[11]<=0;
                        next[2]<=20'h600;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 13)                        
                    begin                                   
                        next[0]<=20'h200;       next[10]<=0;
                        next[1]<=20'h200;       next[11]<=0;
                        next[2]<=20'h200;       next[12]<=0;
                        next[3]<=20'h200;       next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 14)                        
                    begin                                   
                        next[0]<=20'h600;       next[10]<=0;
                        next[1]<=20'h400;       next[11]<=0;
                        next[2]<=20'h400;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else if(state == 15)                        
                    begin                                   
                        next[0]<=20'h600;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=0;             next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end                                     
                else
                    begin
                        next[0]<=20'h200;       next[10]<=0;
                        next[1]<=20'h600;       next[11]<=0;
                        next[2]<=20'h400;       next[12]<=0;
                        next[3]<=0;             next[13]<=0;
                        next[4]<=0;             next[14]<=0;
                        next[5]<=0;             next[15]<=0;
                        next[6]<=0;             next[16]<=0;
                        next[7]<=0;             next[17]<=0;
                        next[8]<=0;             next[18]<=0;
                        next[9]<=0;             next[19]<=0;
                    end
                rNewTetrisNext<=0;
            end
        else
            begin
                next[0] <=next[0];      next[10]<=next[10];
                next[1] <=next[1];      next[11]<=next[11];
                next[2] <=next[2];      next[12]<=next[12];
                next[3] <=next[3];      next[13]<=next[13];
                next[4] <=next[4];      next[14]<=next[14];
                next[5] <=next[5];      next[15]<=next[15];
                next[6] <=next[6];      next[16]<=next[16];
                next[7] <=next[7];      next[17]<=next[17];
                next[8] <=next[8];      next[18]<=next[18];
                next[9] <=next[9];      next[19]<=next[19];
            end
      end
      
    
    //Drawing on the screen
    always @(*)
    begin
        //Patterns in homepage
            if (rPage==sHome)
                begin
                    // Title "TETRIS"
                    if ((iCountV>=V_tetris)&&(iCountV<V_tetris+W_tetris)&&(iCountH>=H_tetris)&&(iCountH<H_tetris+L_tetris))
                        //if ((iCountV<iShapeY)&&(iCountV>=iShapeY+iShapeSize)&&(iCountH<iShapeX)&&(iCountH>=iShapeX+iShapeSize))
                            begin
                                if (tetris[iCountV-V_tetris][L_tetris-1-(iCountH-H_tetris)])
                                    begin
                                        r_oRed<=4'b1111;
                                        r_oGreen<=4'b0011;
                                        r_oBlue<=4'b0011;
                                    end
                                else
                                    begin
                                        r_oRed<=4'b0000;
                                        r_oGreen<=4'b0000;
                                        r_oBlue<=4'b0000;
                                    end
                            end
                        
                    // Tip sentence
                    else if ((iCountV>=V_tip)&&(iCountV<V_tip+W_tip)&&(iCountH>=H_tip)&&(iCountH<H_tip+L_tip))
                        //if ((iCountV<iShapeY)&&(iCountV>=iShapeY+iShapeSize)&&(iCountH<iShapeX)&&(iCountH>=iShapeX+iShapeSize))
                            begin
                                if (tip[iCountV-V_tip][L_tip-1-(iCountH-H_tip)])
                                    begin
                                        r_oRed<=4'b1111;
                                        r_oGreen<=4'b1111;
                                        r_oBlue<=4'b1111;
                                    end
                                else
                                    begin
                                        r_oRed<=4'b0000;
                                        r_oGreen<=4'b0000;
                                        r_oBlue<=4'b0000;
                                    end
                            end
                    
                    // Blue block for normal difficulty
                    else if ((iCountV>=400)&&(iCountV<440)&&(iCountH>=300)&&(iCountH<340))
                        begin
                            r_oRed<=4'b0000;
                            r_oGreen<=4'b0000;
                            r_oBlue<=4'b1111;
                        end
                    
                    // Green block for easy difficulty
                    else if ((iCountV>=400)&&(iCountV<440)&&(iCountH>=60)&&(iCountH<100))
                        begin
                            r_oRed<=4'b0000;
                            r_oGreen<=4'b1000;
                            r_oBlue<=4'b0000;
                        end
                    
                    // Purple block for hard difficulty
                    else if ((iCountV>=400)&&(iCountV<440)&&(iCountH>=540)&&(iCountH<580))
                        begin
                            r_oRed<=4'b1000;
                            r_oGreen<=4'b0000;
                            r_oBlue<=4'b1110;
                        end
                    
                    //Moving red block
                    else if ((iCountH>=iShapeX)&&(iCountH<iShapeX+iShapeSize)&&(iCountV>=iShapeY)&&(iCountV<iShapeY+iShapeSize))
                        begin
                            r_oRed<=4'b1111;
                            r_oBlue<=4'b0000;
                            r_oGreen<=4'b0000;
                        end
                    
                    //Black background
                    else
                        begin
                            r_oRed<=4'b0000;
                            r_oGreen<=4'b0000;
                            r_oBlue<=4'b0000;
                        end
                end
                            
            //Game page with easy difficulty
            else if ((rPage==sEasy)||(rPage==sNormal)||(rPage==sHard))
                begin
                    
                    ////show the top frame
                    if (iCountV >= BeginV && iCountV < BeginV + TetrisBlockSize && iCountH > BeginH && iCountH < BeginH + OuterH) begin
                            if (iCountH % TetrisBlockSize == 0) begin
                                r_oRed <= 0;
                                r_oGreen <= 0;
                                r_oBlue <= 0;
                            end 
                            else begin
                                r_oRed <= 15;
                               r_oGreen <= 8;
                                r_oBlue <= 0;
                            end
                    end
                    
                    //Show numbers of score
                    else if ((iCountV>= V_numberOnes)&&(iCountV<V_numberOnes+W_numberOnes)&&(iCountH>=H_numberOnes)&&(iCountH<H_numberOnes+L_numberOnes))
                        begin
                        case (ones)
                            4'b0000:begin
                                    if (zero[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)]==1)
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0001:begin
                                    if (one[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0010:begin
                                    if (two[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0011:begin
                                    if (three[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0100:begin
                                    if (four[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0101:begin
                                    if (five[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0110:begin
                                    if (six[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0111:begin
                                    if (seven[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b1000:begin
                                    if (eight[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            default:begin
                                    if (nine[iCountV-V_numberOnes][L_numberOnes-1-(iCountH-H_numberOnes)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                        endcase
                        end
                                        
                    else if ((iCountV>= V_numberTens)&&(iCountV<V_numberTens+W_numberTens)&&(iCountH>=H_numberTens)&&(iCountH<H_numberTens+L_numberTens))
                        begin
                        case (tens)
                            4'b0000:begin
                                    if (zero[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)]==1)
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0001:begin
                                    if (one[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0010:begin
                                    if (two[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                
                            4'b0011:begin
                                    if (three[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0100:begin
                                    if (four[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0101:begin
                                    if (five[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0110:begin
                                    if (six[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b0111:begin
                                    if (seven[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            4'b1000:begin
                                    if (eight[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                            default:begin
                                    if (nine[iCountV-V_numberTens][L_numberTens-1-(iCountH-H_numberTens)])
                                        begin
                                            r_oRed<=4'b1111;
                                            r_oGreen<=4'b1111;
                                            r_oBlue<=4'b1111;
                                        end
                                    else
                                        begin
                                            r_oRed<=4'b0000;
                                            r_oGreen<=4'b0000;
                                            r_oBlue<=4'b0000;
                                        end
                                    end
                                    
                        endcase
                        end
                                                 
                    //show the three vertical frame
                    else if (iCountV >= BeginV + TetrisBlockSize && iCountV < BeginV + OuterV - TetrisBlockSize && iCountH > BeginH && iCountH < BeginH + TetrisBlockSize ) begin
                        if (iCountV % TetrisBlockSize == 0) begin
                            r_oRed <= 0;
                            r_oGreen <= 0;
                            r_oBlue <= 0;
                        end 
                        else begin
                            r_oRed <= 15;
                            r_oGreen <= 8;
                            r_oBlue <= 0;
                        end
                    end   
                     
                    else if (iCountV >= BeginV + TetrisBlockSize && iCountV < BeginV + OuterV - TetrisBlockSize && iCountH > BeginH + TetrisBlockSize * 8 && iCountH < BeginH + TetrisBlockSize * 9 ) begin
                        if (iCountV % TetrisBlockSize == 0) begin
                            r_oRed <= 0;
                            r_oGreen <= 0;
                            r_oBlue <= 0;
                        end 
                        else begin
                            r_oRed <= 15;
                            r_oGreen <= 8;
                            r_oBlue <= 0;
                        end
                    end
                        
                    else if (iCountV >= BeginV + TetrisBlockSize && iCountV < BeginV + OuterV - TetrisBlockSize && iCountH > BeginH + TetrisBlockSize * 29 && iCountH < BeginH + TetrisBlockSize * 30 ) begin
                        if (iCountV % TetrisBlockSize == 0) begin
                            r_oRed <= 0;
                            r_oGreen <= 0;
                            r_oBlue <= 0;
                        end 
                        else begin
                            r_oRed <= 15;
                            r_oGreen <= 8;
                            r_oBlue <= 0;
                        end
                    end 
            
                                
                    //show the bottom frame
                    else if (iCountV > BeginV + OuterV - TetrisBlockSize && iCountV < BeginV + OuterV && iCountH > BeginH && iCountH < BeginH + OuterH) 
                        begin
                            if (iCountH % TetrisBlockSize == 0) 
                                begin
                                    r_oRed <= 0;
                                    r_oGreen <= 0;
                                    r_oBlue <= 0;
                                end  
                            else 
                                begin
                                    r_oRed <= 15;
                                    r_oGreen <= 8;
                                    r_oBlue <= 0;
                                end
                        end
                    
                    //Show left-middle frame    
                    else if ((iCountV > BeginV + 8*TetrisBlockSize )&&(iCountV < BeginV + 9 * TetrisBlockSize)&&(iCountH > BeginH + TetrisBlockSize)&&(iCountH < 9 * TetrisBlockSize)) 
                        begin
                            if (iCountH % TetrisBlockSize == 0) 
                                begin
                                    r_oRed <= 0;
                                    r_oGreen <= 0;
                                    r_oBlue <= 0;
                                end  
                            else 
                                begin
                                    r_oRed <= 15;
                                    r_oGreen <= 8;
                                    r_oBlue <= 0;
                                end
                        end
                    
                    //Show Next block array 
                    else if((iCountV >= BeginV + 2*TetrisBlockSize )&&(iCountV < BeginV + 6 * TetrisBlockSize)&&(iCountH > BeginH + TetrisBlockSize)&&(iCountH < 9 * TetrisBlockSize) ) 
                        begin
                            if ((iCountV % TetrisBlockSize == 0) || (iCountH % TetrisBlockSize==0)) 
                                begin
                                    r_oRed <= 0;
                                    r_oGreen <= 0;
                                    r_oBlue <= 0;
                                end
                            
                            else 
                                if(next[(iCountV / 20)-4][19 - ((iCountH + 100)/ 20)]==1)
                                    begin
                                        r_oRed<=0;  
                                        r_oGreen<=0;
                                        r_oBlue<=11; 
                                    end 
                                else 
                                    begin
                                        r_oRed <= 0;
                                        r_oGreen <= 0;
                                        r_oBlue <= 0; 
                                    end  
                         end                
                      
                    // playing region
                    else if (( iCountV >= BeginV + TetrisBlockSize)&&( iCountV < OuterV )&&( iCountH > 10*TetrisBlockSize )&&(iCountH< OuterH ))
                        begin
                            if ((iCountV % TetrisBlockSize == 0) || (iCountH % TetrisBlockSize==0)) 
                                begin
                                    r_oRed <= 0;
                                    r_oGreen <= 0;
                                    r_oBlue <= 0;
                                end
                            else if((still[(iCountV / 20)-2][19 - ((iCountH - 200) / 20)] + move[(iCountV /20) -2][19-((iCountH-200) / 20)])==1)
                                begin
                                     //show                                                                                                             
                                    r_oRed<=4'b1000;                                                                                                      
                                    r_oGreen<=4'b0000;                                                                                                    
                                    r_oBlue<=4'b1110;                                                                                                      
                                end
                            else 
                                begin               
                                    r_oRed <= 0;   
                                    r_oGreen <= 0;                                                                                                                 
                                    r_oBlue <= 0; 
                                end
                        end
                        
                    
                    else 
                        begin
                           r_oRed <= 0;
                           r_oGreen <= 0;
                           r_oBlue <= 0;
                        end
                
            end 
                
        end
    
    //Assignment of arrays of texts (from line 99 ~ line 696)
    always @(*)
    begin
        tetris[0]  <= 336'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tetris[1]  <= 336'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tetris[2]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFC0000FFFFFFFFFF8001FFFFFFFF0000003FFFFFFFFE000007FFFFFF8000;
        tetris[3]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFE0000FFFFFFFFFF8001FFFFFFFFC000007FFFFFFFFF00001FFFFFFFC000;
        tetris[4]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFE00000FFFFFFFFFF80003FFFFFFFF000;
        tetris[5]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFF00000FFFFFFFFFF80007FFFFFFFF800;
        tetris[6]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFF80000FFFFFFFFFF8000FFFFFFFFFC00;
        tetris[7]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFFC0000FFFFFFFFFF8000FFFFFFFFFC00;
        tetris[8]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFFC0000FFFFFFFFFF8000FFFFFFFFFE00;
        tetris[9]  <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFFE0000FFFFFFFFFF8001FFFFFFFFFE00;
        tetris[10] <= 336'h00FFFFFFFFFF8001FFFFFFFFFF0000FFFFFFFFFF8001FFFFFFFFFE0000FFFFFFFFFF8001FFFFFFFFFE00;
        tetris[11] <= 336'h00FFFFFFFFFF8001FFFFFFFFFE0000FFFFFFFFFF8001FFFFFFFFFF00007FFFFFFFFF0001FFFFFFFFFF00;
        tetris[12] <= 336'h00FFFFFFFFFF8001FFFFFFFFFC0000FFFFFFFFFF8001FFFFFFFFFF00003FFFFFFFFE0001FFFFFFFFFF00;
        tetris[13] <= 336'h00FFE1FFC3FF8001FFC00000000000FFE1FFC3FF8001FFC0001FFF00000001FFC0000001FFC0001FFF00;
        tetris[14] <= 336'h00FFE1FFC3FF8001FFC00000000000FFE1FFC3FF8001FFC0000FFF00000001FFC0000001FFE0000FFF00;
        tetris[15] <= 336'h00FFE1FFC3FF8001FFC00000000000FFE1FFC3FF8001FFC00007FF00000001FFC0000001FFF0000FFF00;
        tetris[16] <= 336'h00FFE1FFC3FF8001FFC00000000000FFE1FFC3FF8001FFC00007FF00000001FFC0000001FFF00007FF00;
        tetris[17] <= 336'h00FFE1FFC3FF8001FFC00000000000FFE1FFC3FF8001FFC00007FF00000001FFC0000000FFF80007FF00;
        tetris[18] <= 336'h007FC1FFC1FF0001FFC000000000007FC1FFC1FF0001FFC00007FF00000001FFC0000000FFFC0007FF00;
        tetris[19] <= 336'h003F81FFC0FE0001FFC000000000003F81FFC0FE0001FFC00007FF00000001FFC0000000FFFC0003FE00;
        tetris[20] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC00007FF00000001FFC00000007FFE0003FC00;
        tetris[21] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC00007FF00000001FFC00000003FFF00000000;
        tetris[22] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC0000FFF00000001FFC00000003FFF00000000;
        tetris[23] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC0001FFF00000001FFC00000001FFF80000000;
        tetris[24] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFF00000001FFC00000000FFFC0000000;
        tetris[25] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFF00000001FFC00000000FFFC0000000;
        tetris[26] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFE00000001FFC000000007FFE0000000;
        tetris[27] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFE00000001FFC000000003FFF0000000;
        tetris[28] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFC00000001FFC000000003FFF0000000;
        tetris[29] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFFC00000001FFC000000001FFF8000000;
        tetris[30] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFF800000001FFC000000000FFFC000000;
        tetris[31] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFFFFFFFF000000001FFC000000000FFFC000000;
        tetris[32] <= 336'h000001FFC0000001FFFFFE000000000001FFC0000001FFFFFFFFE000000001FFC0000000007FFE000000;
        tetris[33] <= 336'h000001FFC0000001FFFFFF000000000001FFC0000001FFFFFFFFC000000001FFC0000000003FFF000000;
        tetris[34] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFFFFFFF0000000001FFC0000000003FFF000000;
        tetris[35] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFCFFF800000000001FFC0000000001FFF800000;
        tetris[36] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFC7FF800000000001FFC0000000000FFFC00000;
        tetris[37] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFC7FFC00000000001FFC0000000000FFFE00000;
        tetris[38] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFC3FFC00000000001FFC00000000007FFE00000;
        tetris[39] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFC3FFE00000000001FFC00000000003FFF00000;
        tetris[40] <= 336'h000001FFC0000001FFFFFF800000000001FFC0000001FFC1FFF00000000001FFC00000000003FFF80000;
        tetris[41] <= 336'h000001FFC0000001FFFFFF000000000001FFC0000001FFC1FFF00000000001FFC00000000001FFF80000;
        tetris[42] <= 336'h000001FFC0000001FFFFFE000000000001FFC0000001FFC0FFF80000000001FFC00000000000FFFC0000;
        tetris[43] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC0FFF80000000001FFC00000000000FFFE0000;
        tetris[44] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC07FFC0000000001FFC000000000007FFE0000;
        tetris[45] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC07FFC0000000001FFC000000000003FFF0000;
        tetris[46] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC03FFE0000000001FFC000000000001FFF8000;
        tetris[47] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC03FFE0000000001FFC000000000001FFF8000;
        tetris[48] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC01FFF0000000001FFC000000000000FFFC000;
        tetris[49] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC01FFF0000000001FFC0000000000007FFE000;
        tetris[50] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC00FFF8000000001FFC0000000000007FFE000;
        tetris[51] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC00FFF8000000001FFC0000000000003FFF000;
        tetris[52] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC007FFC000000001FFC0000000000001FFF800;
        tetris[53] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC007FFC000000001FFC0000000000001FFF800;
        tetris[54] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC003FFE000000001FFC00000007F0000FFFC00;
        tetris[55] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC003FFE000000001FFC0000000FF80007FFE00;
        tetris[56] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC001FFF000000001FFC0000001FFC0007FFE00;
        tetris[57] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC001FFF000000001FFC0000001FFC0003FFE00;
        tetris[58] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC000FFF800000001FFC0000001FFC0001FFF00;
        tetris[59] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC000FFF800000001FFC0000001FFC0001FFF00;
        tetris[60] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC0007FFC00000001FFC0000001FFC0000FFF00;
        tetris[61] <= 336'h000001FFC0000001FFC000000000000001FFC0000001FFC0007FFC00000001FFC0000001FFE00007FF00;
        tetris[62] <= 336'h000001FFC0000001FFFFFFFFFC00000001FFC0000001FFC0003FFE00003FFFFFFFFE0001FFFFFFFFFF00;
        tetris[63] <= 336'h000001FFC0000001FFFFFFFFFE00000001FFC0000001FFC0003FFE00007FFFFFFFFF0001FFFFFFFFFF00;
        tetris[64] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC0001FFF0000FFFFFFFFFF8001FFFFFFFFFF00;
        tetris[65] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC0001FFF0000FFFFFFFFFF8000FFFFFFFFFF00;
        tetris[66] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC0000FFF0000FFFFFFFFFF8000FFFFFFFFFE00;
        tetris[67] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC0000FFF0000FFFFFFFFFF80007FFFFFFFFE00;
        tetris[68] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC00007FF0000FFFFFFFFFF80007FFFFFFFFE00;
        tetris[69] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC00007FF0000FFFFFFFFFF80003FFFFFFFFC00;
        tetris[70] <= 336'h000001FFC0000001FFFFFFFFFF00000001FFC0000001FFC00003FF0000FFFFFFFFFF80001FFFFFFFF800;
        tetris[71] <= 336'h000000FF80000001FFFFFFFFFE00000000FF80000000FF800003FE00007FFFFFFFFF00000FFFFFFFF000;
        tetris[72] <= 336'h0000007F00000001FFFFFFFFFC000000007F000000007F000001FC00003FFFFFFFFE000003FFFFFFC000;
        tetris[73] <= 336'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tetris[74] <= 336'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        
        tip[0]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[1]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[2]  <= 320'h000000000000000000000000000038000000000000000000001C000038007F000000000038000000;
        tip[3]  <= 320'h00003C3C0000000000000000000038000000000000000000001C000038007F000000000038000000;
        tip[4]  <= 320'h00003C3C00000000000000000E0038000000000000000000001C000038007F000000000038000000;
        tip[5]  <= 320'h00003C7C00000000000000000E0038000000000000000000001C0000380007000000000038000000;
        tip[6]  <= 320'h0000367C00000000000000000E0038000000000000000000001C0000380007000000000038000000;
        tip[7]  <= 320'h0000367C03C0000003C000000E0039C003C00000003803C0071C000039C0070003C001E038000000;
        tip[8]  <= 320'h0000367C0FF0701C0FF000007FFC3BF00FF000003EFC0FF01FDC00003BF807000FF00FF8381C0000;
        tip[9]  <= 320'h000033DC1FF8381C1FF800007FFC3F781FF800003FDE1FF83EDC00003F7C07001FF81FFC381C0000;
        tip[10] <= 320'h000033DC3C38381C381800000E003C38381800000F0E3818383C00003C1C07003C381C0C38380000;
        tip[11] <= 320'h000033DC381C1838381C00000E00381C381C00000E0E381C301C0000380C0700381C380038380000;
        tip[12] <= 320'h0000339C381C1C38301C00000E00381C301C00000E00301C701C0000380C0700381C380038700000;
        tip[13] <= 320'h0000301C381C1C303FFC00000E00381C3FFC00000E003FFC701C0000380C0700381C38003FF00000;
        tip[14] <= 320'h0000301C381C0E703FFC00000E00381C3FFC00000E003FFC701C0000380C0700381C38003FE00000;
        tip[15] <= 320'h0000301C381C0E70380000000E00381C380000000E003800701C0000381C0700381C380038700000;
        tip[16] <= 320'h0000301C381C0660380000000600381C380000000E003800383C0000381C0700381C3C0038780000;
        tip[17] <= 320'h0000301C1C3807E01E0000000700381C1E0000000E001E00383C0000387803801C381E0038380000;
        tip[18] <= 320'h0000301C1FF007C00FF8000007FC381C0FF800007FC00FF81FDC00003FF003FC1FF00FFC381C0000;
        tip[19] <= 320'h0000301C07E003C007F8000001FC381C07F800007FC007F80FDC00003FC001FC07E007FC381E0000;
        tip[20] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[21] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[22] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[23] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[24] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[25] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[26] <= 320'h000000000000000000007F000000000000000000001C00C0007E007E00C0000000007F0000000000;
        tip[27] <= 320'h000000000000000000007F000000000000000000001C01E001FE01FE01E0000000007F0000000000;
        tip[28] <= 320'h0E0000000000000000007F00000000000E000000001C01E003E203E201E0000000007F000E000000;
        tip[29] <= 320'h0E0000000000000000000700000000000E000000001C00800380038000800000000007000E000000;
        tip[30] <= 320'h0E0000000000000000000700000000000E000000001C00000300030000000000000007000E000000;
        tip[31] <= 320'h0E0003C0000001F803C0070003C001E00E000000071C000007000700000001E0000007000E000000;
        tip[32] <= 320'h7FFC0FF000000FF80FF007000FF00FF87FFC00001FDC1FC0070007001FC00FF8383807007FFC701C;
        tip[33] <= 320'h7FFC1FF800001FF81FF807001FF81FFC7FFC00003EDC1FC0070007001FC01FFC383807007FFC301C;
        tip[34] <= 320'h0E003C38000038003818070038181C0C0E000000383C01C07FFC7FFC01C01C0C383807000E00381C;
        tip[35] <= 320'h0E00381C00003800381C0700381C38000E000000301C01C07FFC7FFC01C03800383807000E003818;
        tip[36] <= 320'h0E00381C00001F00301C0700301C38000E000000701C01C07FFC7FFC01C03800383807000E001C38;
        tip[37] <= 320'h0E00381C00000FF03FFC07003FFC38000E000000701C01C00700070001C03800383807000E001C38;
        tip[38] <= 320'h0E00381C000003F83FFC07003FFC38000E000000701C01C00700070001C03800383807000E000E30;
        tip[39] <= 320'h0E00381C0000003C38000700380038000E000000701C01C00700070001C03800383807000E000E70;
        tip[40] <= 320'h0600381C0000001C3800070038003C0006000000383C01C00700070001C03C003838070006000670;
        tip[41] <= 320'h07001C380000003C1E0003801E001E0007000000383C01C00700070001C01E003C78038007000760;
        tip[42] <= 320'h07FC1FF000003FF80FF803FC0FF80FFC07FC00001FDC3FFE070007003FFE0FFC1FDE03FC07FC03E0;
        tip[43] <= 320'h01FC07E000003FF007F801FC07F807FC01FC00000FDC3FFE070007003FFE07FC0F9E01FC01FC03C0;
        tip[44] <= 320'h000000000000000000000000000000000000000000000000000000000000000000000000000001C0;
        tip[45] <= 320'h000000000000000000000000000000000000000000000000000000000000000000000000000001C0;
        tip[46] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000780;
        tip[47] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000007F00;
        tip[48] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000007E00;
        tip[49] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000004000;
        tip[50] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
        tip[51] <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    
        zero[0]  <= 32'h00000000;       zero[22] <= 32'h07E003F0;
        zero[1]  <= 32'h00000000;       zero[23] <= 32'h07E003F0;
        zero[2]  <= 32'h01FFFFC0;       zero[24] <= 32'h07E003F0;
        zero[3]  <= 32'h03FFFFE0;       zero[25] <= 32'h07E003F0;
        zero[4]  <= 32'h07FFFFF0;       zero[26] <= 32'h07E003F0;
        zero[5]  <= 32'h07FFFFF0;       zero[27] <= 32'h07E003F0;
        zero[6]  <= 32'h07FFFFF0;       zero[28] <= 32'h07E003F0;
        zero[7]  <= 32'h07FFFFF0;       zero[29] <= 32'h07E003F0;
        zero[8]  <= 32'h07E003F0;       zero[30] <= 32'h07E003F0;
        zero[9]  <= 32'h07E003F0;       zero[31] <= 32'h07E003F0;
        zero[10] <= 32'h07E003F0;       zero[32] <= 32'h07E003F0;
        zero[11] <= 32'h07E003F0;       zero[33] <= 32'h07E003F0;
        zero[12] <= 32'h07E003F0;       zero[34] <= 32'h07E003F0;
        zero[13] <= 32'h07E003F0;       zero[35] <= 32'h07E003F0;
        zero[14] <= 32'h07E003F0;       zero[36] <= 32'h07FFFFF0;
        zero[15] <= 32'h07E003F0;       zero[37] <= 32'h07FFFFF0;
        zero[16] <= 32'h07E003F0;       zero[38] <= 32'h07FFFFF0;
        zero[17] <= 32'h07E003F0;       zero[39] <= 32'h07FFFFF0;
        zero[18] <= 32'h07E003F0;       zero[40] <= 32'h03FFFFE0;
        zero[19] <= 32'h07E003F0;       zero[41] <= 32'h01FFFFC0;
        zero[20] <= 32'h07E003F0;       zero[42] <= 32'h00000000;
        zero[21] <= 32'h07E003F0;       zero[43] <= 32'h00000000;
        
        one[0]  <= 32'h00000000;        one[22] <= 32'h0003F000;
        one[1]  <= 32'h00000000;        one[23] <= 32'h0003F1E0;
        one[2]  <= 32'h01FFF000;        one[24] <= 32'h0003F3F0;
        one[3]  <= 32'h03FFF000;        one[25] <= 32'h0003F3F0;
        one[4]  <= 32'h03FFF000;        one[26] <= 32'h0003F3F0;
        one[5]  <= 32'h03FFF000;        one[27] <= 32'h0003F3F0;
        one[6]  <= 32'h03FFF000;        one[28] <= 32'h0003F3F0;
        one[7]  <= 32'h01FFF000;        one[29] <= 32'h0003F3F0;
        one[8]  <= 32'h0003F000;        one[30] <= 32'h0003F3F0;
        one[9]  <= 32'h0003F000;        one[31] <= 32'h0003F3F0;
        one[10] <= 32'h0003F000;        one[32] <= 32'h0003F3F0;
        one[11] <= 32'h0003F000;        one[33] <= 32'h0003F3F0;
        one[12] <= 32'h0003F000;        one[34] <= 32'h0003F3F0;
        one[13] <= 32'h0003F000;        one[35] <= 32'h0003F3F0;
        one[14] <= 32'h0003F000;        one[36] <= 32'h01FFFFF0;
        one[15] <= 32'h0003F000;        one[37] <= 32'h03FFFFF0;
        one[16] <= 32'h0003F000;        one[38] <= 32'h03FFFFF0;
        one[17] <= 32'h0003F000;        one[39] <= 32'h03FFFFF0;
        one[18] <= 32'h0003F000;        one[40] <= 32'h03FFFFF0;
        one[19] <= 32'h0003F000;        one[41] <= 32'h01FFFFE0;
        one[20] <= 32'h0003F000;        one[42] <= 32'h00000000;
        one[21] <= 32'h0003F000;        one[43] <= 32'h00000000;
   
        two[0] <= 32'h00000000;         two[22] <= 32'h07FFFFE0;
        two[1] <= 32'h00000000;         two[23] <= 32'h07FFFFE0;
        two[2] <= 32'h03FFFFC0;         two[24] <= 32'h07FFFFC0;
        two[3] <= 32'h07FFFFE0;         two[25] <= 32'h07E00000;
        two[4] <= 32'h07FFFFE0;         two[26] <= 32'h07E00000;
        two[5] <= 32'h07FFFFF0;         two[27] <= 32'h07E00000;
        two[6] <= 32'h07FFFFF0;         two[28] <= 32'h07E00000;
        two[7] <= 32'h03FFFFF0;         two[29] <= 32'h07E00000;
        two[8] <= 32'h000003F0;         two[30] <= 32'h07E00000;
        two[9] <= 32'h000003F0;         two[31] <= 32'h07E00000;
        two[10] <= 32'h000003F0;        two[32] <= 32'h07E00000;
        two[11] <= 32'h000003F0;        two[33] <= 32'h07E00000;
        two[12] <= 32'h000003F0;        two[34] <= 32'h07E00000;
        two[13] <= 32'h000003F0;        two[35] <= 32'h07E00000;
        two[14] <= 32'h000003F0;        two[36] <= 32'h07FFFFE0;
        two[15] <= 32'h000003F0;        two[37] <= 32'h07FFFFF0;
        two[16] <= 32'h000003F0;        two[38] <= 32'h07FFFFF0;
        two[17] <= 32'h000003F0;        two[39] <= 32'h07FFFFF0;
        two[18] <= 32'h000003F0;        two[40] <= 32'h07FFFFF0;
        two[19] <= 32'h01FFFFF0;        two[41] <= 32'h07FFFFE0;
        two[20] <= 32'h03FFFFF0;        two[42] <= 32'h00000000;
        two[21] <= 32'h03FFFFF0;        two[43] <= 32'h00000000;
        
        three[0] <= 32'h00000000;       three[22] <= 32'h007FFFE0;
        three[1] <= 32'h00000000;       three[23] <= 32'h007FFFE0;
        three[2] <= 32'h03FFFFC0;       three[24] <= 32'h003FFFF0;
        three[3] <= 32'h07FFFFE0;       three[25] <= 32'h000007F0;
        three[4] <= 32'h07FFFFE0;       three[26] <= 32'h000003F0;
        three[5] <= 32'h07FFFFF0;       three[27] <= 32'h000003F0;
        three[6] <= 32'h07FFFFF0;       three[28] <= 32'h000003F0;
        three[7] <= 32'h03FFFFF0;       three[29] <= 32'h000003F0;
        three[8] <= 32'h000003F0;       three[30] <= 32'h000003F0;
        three[9] <= 32'h000003F0;       three[31] <= 32'h000003F0;
        three[10] <= 32'h000003F0;      three[32] <= 32'h000003F0;
        three[11] <= 32'h000003F0;      three[33] <= 32'h000003F0;
        three[12] <= 32'h000003F0;      three[34] <= 32'h000003F0;
        three[13] <= 32'h000003F0;      three[35] <= 32'h000003F0;
        three[14] <= 32'h000003F0;      three[36] <= 32'h03FFFFF0;
        three[15] <= 32'h000003F0;      three[37] <= 32'h07FFFFF0;
        three[16] <= 32'h000003F0;      three[38] <= 32'h07FFFFF0;
        three[17] <= 32'h000003F0;      three[39] <= 32'h07FFFFE0;
        three[18] <= 32'h000007F0;      three[40] <= 32'h07FFFFE0;
        three[19] <= 32'h003FFFF0;      three[41] <= 32'h03FFFFC0;
        three[20] <= 32'h007FFFE0;      three[42] <= 32'h00000000;
        three[21] <= 32'h007FFFE0;      three[43] <= 32'h00000000;

        four[0] <= 32'h00000000;        four[22] <= 32'h03F01F80;
        four[1] <= 32'h00000000;        four[23] <= 32'h03FFFFC0;
        four[2] <= 32'h01E00000;        four[24] <= 32'h03FFFFE0;
        four[3] <= 32'h03F00000;        four[25] <= 32'h03FFFFE0;
        four[4] <= 32'h03F00000;        four[26] <= 32'h03FFFFE0;
        four[5] <= 32'h03F00000;        four[27] <= 32'h03FFFFE0;
        four[6] <= 32'h03F00F00;        four[28] <= 32'h03FFFFC0;
        four[7] <= 32'h03F01F80;        four[29] <= 32'h00001F80;
        four[8] <= 32'h03F01F80;        four[30] <= 32'h00001F80;
        four[9] <= 32'h03F01F80;        four[31] <= 32'h00001F80;
        four[10] <= 32'h03F01F80;       four[32] <= 32'h00001F80;
        four[11] <= 32'h03F01F80;       four[33] <= 32'h00001F80;
        four[12] <= 32'h03F01F80;       four[34] <= 32'h00001F80;
        four[13] <= 32'h03F01F80;       four[35] <= 32'h00001F80;
        four[14] <= 32'h03F01F80;       four[36] <= 32'h00001F80;
        four[15] <= 32'h03F01F80;       four[37] <= 32'h00001F80;
        four[16] <= 32'h03F01F80;       four[38] <= 32'h00001F80;
        four[17] <= 32'h03F01F80;       four[39] <= 32'h00001F80;
        four[18] <= 32'h03F01F80;       four[40] <= 32'h00001F80;
        four[19] <= 32'h03F01F80;       four[41] <= 32'h00000F00;
        four[20] <= 32'h03F01F80;       four[42] <= 32'h00000000;
        four[21] <= 32'h03F01F80;       four[43] <= 32'h00000000;

        five[0] <= 32'h00000000;        five[22] <= 32'h007FFFF0;
        five[1] <= 32'h00000000;        five[23] <= 32'h007FFFF0;
        five[2] <= 32'h007FFFE0;        five[24] <= 32'h007FFFF0;
        five[3] <= 32'h007FFFF0;        five[25] <= 32'h000003F0;
        five[4] <= 32'h007FFFF0;        five[26] <= 32'h000003F0;
        five[5] <= 32'h007FFFF0;        five[27] <= 32'h000003F0;
        five[6] <= 32'h007FFFF0;        five[28] <= 32'h000003F0;
        five[7] <= 32'h007FFFE0;        five[29] <= 32'h000003F0;
        five[8] <= 32'h007E0000;        five[30] <= 32'h000003F0;
        five[9] <= 32'h007E0000;        five[31] <= 32'h000003F0;
        five[10] <= 32'h007E0000;       five[32] <= 32'h000003F0;
        five[11] <= 32'h007E0000;       five[33] <= 32'h000003F0;
        five[12] <= 32'h007E0000;       five[34] <= 32'h03E003F0;
        five[13] <= 32'h007E0000;       five[35] <= 32'h07F803F0;
        five[14] <= 32'h007E0000;       five[36] <= 32'h07FFFFF0;
        five[15] <= 32'h007E0000;       five[37] <= 32'h07FFFFF0;
        five[16] <= 32'h007E0000;       five[38] <= 32'h07FFFFF0;
        five[17] <= 32'h007E0000;       five[39] <= 32'h03FFFFE0;
        five[18] <= 32'h007E0000;       five[40] <= 32'h00FFFFE0;
        five[19] <= 32'h007FFFC0;       five[41] <= 32'h003FFFC0;
        five[20] <= 32'h007FFFE0;       five[42] <= 32'h00000000;
        five[21] <= 32'h007FFFE0;       five[43] <= 32'h00000000;

        six[0] <= 32'h00000000;         six[22] <= 32'h07E00000;
        six[1] <= 32'h00000000;         six[23] <= 32'h07FFFFE0;
        six[2] <= 32'h03F00000;         six[24] <= 32'h07FFFFF0;
        six[3] <= 32'h07F80000;         six[25] <= 32'h07FFFFF0;
        six[4] <= 32'h07F80000;         six[26] <= 32'h07FFFFF0;
        six[5] <= 32'h07F80000;         six[27] <= 32'h07FFFFF0;
        six[6] <= 32'h07F80000;         six[28] <= 32'h07FFFFF0;
        six[7] <= 32'h07F00000;         six[29] <= 32'h07E003F0;
        six[8] <= 32'h07E00000;         six[30] <= 32'h07E003F0;
        six[9] <= 32'h07E00000;         six[31] <= 32'h07E003F0;
        six[10] <= 32'h07E00000;        six[32] <= 32'h07E003F0;
        six[11] <= 32'h07E00000;        six[33] <= 32'h07E003F0;
        six[12] <= 32'h07E00000;        six[34] <= 32'h07E003F0;
        six[13] <= 32'h07E00000;        six[35] <= 32'h07E003F0;
        six[14] <= 32'h07E00000;        six[36] <= 32'h07FFFFF0;
        six[15] <= 32'h07E00000;        six[37] <= 32'h07FFFFF0;
        six[16] <= 32'h07E00000;        six[38] <= 32'h07FFFFF0;
        six[17] <= 32'h07E00000;        six[39] <= 32'h07FFFFF0;
        six[18] <= 32'h07E00000;        six[40] <= 32'h07FFFFF0;
        six[19] <= 32'h07E00000;        six[41] <= 32'h03FFFFE0;
        six[20] <= 32'h07E00000;        six[42] <= 32'h00000000;
        six[21] <= 32'h07E00000;        six[43] <= 32'h00000000;

        seven[0] <= 32'h00000000;       seven[22] <= 32'h0001FF00;
        seven[1] <= 32'h00000000;       seven[23] <= 32'h0003FE00;
        seven[2] <= 32'h03FFFFE0;       seven[24] <= 32'h0007FC00;
        seven[3] <= 32'h07FFFFE0;       seven[25] <= 32'h0007F800;
        seven[4] <= 32'h07FFFFE0;       seven[26] <= 32'h0007F000;
        seven[5] <= 32'h07FFFFE0;       seven[27] <= 32'h0007E000;
        seven[6] <= 32'h07FFFFE0;       seven[28] <= 32'h0007E000;
        seven[7] <= 32'h07FFFFE0;       seven[29] <= 32'h0007E000;
        seven[8] <= 32'h07E007E0;       seven[30] <= 32'h0007E000;
        seven[9] <= 32'h03C007E0;       seven[31] <= 32'h0007E000;
        seven[10] <= 32'h000007E0;      seven[32] <= 32'h0007E000;
        seven[11] <= 32'h000007E0;      seven[33] <= 32'h0007E000;
        seven[12] <= 32'h000007E0;      seven[34] <= 32'h0007E000;
        seven[13] <= 32'h000007E0;      seven[35] <= 32'h0007E000;
        seven[14] <= 32'h000007E0;      seven[36] <= 32'h0007E000;
        seven[15] <= 32'h000007E0;      seven[37] <= 32'h0007E000;
        seven[16] <= 32'h000007E0;      seven[38] <= 32'h0007E000;
        seven[17] <= 32'h00000FE0;      seven[39] <= 32'h0007E000;
        seven[18] <= 32'h00001FE0;      seven[40] <= 32'h0007E000;
        seven[19] <= 32'h00003FE0;      seven[41] <= 32'h0003C000;
        seven[20] <= 32'h00007FC0;      seven[42] <= 32'h00000000;
        seven[21] <= 32'h0000FF80;      seven[43] <= 32'h00000000;

        eight[0] <= 32'h00000000;       eight[22] <= 32'h07FFFFF0;
        eight[1] <= 32'h00000000;       eight[23] <= 32'h07FFFFF0;
        eight[2] <= 32'h003FFE00;       eight[24] <= 32'h07FFFFF0;
        eight[3] <= 32'h007FFF00;       eight[25] <= 32'h07E003F0;
        eight[4] <= 32'h007FFF00;       eight[26] <= 32'h07E003F0;
        eight[5] <= 32'h007FFF00;       eight[27] <= 32'h07E003F0;
        eight[6] <= 32'h007FFF00;       eight[28] <= 32'h07E003F0;
        eight[7] <= 32'h007FFF00;       eight[29] <= 32'h07E003F0;
        eight[8] <= 32'h007E3F00;       eight[30] <= 32'h07E003F0;
        eight[9] <= 32'h007E3F00;       eight[31] <= 32'h07E003F0;
        eight[10] <= 32'h007E3F00;      eight[32] <= 32'h07E003F0;
        eight[11] <= 32'h007E3F00;      eight[33] <= 32'h07E003F0;
        eight[12] <= 32'h007E3F00;      eight[34] <= 32'h07E003F0;
        eight[13] <= 32'h007E3F00;      eight[35] <= 32'h07E003F0;
        eight[14] <= 32'h007E3F00;      eight[36] <= 32'h07FFFFF0;
        eight[15] <= 32'h007E3F00;      eight[37] <= 32'h07FFFFF0;
        eight[16] <= 32'h007E3F00;      eight[38] <= 32'h07FFFFF0;
        eight[17] <= 32'h007E3F00;      eight[39] <= 32'h03FFFFE0;
        eight[18] <= 32'h007E3F00;      eight[40] <= 32'h03FFFFE0;
        eight[19] <= 32'h01FFFFC0;      eight[41] <= 32'h01FFFFC0;
        eight[20] <= 32'h03FFFFE0;      eight[42] <= 32'h00000000;
        eight[21] <= 32'h03FFFFE0;      eight[43] <= 32'h00000000;

        nine[0] <= 32'h00000000;        nine[22] <= 32'h000003F0;
        nine[1] <= 32'h00000000;        nine[23] <= 32'h000003F0;
        nine[2] <= 32'h03FFFFE0;        nine[24] <= 32'h000003F0;
        nine[3] <= 32'h07FFFFF0;        nine[25] <= 32'h000003F0;
        nine[4] <= 32'h07FFFFF0;        nine[26] <= 32'h000003F0;
        nine[5] <= 32'h07FFFFF0;        nine[27] <= 32'h000003F0;
        nine[6] <= 32'h07FFFFF0;        nine[28] <= 32'h000003F0;
        nine[7] <= 32'h07FFFFF0;        nine[29] <= 32'h000003F0;
        nine[8] <= 32'h07E003F0;        nine[30] <= 32'h000003F0;
        nine[9] <= 32'h07E003F0;        nine[31] <= 32'h000003F0;
        nine[10] <= 32'h07E003F0;       nine[32] <= 32'h000003F0;
        nine[11] <= 32'h07E003F0;       nine[33] <= 32'h000003F0;
        nine[12] <= 32'h07E003F0;       nine[34] <= 32'h000003F0;
        nine[13] <= 32'h07E003F0;       nine[35] <= 32'h000003F0;
        nine[14] <= 32'h07E003F0;       nine[36] <= 32'h000007F0;
        nine[15] <= 32'h07FFFFF0;       nine[37] <= 32'h00000FF0;
        nine[16] <= 32'h07FFFFF0;       nine[38] <= 32'h00000FF0;
        nine[17] <= 32'h07FFFFF0;       nine[39] <= 32'h00000FF0;
        nine[18] <= 32'h07FFFFF0;       nine[40] <= 32'h00000FF0;
        nine[19] <= 32'h07FFFFF0;       nine[41] <= 32'h000007E0;
        nine[20] <= 32'h03FFFFF0;       nine[42] <= 32'h00000000;
        nine[21] <= 32'h000003F0;       nine[43] <= 32'h00000000;
    end
    
endmodule
