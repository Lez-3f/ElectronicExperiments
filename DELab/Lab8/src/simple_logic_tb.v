`timescale 1ns/1ps
module simple_logic_tb;

	reg x1;
	reg x2;
	
	wire and2;
	wire or2;
	wire xor2;
	wire nand2;
	wire nor2;
	
	simple_logic uut(
		.x1(x1),
		.x2(x2),
		.and2(and2),
		.or2(or2),
		.xor2(xor2),
		.nand2(nand2),
		.nor2(nor2)
	);
	
	initial begin
		x1 = 0; x2 = 0;
		#10;
		x1 = 1; x2 = 0;
		#10;
		x1 = 0; x2 = 1;
		#10;
		x1 = 1; x2 = 1;
		#10;
	end

endmodule

		