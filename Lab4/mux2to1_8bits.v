module mux2to1_8bits (in1,in2,sel,out);
input [7:0] in1,in2;
output [7:0] out;
input sel;
genvar j;
//this is the variable that is be used in the generate
//block
generate
for
(j=0;j<8;j=j+1)
begin:
mux_loop
//mux_loop is the name of the loop
mux2to1_1bit m1(in1[j],in2[j],sel,out[j]);
//mux2to1 is instantiated every time it is called
end
endgenerate
endmodule