module magnitudecomp_df (a,b,z,x,y
);
input [3:0] a,b;
output z,x,y;
wire z3,z2,z1,z0,x3,x2,x1,x0,y3,y2,y1,y0;
magnitudecomp_1bit m3(a[3],b[3],z3,x3,y3);
magnitudecomp_1bit m2(a[2],b[2],z2,x2,y2);
magnitudecomp_1bit m1(a[1],b[1],z1,x1,y1);
magnitudecomp_1bit m0(a[0],b[0],z0,x0,y0);

assign z = z3&z2&z1&z0;
assign x = x3|(z3&x2)|(z3&z2&x1)|(z3&z2&z1&x0);
assign y = y3|(z3&y2)|(z3&z2&y1)|(z3&z2&z1&y0);

endmodule