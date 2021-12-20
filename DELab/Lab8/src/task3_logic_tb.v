`timescale 1ns/1ps
module task3_logic_tb;

	reg a;
	reg b;
	reg c;
	
	wire y;
	
	task3_logic uut(
		.a(a),
		.b(b),
		.c(c),
		.y(y)
	);
	
	initial begin
		a = 0; b = 0; c = 0;
		#10;
		a = 0; b = 0; c = 1;
		#10;
		a = 0; b = 1; c = 0;
		#10;
		a = 1; b = 0; c = 0;
		#10;
		a = 0; b = 1; c = 1;
		#10;
		a = 1; b = 0; c = 1;
		#10;
		a = 1; b = 1; c = 0;
		#10;
		a = 1; b = 1; c = 1;
		#10;
	end

endmodule
