`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/27 16:02:19
// Design Name: 
// Module Name: iq_div
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
// 解析输入的串行信号,并区分为I、Q两路双极性码元输出
// 每一个bit采100个点，码元速率5kb，故每路输出数据速率为250kb/s
// 采样速率为500k,输入时钟50Mhz
//按理来说，我的pn序列，也就是串行数据的符号周期为1/256K，I路Q路符号周期分别是1/128K
//////////////////////////////////////////////////////////////////////////////////
module iq_div
#(parameter IQ_DIV_MAX = 8'd4, //采样速率为clk/IQ_DIV_MAX=8MB/s
            BIT_SAMPLE = 8'd32  //每个bit采样点数
)
(
    input wire clk,
    input wire rst_n,
    input wire ser_i,    
    output wire [1:0] I,//有符号双极性输出，这里2位bit是为了用补码，这样就可以
    output wire [1:0] Q
);

//计数器，计数值为1时，采集一次ser_i的数据,作为一个sample
reg [7:0] cnt_iq_div=0;
//计算每个bit采集的sample个数，最大值为100,达到BIT_SAMPLE时，切换输出通道
reg [7:0] cnt_sample=0;
reg iq_switch=1'b0;//为0时代表采集Q路数据，为1时代表采集I路数据
//I、Q两路输出的比特数据
//首先将采集的数据缓存到I_bit_temp,Q_bit_temp
//接着在同一个时钟利用缓存中的数据更新I_bit
//使得IQ两路输出数据对齐，有利于后续抽样判决
reg I_bit_temp=0;
reg Q_bit_temp=0;
reg I_bit=0;
reg Q_bit=0;
//cnt_iq_div
//计数器，计数值为1时，采集一次ser_i的数据,作为一个sample
always @ (posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        cnt_iq_div <= 8'd0;
    end else if(cnt_iq_div >= (IQ_DIV_MAX-8'd1)) begin
        cnt_iq_div <= 8'd0;
    end else begin
        cnt_iq_div <= cnt_iq_div + 8'd1;
    end
end

//cnt_sample
//计算每个bit采集的sample个数，最大值为100,达到BIT_SAMPLE时，切换输出通道
always @ (posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        cnt_sample <= 8'd0;
    end else if((cnt_iq_div == 8'd1) && (cnt_sample >= (BIT_SAMPLE - 8'd1))) begin
        cnt_sample <= 8'd0;
    end else if(cnt_iq_div == 8'd1) begin
        cnt_sample <= cnt_sample + 8'd1;
    end else begin
        cnt_sample <= cnt_sample;
    end
end

//iq_switch
always @ (posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
    //首先采集Q路，复位取消后，这一值将马上变为1'b0，代表Q路
        iq_switch <= 1'b0;  
    end else if((cnt_iq_div == 8'd0) && (cnt_sample == 0)) begin
        iq_switch <= ~iq_switch;
    end else begin
        iq_switch <= iq_switch;
    end
end
    
//I_bit  Q_bit
always @ (posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        I_bit <= 1'b0;
        Q_bit <= 1'b0;
        I_bit_temp <= 1'b0;
        Q_bit_temp <= 1'b0;
    end else begin
        case(iq_switch) 
            //到下一次采集周期再更新，使得IQ两路输出数据对齐，有利于后续抽样判决
            //因为第一次采样两路数据的其中一路时，另外一路是无效数据
            //为了使得两路数据不错开，需要对其中一路再延时一次
            1'b0: begin //采集Q路,暂存到I_bit_temp
                Q_bit_temp <= ser_i;
                I_bit_temp <= I_bit_temp;
                if((cnt_iq_div == 8'd3)&&(cnt_sample == 8'd31))
                begin
                    Q_bit <= Q_bit_temp;
                    I_bit <= I_bit_temp;
                end
            end
            1'b1: begin //采集I路
                I_bit <= I_bit;
                Q_bit <= Q_bit;
                I_bit_temp <= ser_i;
                Q_bit_temp <= Q_bit_temp;
            end             
        endcase
    end
end 

//转换为双极性输出，0->-1，1->1
assign I = (I_bit == 1'b0)? 2'b11:2'b01; 
assign Q = (Q_bit == 1'b0)? 2'b11:2'b01;

endmodule

