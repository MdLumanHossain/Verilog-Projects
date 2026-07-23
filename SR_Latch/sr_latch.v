// Code your design here
module SRff (input s,r,clk, reset,
             output reg q,
             output qb);
             
 assign qb = ~q; 
always @(posedge clk) begin
  if(reset)
    q<=0;
  else
    case({s,r})
      2'b00 : q<=q;
      2'b01 : q<=0;
      2'b10 : q<=1;
      2'b11 : q=1'bx;
    endcase
end

endmodule
      
