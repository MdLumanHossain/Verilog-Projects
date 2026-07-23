// Code your design here
module encode42 (input i0,
                 input i1,
                 input i2,
                 input i3,
                 output y0,
                 output y1,
                output v);
  
  assign y0= i1|i3;
  assign y1= i2|i3;
  assign v=i0|i1|i2|i3; // for valid bit purpose if it is not use even then code still working
  
  endmodule
