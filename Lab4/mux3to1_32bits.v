module mux3to1_32bits (in1,in2,in3,sel,out);
input [31:0] in1,in2,in3;
output [31:0] out;
input [1:0] sel;
genvar j;
//this is the variable that is be used in the generate
//block
generate
for
(j=0;j<32;j=j+1)
begin:
mux_loop
//mux_loop is the name of the loop
mux3to1_1bit m1(in1[j],in2[j],in3[j],sel,out[j]);
//mux2to1 is instantiated every time it is called
end
endgenerate
endmodule
