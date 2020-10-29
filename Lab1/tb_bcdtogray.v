module tb_bcdtogray ();
    reg [3:0] a;
    wire [3:0] b;

    bcdtogray_df m1(a,b);
    initial
    begin
        $dumpfile("bcdtogray.vcd");
        $dumpvars;
        $monitor(,$time, "input = %h , output = %h", a,b);
        #0 a = 4'd1;
        #1 a = 4'd2;
        #1 a = 4'd3;
        #1 a = 4'd4;
        #1 a = 4'd5;
        #1 $finish;
    end
endmodule