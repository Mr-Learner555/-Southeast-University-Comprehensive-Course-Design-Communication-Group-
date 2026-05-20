`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/01 17:32:48
// Design Name: 
// Module Name: costas_loop_filter_new
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


module costas_loop_filter_new(
    input wire rst_n,
    input wire clk,
    input wire signed [26:0] phase_error,
    output wire signed [23:0] pd
);
reg[7:0] count=0;
reg signed [23:0] sum=0, loopout=0;
assign pd=loopout;
integer t=0;
/*捕捉+追踪：修改1+修改1，freq=24'h100000-pd倒是可以算是稳定
但是换成freq=24'h100400-pd就无法稳定了,I路Q路低通滤波不对，而且pd也达不到环路滤波光滑的效果，也没有固定斜率
*/
always @(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        count<=3'd0;
        sum<=27'd0;
        loopout<=27'd0;
        t<=0;
    end
    else
    begin
        t<=t+1;
        if(t<6000)
        begin
            if(count<16)
            begin
                count<=count+'d1;
            end
            if(count>=16)
            begin
                count<='d0;
            end
            if(count==8'd0)
            begin
                //暂定c2=2^(-10)
                //修改1：c2=2^(-13)
                sum<=sum+{{10{phase_error[26]}},phase_error[26:13]};
            end
            if(count==8'd1)
            begin
                //暂定c1=2^(-3)
                //修改1：c1=2^(-6)
                loopout<=sum+{{3{phase_error[26]}},phase_error[26:6]};
            end
        end
        else
        begin
            if(count<16)
            begin
                count<=count+'d1;
            end
            if(count>=16)
            begin
                count<='d0;
            end
            if(count==8'd0)
            begin
                //暂定c2=2^(-14)
                //修改1:c2=2^(-16)
                //修改2（改回初始值）:c2=2^(-14)
                sum<=sum+{{11{phase_error[26]}},phase_error[26:14]};
            end
            if(count==8'd1)
            begin
                //暂定c1=2^(-7)
                //修改1：c1=2^(-9)
                //修改2（改回初始值）:c1=2^(-7)
                loopout<=sum+{{4{phase_error[26]}},phase_error[26:7]};
            end
        end
    end
end

endmodule
