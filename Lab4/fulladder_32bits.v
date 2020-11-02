module fulladder_32bits (In1,In2,Cin,Sum,Cout);
input [31:0] In1,In2;
input Cin;
output Cout;
output [31:0] Sum;
assign {Cout,Sum}=In1+In2+Cin;
endmodule