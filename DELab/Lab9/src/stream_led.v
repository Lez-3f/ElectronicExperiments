module stream_led(
	input clk,
	input reset,
	input sel,
	output wire[7:0] led_io
);

wire clk_div;
wire [7:0]led_io_1, led_io_2;
	
divider_new uut0(
	.clk(clk),
	.reset(reset),
	.clk_div(clk_div)
);

sled_control_1 uut1(
	.clk(clk_div),
	.reset(reset),
	.led_io(led_io_1)
);	//流水灯1

sled_control_2 uut2(
	.clk(clk_div),
	.reset(reset),
	.led_io(led_io_2)
);	//流水灯2

sled_switch uut3(
	.sel(sel),
	.led_io_1(led_io_1),
	.led_io_2(led_io_2),
	.led_io(led_io)
);	//选择

endmodule
