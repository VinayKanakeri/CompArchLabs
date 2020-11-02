module mux2to1_32bits (in1,in2,sel,out);
input [31:0] in1,in2;
output [31:0] out;
input sel;
genvar j;
//this is the variable that is be used in the generate
//block
generate
for
(j=0;j<4;j=j+1)
begin:
mux_loop
//mux_loop is the name of the loop
mux2to1_8bits m1(in1[(j+1)*8-1:j*8],in2[(j+1)*8-1:j*8],sel,out[(j+1)*8-1:j*8]);
//mux2to1 is instantiated every time it is called
end
endgenerate
endmodule
