`timescale 1ns/1ps
//-----------------------------------------------------
//   鉴相器模块
//-----------------------------------------------------
module phasedetec
(
    input clk,      //32MHz系统时钟
    input rst_n,      //高电平有效复位信号
    input datain,   //输入单比特基带数据 
    input clk_i,    //同相同步脉冲信号，1:1占空比
    input clk_q,    //正交同步脉冲信号，1:1占空比
    output pd_before,  //输出超前脉冲信号
    output pd_after    //输出滞后脉冲信号
);

reg din_d=0, din_edge=0;
reg pdbef=0, pdaft=0;

always @ (posedge clk)
    if (~rst_n) begin
        din_d <= 1'b0; din_edge <= 1'b0;
        pdbef <= 1'b0; pdaft <= 1'b0;
    end
    else begin 
        din_d <= datain;   //一级寄存器缓存
        din_edge <= datain ^ din_d;   //异或检测基带边沿
        pdbef <= din_edge & clk_i;    //与门鉴相
        pdaft <= din_edge & clk_q;    //与门鉴相
    end

assign pd_before = pdbef;
assign pd_after = pdaft;

endmodule