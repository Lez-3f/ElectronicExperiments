module mux4(
input[7:0] d0,d1,d2,d3,//4个4位的输入

input[1:0] sel,//2位输入，表示选择的输入

output reg [7:0] y//4位输出，和选择的输入一致

);

always @(*) //敏感信号列表，当d0,d1,d2,d3,select任意一个改变时执行
	begin
		case(sel)

		0: y=d0;

		1: y=d1;

		2: y=d2;

		3: y=d3;

		default: y=0;

		endcase

	end 

endmodule