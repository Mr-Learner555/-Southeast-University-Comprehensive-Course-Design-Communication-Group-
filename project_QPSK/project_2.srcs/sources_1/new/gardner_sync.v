`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/28 20:23:23
// Design Name: 
// Module Name: gardner_sync
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


module gardner_sync(
    input wire clkHi,//系统时钟32.768MHz
    input wire clkd,//采样时钟8.192MHz
    input wire rst_n,
    input wire [14:0] data_in_I,
    input wire [14:0] data_in_Q,
    output wire sync_out_I,
    output wire sync_out_Q,
    output wire sync_flag//最佳抽样判决时刻标志
);
wire [15:0] uk;//小数间隔，15bit小数位
wire [19:0] I_y;//插值滤波器输出I路
wire [19:0] Q_y;//插值滤波器输出Q路
wire [15:0] wn;//通过环路滤波器后的误差数据
wire strobe_flag;//NCO溢出标志，代表有效插值数据的时刻

//内插滤波器
interpolate_filter interpolate_filter_inst
(
    .clkHi          (clkHi),
    .clk            (clkd        ),
    .rst_n          (rst_n      ),
    .data_in_I      (data_in_I  ),
    .data_in_Q      (data_in_Q  ),
    .uk             (uk         ),  //小数间隔，15bit小数位

    .I_y            (I_y        ),  //I路插值输出
    .Q_y            (Q_y        )       //Q路插值输出
);


//gardner定时误差检测，包含环路滤波器
gardner_ted gardner_ted_inst
(
    .clk                (clkd            ),  //500kHz
    .rst_n              (rst_n          ),
    .strobe_flag        (strobe_flag    ),  //有效插值标志
    .interpolate_I      (I_y            ),  //从插值滤波器来的I路数据
    .interpolate_Q      (Q_y            ),  //从插值滤波器来的Q路数据

    .sync_out_I         (sync_out_I     ),  //同步后的I路数据
    .sync_out_Q         (sync_out_Q     ),  //同步后的I路数据
    .sync_flag          (sync_flag      ),  //同步标志，代表最佳判决点已到来,用于后续数据抽样
    .wn                 (wn             )   //通过环路滤波器后的误差数据
);

//nco模块
nco nco_inst
(
    .clk            (clkd       ),
    .rst_n          (rst_n      ),
    .wn             (wn         ),  //环路滤波器输出的w(n)，低15bit为小数位

    .strobe_flag    (strobe_flag),  //nco输出的溢出信号，代表有效插值时刻
    .uk             (uk         )   //输出到插值滤波器的小数间隔,低15bit为小数位
);

endmodule
