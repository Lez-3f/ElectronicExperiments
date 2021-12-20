module sled_switch(
	input [7:0] led_io_1, led_io_2,
	input sel,
	output wire [7:0] led_io
);

assign led_io = sel ? led_io_1 : led_io_2;

endmodule
