module serial_adder (serA,serB,shift_control,clk,clearb,sa,sb,sum_reg,sum_reg_out,x,y,sum,q,d);
input serA,serB,clk,shift_control,clearb;
wire clkd;
output sum_reg_out,x,y,sum,q,d;
output [3:0] sa,sb,sum_reg;
dff_async_clear d1(d, clearb,clkd, q);
adder_1bit_gate a1(x,y,q,sum,d);
shift_reg_4bit sha(shift_control,serA,clk,sa,x);
assign clkd = clk & shift_control;
shift_reg_4bit shb(shift_control,serB,clk,sb,y);
shift_reg_4bit sum1(shift_control,sum,clk,sum_reg,sum_reg_out);


    
endmodule