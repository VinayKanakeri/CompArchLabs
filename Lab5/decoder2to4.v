module decoder2to4bits(decin,decout);
input [1:0] decin;
output [3:0] decout;
assign decout[0] = (~decin[1])&(~decin[0]);
assign decout[1] = (~decin[1])&(decin[0]);
assign decout[2] = (decin[1])&(~decin[0]);
assign decout[3] = (decin[1])&(decin[0]);
    
endmodule