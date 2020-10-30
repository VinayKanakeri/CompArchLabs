module tb_adder_4bit();

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

adder_4bit a4(a,b,cin,sum,cout);

initial
    begin
        $dumpfile("adder_4bit.vcd");
        $dumpvars;
        $monitor(,$time,"a=0x%h, b=0x%h, cin=%b, sum = 0x%h, cout=%b", a,b,cin,sum,cout);
        #0 a=4'h0; b=4'h0; cin= 1'b0;
        #2 a=4'h7; b=4'h8; cin= 1'b0;
        #2 a=4'h2; b=4'h7; cin= 1'b1;
        #2 a=4'h7; b=4'ha; cin= 1'b0;
        #2 $finish;
    end
    
endmodule