module led_control_top(
input clk,
input reset,
output [3:0] led_io
);
wire clk_div;
led_control uut1(
.clk(clk_div),
.reset(reset),
.led_io(led_io)
)
;
divider_new uut2(
.clk(clk),
.reset(reset),
.clk_div(clk_div)
);
endmodule