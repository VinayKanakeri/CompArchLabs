module reg_file_4 (clk,reset,readreg1,readreg2,writedata,writereg,regwrite,readdata1,readdata2
);

input clk,reset,regwrite;
input [31:0] writedata;
input [1:0] readreg1,readreg2,writereg;
output [31:0] readdata1,readdata2;
wire [3:0] reg_clk,dec_out;
wire [31:0] reg_out [3:0];
decoder2to4bits d1(writereg,dec_out);
assign reg_clk[0] = regwrite&clk&dec_out[0];
assign reg_clk[1] = regwrite&clk&dec_out[1];
assign reg_clk[2] = regwrite&clk&dec_out[2];
assign reg_clk[3] = regwrite&clk&dec_out[3];


genvar j;
generate
    for (j =0 ;j<4 ;j=j+1 ) begin: reg_loop_3
        reg_32bits reg2(writedata, reset, reg_clk[j], reg_out[j]);
        
    end
endgenerate

mux4to1_32bits m1(reg_out[0],reg_out[1],reg_out[2],reg_out[3],readreg1,readdata1);
mux4to1_32bits m2(reg_out[0],reg_out[1],reg_out[2],reg_out[3],readreg2,readdata2);

endmodule