`timescale 1ns/1ps
module fulladder4_tb;
	reg [3:0]x;
	reg [3:0]y;
	
	wire [3:0]s;
	wire cout;

	fulladder4 uut(
		.x(x),
		.y(y),
		.s(s),
		.cout(cout)
	);
	
	initial begin
		x = 4'b0011;
		y = 4'b0101;
		#10;
		x = 4'b1010;
		y = 4'b0010;
		#10;
		x = 4'b0011;
		y = 4'b1110;
		#10;
		x = 4'b1101;
		y = 4'b0100;
		#10;
	end 
	
endmodule
