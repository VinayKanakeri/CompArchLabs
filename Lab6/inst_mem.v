module inst_mem (clk,reset,address,imwrite,inst
);
    
input clk,reset,imwrite;
reg [31:0] writedata [31:0];
input [4:0] address;
output [31:0] inst;
wire reg_clk;
//wire [31:0] reg_out [31:0];

assign reg_clk = imwrite&clk;

always @(posedge reg_clk)
begin
    writedata[0] = 32'h00000200;
	writedata[1] = 32'h00000201;
	writedata[2] = 32'h00000204;
	writedata[3] = 32'h00000108;
end

always @(address)
inst = writedata[address];

endmodule