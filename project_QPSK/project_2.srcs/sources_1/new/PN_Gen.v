module PN_Gen
(
	input clk,
	output reg pn=0,//serial output
	output wire[61:0] pn_para//pn序列长度为31，但为保证偶数，截取2个周期
);
//pn_para不对
reg[4:0] PN_buf = 5'd1;  
wire rst;

always@(posedge clk) begin
//    if(rst) begin
//        PN_buf <= 5'd1;
//        pn <= 0;
//    end

        PN_buf <= {PN_buf[3:0],PN_buf[4]+PN_buf[1]};
        pn <= PN_buf[4];
end
//序列按 clk 上升沿输出顺序排列，第一位是初始值输出，最后一位后回到初始状态，周期 31
assign pn_para={2{31'b0000101011101100011111001101001}};//!并没有确定由低到高还是由高到低
//assign rst = !(|PN_buf);  

endmodule 