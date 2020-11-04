/*`include "mux4to1_32bits.v"     
`include "mux2to1_32bits.v"       
*/
module mux32to1_32bits (muxin,sel,muxout
);

input [31:0] muxin [31:0];
input [4:0] sel;
output [31:0] muxout;

wire [31:0] o1 [7:0];
wire [31:0] o2 [1:0];

genvar j;
generate
    for (j =0 ;j<8 ;j=j+1 ) begin: mux_loop
        mux4to1_32bits m1(muxin[((j+1)*4-1):j*4],sel[1:0],o1[j]);
        
    end
endgenerate

mux4to1_32bits m2(o1[3:0],sel[3:2],o2[0]);
mux4to1_32bits m3(o1[7:4],sel[3:2],o2[1]);

mux2to1_32bits m4(o2,sel[4],muxout);
    
endmodule