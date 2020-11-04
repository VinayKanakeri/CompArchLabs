module tb_reg_file_4 ();

reg clk,reset,regwrite;
reg [31:0] writedata;
reg [1:0] readreg1,readreg2,writereg;
wire [31:0] readdata1,readdata2;

reg_file_4 r1(clk,reset,readreg1,readreg2,writedata,writereg,regwrite,readdata1,readdata2);

initial
begin
clk=1'b1;
reset = 1'b1;
reset = 1'b0;
end
always
#2 clk=~clk;
initial
$monitor(,$time,"reset = %b,readreg1 = %b,readreg2 = %b,writedata = %h,writereg = %b,regwrite = %b,readdata1 = %h,readdata2 = %h",reset,readreg1,readreg2,writedata,writereg,regwrite,readdata1,readdata2);
initial
begin
#2 readreg1 = 2'b00;readreg2 = 2'b01;writereg = 2'b00; regwrite = 1'b0; writedata = 32'h00000000;reset=0;
#4 readreg1 = 2'b00;readreg2=2'b01;writereg=2'b00;regwrite = 1'b1; writedata = 32'h00000001;reset=1;
#4 readreg1 = 2'b01;readreg2=2'b01;writereg=2'b01;regwrite = 1'b1; writedata = 32'h00000020;reset=1;
#4 readreg1 = 2'b10;readreg2=2'b00;writereg=2'b10;regwrite = 1'b1; writedata = 32'h00000300;reset=1;
#4 readreg1 = 2'b11;readreg2=2'b01;writereg=2'b11;regwrite = 1'b1; writedata = 32'h00004000;reset=1;
#4 readreg1 = 2'b00;readreg2=2'b01;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b01;readreg2=2'b00;writereg=2'b10;regwrite = 1'b0; writedata = 32'h00050000;reset=1;
#4 readreg1 = 2'b10;readreg2=2'b01;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b11;readreg2=2'b01;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b11;readreg2=2'b10;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b00;readreg2=2'b01;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b00;readreg2=2'b01;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#4 readreg1 = 2'b10;readreg2=2'b00;writereg=2'b00;regwrite = 1'b0; writedata = 32'h00000000;reset=1;
#5 $finish;
end
    
endmodule