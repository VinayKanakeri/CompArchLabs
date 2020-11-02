module alu (in1,in2,op,bit_invert,cin,cout,result
);
input [31:0] in1, in2;
input [1:0] op;
input bit_invert,cin;
output cout;
output [31:0] result;
wire [31:0] in2_b,in2_c,and_out,or_out,out_fa;

assign in2_b = ~in2; 

mux2to1_32bits m1(in2,in2_b,bit_invert,in2_c);
and_32bits a1(in1,in2_c,and_out);
or_32bits o1(in1,in2_c,or_out);
fulladder_32bits f1(in1,in2_c,cin,out_fa,cout);

mux3to1_32bits m2(and_out,or_out,out_fa,op,result);
    
endmodule