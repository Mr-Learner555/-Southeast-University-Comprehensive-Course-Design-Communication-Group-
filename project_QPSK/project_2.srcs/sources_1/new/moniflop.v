`timescale 1ns/1ps
//-----------------------------------------------------
//   单稳态触发器模块
//-----------------------------------------------------
module moniflop
(
    input clk,      //32MHz系统时钟
    input rst_n,      //高电平有效复位信号
    input din,      
    output dout     
);
//-----------------------------------------------------
// 检测到din的高电平脉冲后，dout输出4个时钟长的高电平 
//-----------------------------------------------------
reg [1:0] cnt=0;      //计数器控制输出高电平的时间
reg start=0, dout_reg=0;

always @ (posedge clk)
    if (~rst_n) begin
        cnt <= 0; start <= 0; dout_reg <= 0;
    end
    else begin
        /* 检测到din的高电平脉冲，则开始输出 */
        if (din) begin
            start <= 1'b1; dout_reg <= 1'b1;
        end
        /* 控制一次4个时钟长高电平脉冲的输出 */
        //输出有效
        if (start) begin
            dout_reg <= 1'b1;
            if (cnt < 2'd3)    //有效输出维持4个时钟
                cnt <= cnt + 1'b1;
            else start <= 1'b0;
        end
        //输出无效
        else begin
            cnt <= 'd0;
            dout_reg <= 1'b0;  //无效期间输出低电平
        end
    end

assign dout = dout_reg; 

endmodule 