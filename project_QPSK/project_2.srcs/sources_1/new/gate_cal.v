`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/02 19:40:09
// Design Name: 
// Module Name: gate_cal
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


module gate_cal(
    input wire clkd,
    input wire rst_n,
    input wire signed[26:0] in,
    output wire signed[26:0] gate
);
reg signed [36:0] sum1024=37'sd0;
reg [9:0] cnt1024=10'd0;
reg signed [26:0] gate_reg=27'sd0;
assign gate=gate_reg;
always @(posedge clkd or negedge rst_n) begin
    if (~rst_n) begin
        sum1024 <= 37'sd0;//sd: signed decimal
        cnt1024 <= 10'd0;
        gate_reg <= 27'sd0;
    end else begin
        if (cnt1024 < 10'd1023) begin
            // 累加 256 个样本
            sum1024 <= sum1024 + {{10{in[26]}}, in}; // 符号扩展
            cnt1024 <= cnt1024 + 1'b1;
        end else begin
            // 已累加满 256 -> 输出平均并开始下一个窗口
            gate_reg <= sum1024 >>> 10;    // 算术右移相当于除 256（保持符号）
            sum1024 <= {{10{in[26]}}, in}; // 新一轮从当前样本开始累加
            cnt1024 <= 10'd1; // 因为已把当前样本计入 sum256
        end
    end
end


endmodule
