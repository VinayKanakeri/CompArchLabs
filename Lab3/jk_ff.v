module jk_ff (j,k,clk,clearb,q,qb);
input j,k,clk,clearb;
output q,qb;
reg q,qb;

always @(negedge clearb or posedge clk)
begin
    if (!clearb) begin
        q <= 1'b0;
        qb <= 1'b1;
    end
    else 
    begin
        if (j==0 && k==0) begin
            q <= q;
            qb <= qb;
        end 
        else if (j==0 && k==1) begin
            q <= 0;
            qb <= 1;
        end
        else if (j==1 && k==0) begin
            q <= 1;
            qb <= 0;
        end
        else if (j==1 && k==1) begin
            q <= ~q;
            qb <= ~qb;
        end
    end
end

    
endmodule