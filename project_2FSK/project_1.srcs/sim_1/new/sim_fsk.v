`timescale 1ns / 1ps

module sim_fsk();

reg         rst         = 1'b1;       // 复位信号
reg         clk_100M    = 1'b0;       // 系统100MHz时钟（仿真激励）
wire        clk32d768M;               // 32.768MHz时钟（替代原IP核）
wire        clk16d384M, clk8d192M;    // 分频后时钟
wire        clk4d096M, clk2d048M;
wire        clk1d024M, clk512K, clk256K;
wire        pn;                       // PN序列输出
wire [11:0] fsk_data;                 // FSK调制输出（替代原ask_data）


always #5 clk_100M <= ~clk_100M;
wire rst_n;
assign rst_n=~rst;
reg clk32d768M_reg = 1'b0;
always #15.2588 clk32d768M_reg <= ~clk32d768M_reg;
assign clk32d768M = clk32d768M_reg;

// -------------------------- 3. 复位激励 --------------------------
initial begin
    rst = 1'b1;
    #2000;  // 复位2us后释放
    rst = 1'b0;
    #1000000; // 仿真总时长1ms（可根据需要调整）
    $stop;    // 停止仿真
end

// -------------------------- 4. 模块实例化（与你原代码一致） --------------------------
// 时钟分频模块
divClk32d768M inst_divClk32d768M(
    .clk32d768M(clk32d768M),
    .clk16d384M(clk16d384M),
    .clk8d192M(clk8d192M),
    .clk4d096M(clk4d096M),
    .clk2d048M(clk2d048M),
    .clk1d024M(clk1d024M),
    .clk512K(clk512K),
    .clk256K(clk256K),
    .clk128K(),
    .clk64K(),
    .clk32K(),
    .clk16K(),
    .clk8K(),
    .clk4K(),
    .clk2K(),
    .clk1K()
);

// PN序列生成模块（时钟接256KHz）
PN_Gen inst_PN(
    .clk(clk256K),
    .pn(pn)
);

// 2FSK调制模块（核心）
fskmod my_fsk_mod(
    .clkHi(clk32d768M),    // 载波时钟接8.192MHz
    .clkd(clk1d024M),     // 保留原信号（无实际作用）
    .din(pn),             // 输入PN码
    .dout(fsk_data)       // FSK调制输出
);
wire fskdemod;
wire pn_bit_valid;
wire[11:0] f1_out;
wire[11:0] f2_out;
wire[11:0] f1_lpf;
wire[11:0] f2_lpf;
//fskdemod_old my_fsk_demod(
//    .clkHi(clk32d768M),
//    .clkd(clk8d192M),
//    .rst_n(rst_n),
//    .fsk_in(fsk_data),
//    .pn_bit_out(pn_bit_out),
//    .pn_bit_valid(pn_bit_valid)
//);
fskdemod my_fsk_demod(
    .clkHi(clk32d768M),
    .clkd(clk8d192M),
    .rst_n(rst_n),
    .fsk_in(fsk_data),
    .pn_bit_out(fskdemod),
    .f1_out(f1_out),
    .f2_out(f2_out),
    .f1_lpf(f1_lpf),
    .f2_lpf(f2_lpf)
);
// -------------------------- 5. 仿真波形导出（关键：方便观测） --------------------------
initial begin
    // 导出波形到fsmod.vcd文件（Modelsim/Vivado均可读取）
    $dumpfile("fsk_mod_sim.vcd");
    $dumpvars(0, sim_fsk);
    // 观测关键信号：PN码、FSK输出、各分频时钟
    $display("Simulation start!");
    $monitor("Time = %0t ns, PN = %b, FSK_Out = %d", $time, pn, fsk_data);
end

endmodule

