module fulladder4(
	input[3:0] x,
	input [3:0] y,
	output[3:0] s,
	output cout
);

assign {cout , s} = x + y;

endmodule
