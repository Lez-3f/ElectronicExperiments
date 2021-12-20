module seg(
    input [3:0] data,
    output [3:0] dig,
    output reg [7:0] segments
);
assign dig = 8'b00000000;
always @ (*)
    case (data)
        0: segments = 8'hc0;
        1: segments = 8'hf9;
        2: segments = 8'ha4;
        3: segments = 8'hb0;
        4: segments = 8'h99;
        5: segments = 8'h92;
        6: segments = 8'h82;
        7: segments = 8'hf8;
        8: segments = 8'h80;
        9: segments = 8'h90;
        10: segments = 8'h88;
        11: segments = 8'h83;
        12: segments = 8'hc6;
        13: segments = 8'ha1;
        14: segments = 8'h86;
        15: segments = 8'h8e;
        default: segments = 8'h00;
    endcase
endmodule
