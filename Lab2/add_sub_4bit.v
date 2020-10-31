module add_sub_4bit (a,b,m,out,of);
input [3:0] a,b;
input m;
output [3:0] out;
output of;
wire [3:0] b_cap;
wire [3:0] cout_in;
assign b_cap = b^{4{m}};



FADDER f1(out[0],cout_in[0],a[0],b_cap[0],m);

genvar j;
generate for (j=0;j<3;j=j+1) begin: adder_loop
FADDER f2(out[j+1],cout_in[j+1],a[j+1],b_cap[j+1],cout_in[j]);
end
endgenerate
assign of = cout_in[3]^cout_in[2];
    

    
endmodule