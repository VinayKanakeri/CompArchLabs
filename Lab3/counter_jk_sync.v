module counter_jk_sync (j,k,clk,clearb,q,qb
);

output [3:0] j,k;
input clk,clearb;
output [3:0] q,qb;

jk_ff j0(j[0],k[0],clk,clearb,q[0],qb[0]);
jk_ff j1(j[1],k[1],clk,clearb,q[1],qb[1]);
jk_ff j2(j[2],k[2],clk,clearb,q[2],qb[2]);
jk_ff j3(j[3],k[3],clk,clearb,q[3],qb[3]);


buf(j[0],1'b1);
buf(k[0],1'b1);
buf(j[1],q[0]);
buf(k[1],q[0]);
and(j[2],q[0],q[1]);
and(k[2],q[0],q[1]);
and(j[3],q[2],j[2]);
and(k[3],q[2],j[2]);

    
endmodule