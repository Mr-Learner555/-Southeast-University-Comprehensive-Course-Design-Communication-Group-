`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/26 20:39:52
// Design Name: 
// Module Name: s2p
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


module s2p#(
    //32MHz/256KHz=128,一个码元时隙对应的采样次数
   parameter SAMPLE=128//这个是干啥用的？——似乎是因为原项目速率是1MHz，码元速率是10KHz，这里我改成我自己的
   
)
(       input wire clkHi,//暂且定为系统时钟
        input wire rst_n,//复位信号低电平有效
        input wire ser_i,//串行数据输入
        output reg [61:0]para_o//并行输出
);

//0到99循环，采样点的索引
reg [7:0] sample_cnt;
//62个bit位的索引
reg [5:0] bit_cnt;
//暂存处理的并行输出数据，只有在40bit转换完成后给para_o，para_o不会出现无意义的并行输出。
reg [61:0] para_o_temp; 
 
//sample_cnt，从0到99
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        sample_cnt <= 8'd0;
    end else if(sample_cnt == (SAMPLE - 1)) begin
        sample_cnt <= 8'd0;
    end else begin
        sample_cnt <= sample_cnt + 8'd1;
    end
end
    
//bit_cnt
//设定在sample_cnt == (SAMPLE - 3)时采集para_o的一个bit
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        //？？我不太理解这里的时间差，先放着
        bit_cnt <= 6'd60;  //由于前面抽样判决时刻在数据中间，输入串行数据有两个bit的时间差
    end else if((bit_cnt == 6'd61) && sample_cnt == (SAMPLE - 3)) begin
        bit_cnt <= 6'd0;
    end else if(sample_cnt == (SAMPLE - 3))begin
        bit_cnt <= bit_cnt + 6'd1;
    end else begin
        bit_cnt <= bit_cnt;
    end
end
    
//para_o_temp
always @(posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        para_o_temp <= 62'b0;
    end else if(sample_cnt == (SAMPLE - 3)) begin
        para_o_temp[61-bit_cnt] <= ser_i;
    end else begin
        para_o_temp <= para_o_temp;
    end 
end
    
//para_o
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        para_o <= 62'b0;
    end else if(sample_cnt == (SAMPLE - 2) && (bit_cnt == 6'd0)) begin //比para_o_temp采集完成后再延迟一个时钟周期
        para_o <= para_o_temp;
    end else begin
        para_o <= para_o;
    end
end

    
endmodule
