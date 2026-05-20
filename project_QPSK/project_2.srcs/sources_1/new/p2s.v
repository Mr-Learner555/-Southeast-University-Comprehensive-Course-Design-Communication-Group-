`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/27 12:54:18
// Design Name: 
// Module Name: p2s
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


module p2s
#(
    //输出码元速率是256KHz，系统时钟是32MHz，DIV=32M/256K=128
    parameter DIV =8'd128
)
(
    input wire clkHi,//系统时钟
    input wire rst_n,//复位
    input wire[61:0] para_i,//并行输入
    output reg ser_o//串行输出
);

//计时器，每次计数到DIV-1,ser_o更新1bit数据
reg [7:0]  div_cnt;  

//记录当前要输出的bit位
reg [5:0]   bit_cnt;

//div_cnt
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        div_cnt <= 8'd0;
    end else if(div_cnt == DIV - 1) begin
        div_cnt <= 8'd0;
    end else begin
        div_cnt <= div_cnt + 8'd1;
    end
end

//bit_cnt
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        bit_cnt <= 6'd0;
    end else if((bit_cnt == 6'd61) && (div_cnt == DIV - 1)) begin
        bit_cnt <= 6'd0;
    end else if(div_cnt == DIV - 1) begin
        bit_cnt <= bit_cnt + 6'd1;
    end else begin
        bit_cnt <= bit_cnt;
    end
end

// ser_o
always @ (posedge clkHi or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        ser_o <= 1'b0;
    end else begin
        ser_o <= para_i[61 - bit_cnt];//高位先出
    end
end

endmodule
