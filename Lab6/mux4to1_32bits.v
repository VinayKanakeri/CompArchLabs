module mux4to1_32bits (in,sel,out);
input [31:0] in [3:0];
input [1:0] sel;
output [31:0] out;
assign out = sel[1] ? (sel[0] ? in[3] : in[2]) : (sel[0] ? in[1] : in[0]);
    
endmodule