module simple_logic(
	input x1,
	input x2,
	output and2,
	output or2,
	output xor2,
	output nand2,
	output nor2
);

	assign and2 = x1 & x2;
	assign or2 = x1 | x2;
	assign xor2 = x1 ^ x2;
	assign nand2 = ~(x1 & x2);
	assign nor2 = ~(x1 | x2);
	
endmodule
