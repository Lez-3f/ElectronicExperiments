module sled_mode_sel(
	input sel,
	input [7:0] led_io_1, led_io_2,
	output [7:0] led_io_sel
);

assign led_io_sel = sel ? led_io_1 : led_io_2;
endmodule
