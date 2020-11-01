module tb_seq_detector;
reg clk, rst, inp;
wire outp;
reg[18:0] sequence;
integer i;
seq_detector duty( clk, rst, inp, outp);
initial
begin
clk = 0;rst = 1;
sequence = 19'b0010110110001010110;
#5 rst = 0;
for( i = 0; i <= 18; i = i + 1)
begin
inp = sequence[i];
$display("State = ", duty.state, " Input = ", inp, ", Output = ", outp);
#2 clk = 1;
#2 clk = 0;


end
testing;
end

task testing;
for( i = 0; i <= 15; i = i + 1)
begin
inp = $random % 2;
#2 clk = 1;
#2 clk = 0;
#2
$display("State = ", duty.state, " Input = ", inp, ", Output = ", outp);
end
endtask
endmodule