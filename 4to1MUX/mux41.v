// Code your design here
module Mux41(input s0,
             input s1,
             input i0,
             input i1,
             input i2,
             input i3,
             output y);
  assign y=((~s0)&(~s1)&i0)|((~s0)&(s1)&i1)|((s0)&(~s1)&i2)|((s0)&(s1)&i3);
                             
endmodule
                             
