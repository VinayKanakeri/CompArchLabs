module bcdtogray_gate (a,b
);
input [3:0] a;
output [3:0] b;

buf b1(b[3],a[3]);
xor x1(b[2],a[3],a[2]);
xor x1(b[1],a[2],a[1]);
xor x1(b[0],a[1],a[0]);
    
endmodule