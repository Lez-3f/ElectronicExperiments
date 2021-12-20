module task3_logic(
	input a,
	input b,
	input c,
	output y
);

assign y = (~a & ~b & ~c) | (a & ~b & ~c) | (a & ~b & c);

endmodule
