module mux2to1_32bits (in,sel,out);
input [31:0] in [1:0];
input sel;
output [31:0] out;
assign out = sel ? (in[1]) : (in[0]);
    
endmodule