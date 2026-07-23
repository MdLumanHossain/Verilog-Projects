// Code your design here
module demux41 (input d,
                input s1,
                input s2,
                output y1,
                output y2,
                output y3,
                output y4);
  
  assign y1=d&(~s1)&(~s2);
  assign y2=d&(~s1)&(s2);
  assign y3=d&(s1)&(~s2);
  assign y4=d&(s1)&(s2);
  
endmodule
