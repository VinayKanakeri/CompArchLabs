module mux3to1_1bit (in1,in2,in3,sel,out);
input in1,in2,in3;
input [1:0] sel;
output out;
wire not_sel1,not_sel0,a1,a2,a3,a4;
not (not_sel1,sel[1]);
not (not_sel0,sel[0]);
and (a1,not_sel1,sel[0],in2);
and (a3,sel[1],not_sel0,in3);
and (a4,sel[1],sel[0],1'b0);
and (a2,not_sel1,not_sel0,in1);
or(out,a1,a2,a3,a4);


endmodule