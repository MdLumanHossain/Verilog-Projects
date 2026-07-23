// Code your design here
module dff(input d, reset, clk,
           output reg  q);
  always @(posedge clk) begin
    if (reset)
       q <= 0;
    else
      q <= d;
  end
endmodule
      
