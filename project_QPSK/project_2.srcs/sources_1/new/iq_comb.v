`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/28 20:45:13
// Design Name: 
// Module Name: iq_comb
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

//思路是这样，先捕捉到稳定的I路Q路判决时刻，然后在以此为标准，每隔256个计数判决一次
module iq_comb
(
    input wire          clk         ,  //32.768MHz，这里输入的是采样时钟
    input wire          rst_n       ,
    input wire signed[1:0] I,
    input wire signed[1:0] Q,
    output wire ser
    //对于一组IQ数据需要两个sync_flag_o有效信号
);
    
    
    //计算采样次数，计算到SAMPLE-1时从输出串行数据从Q通道转换到I通道
    reg [8:0] cnt512=9'd0;//先度过初期复位时期，避免一开始因为复位等原因造成I_pre!=I或Q_pre!=Q
    reg [7:0] cnt256=8'd0;
    reg [7:0] cnt_silence=8'd0;
    reg ser_out=0;
    assign ser=ser_out;
    reg signed[1:0] I_pre=0;
    reg signed[1:0] Q_pre=0;
    reg [1:0]state=0;//0:捕捉态；1:过渡态(计数200)；2:稳态（计数256）
    reg signed[1:0] Q_temp=0;
    wire flag_jud=(cnt256==0)||(cnt256==128);
    //cnt512计满之后一直维持在511
    always @(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
        begin
            cnt512<=9'd0;
        end
        else
        begin
            if(cnt512==9'd511)
                cnt512<=cnt512;
            else 
                cnt512<=cnt512+9'd1;
        end
    end
    //状态机
    //每对I路Q路符号都会至少维持两个256KHz的时钟，为避免毛刺的干扰
    always @ (posedge clk or negedge rst_n)
    begin
        if(rst_n == 1'b0)
        begin
            cnt_silence <= 8'd0;
            state<=2'b0;
            cnt256<=0;
            I_pre<=0;
            Q_pre<=0;
            Q_temp<=0;
        end
        else
        begin
            if(state==2'd0)//捕捉到I路或者Q路的跳变，进入过渡态
            begin
                if(cnt512<9'd511)
                begin
                    I_pre<=I;
                    Q_pre<=Q;
                    cnt_silence <= 8'd0;
                    state<=2'b0;
                    cnt256<=0;
                end
                else
                begin
                    if((I_pre==I)&&(Q_pre==Q))
                    begin
                        cnt_silence <= 8'd0;
                        state<=2'b0;
                        cnt256<=0;
                    end
                    else
                    begin
                        I_pre<=I;
                        Q_pre<=Q;
                        cnt_silence <= 8'd0;
                        state<=2'b1;
                        cnt256<=0;//只要检测到跳变，进入下一个阶段
                    end
                end
            end
            else if (state==2'd1)
            begin
                if((I_pre==I)&&(Q_pre==Q))
                begin
                    if(cnt_silence<8'd160)
                    begin
                        cnt_silence<=cnt_silence+8'd1;
                        state<=2'b1;
                        cnt256<=0;
                    end
                    else if(cnt_silence==8'd160)
                    begin
                        state<=2'd2;
                        cnt256<=0;
                    end
                end
                else
                begin
                    cnt_silence<=8'd0;
                    state<=2'b0;
                    cnt256<=0;
                    I_pre<=I;
                    Q_pre<=Q;
                end
            end
            else if(state==2'd2)
            begin
                if(cnt256==8'd0)
                begin
                    ser_out=(I==2'sd1)?1:0;
                    Q_temp<=Q;
                end
                else if(cnt256==8'd128)
                begin
                     ser_out=(Q_temp==2'sd1)?1:0;
                end
                cnt256<=cnt256+1;
                state<=2'd2;
            end
        end
    end
endmodule
