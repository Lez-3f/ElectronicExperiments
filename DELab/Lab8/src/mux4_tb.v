`timescale 1ns / 100ps
module mux4_tb;
	reg[7:0]d0;
	reg[7:0]d1;
	reg[7:0]d2;
	reg[7:0]d3;
	reg[1:0]sel;
	wire[7:0]y;
	mux4 uut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.y(y),.sel(sel));
	
initial begin
	d0 = 8'h00; d1 = 8'h01; d2 = 8'h10; d3 = 8'h11;
	sel = 1;
	#10;
	sel = 3;
	#10;
	sel = 0;
	#10;
	sel = 2;
	#10;
	d0 = 8'hef; d1 = 8'h1a; d2 = 8'h2b; d3 = 8'hcc;
	sel = 3;
	#10;
	sel = 1;
	#10;
	sel = 2;
	#10;
	sel = 0;
	#10;
end

endmodule