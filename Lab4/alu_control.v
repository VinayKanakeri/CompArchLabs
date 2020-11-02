module alu_control (alu_op,func_field,op
);
input [1:0] alu_op;
input [5:0] func_field;
output [2:0] op;

assign op[0] = alu_op[1]&(func_field[0]|func_field[3]);
assign op[1] = (~alu_op[1]&funv_field[2]);
assign op[2] = alu_op[0]|(alu_op[1]&func_field[1]);
    
endmodule