module mux2to1_1bit (in1,in2,sel,out);
input in1,in2,sel;
output out;
wire not_sel,a1,a2;
not (not_sel,sel);
and (a1,sel,in2);
and (a2,not_sel,in1);
or(out,a1,a2);
endmodule
