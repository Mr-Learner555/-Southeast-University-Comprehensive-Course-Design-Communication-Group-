`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/01 17:32:48
// Design Name: 
// Module Name: phase_detector_new
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


module phase_detector_new(
    input wire  [26:0]  filtered_I, //I路低通滤波后信号
    input wire  [26:0]  filtered_Q, //Q路低通滤波后信号
    output wire [26:0]  phase_error   //输出的相位误差
);
wire [27:0] ext_I       ;   //filtered_I扩展1bit符号位
wire [27:0] ext_Q       ;   //filtered_Q扩展1bit符号位

wire [27:0] inversed_I  ;   //取反的I路数据
wire [27:0] inversed_Q  ;   //取反的Q路数据

//依据另一路符号位确定的本通道的信号
reg [27:0]  channel_I;   
reg [27:0]  channel_Q;

wire[28:0] phase_error_raw;
assign phase_error=phase_error_raw[28:2];

assign ext_I = {filtered_I[26], filtered_I};
assign ext_Q = {filtered_Q[26], filtered_Q};

assign inversed_I = ~ext_I + 'd1;  
assign inversed_Q = ~ext_Q + 'd1;

////channel_Q
////根据鉴相器的公式得到，I、Q的绝对值之差，可以得到
//assign channel_Q=(filtered_I[55])?(inversed_Q):(ext_Q);

////channel_I
//assign channel_I=(filtered_Q[55])?(ext_I):(inversed_I);
//channel_Q
always @ (*) begin
    if(filtered_I[26]) begin  //负数
        channel_Q = inversed_Q;
    end else begin
        channel_Q = ext_Q;
    end
end

//channel_I
//这里和Q路逻辑相反，使得原来的减法器变成了加法器
always @ (*) begin
    if(filtered_Q[26]) begin  //负数
        channel_I = ext_I;
    end else begin
        channel_I = inversed_I;
    end
end


assign phase_error_raw = {channel_Q[27],channel_Q} + {channel_I[27],channel_I};

endmodule
