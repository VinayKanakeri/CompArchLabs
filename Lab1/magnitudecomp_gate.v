module magnitudecomp_gate (a,b,z,x,y);
input [3:0] a,b;
output z,x,y;
wire z3,z2,z1,z0,x3,x2,x1,x0,y3,y2,y1,y0;

magnitudecomp_1bit m3(a[3],b[3],z3,x3,y3);
magnitudecomp_1bit m2(a[2],b[2],z2,x2,y2);
magnitudecomp_1bit m1(a[1],b[1],z1,x1,y1);
magnitudecomp_1bit m0(a[0],b[0],z0,x0,y0);

and o1(z,z0,z1,z2,z3);
and a1(l3,z3,x2);
and a2(l2,z3,z2,x1);
and a3(l1,z3,z2,z1,x0);

and a4(g3,z3,y2);
and a2(g2,z3,z2,y1);
and a3(g1,z3,z2,z1,y0);

or o2(x,x3,l3,l2,l1);
or o3(y,y3,g3,g2,g1);
    
endmodule