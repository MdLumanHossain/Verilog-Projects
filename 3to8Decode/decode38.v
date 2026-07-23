// Code your design here
module decode38 (input i0,i1,i2,
                 input en,
                 output y0,y1,y2,y3,y4,y5,y6,y7);
  
  assign y0= en &(~i0) & (~i1) & (~i2);
  assign y1= en &(~i0) & (~i1) & (i2);
  assign y2= en &(~i0) & (i1) & (~i2);
  assign y3= en &(~i0) & (i1) & (i2);
  assign y4= en &(i0) & (~i1) & (~i2);
  assign y5= en &(i0) & (~i1) & (i2);
  assign y6= en &(i0) & (i1) & (~i2);
  assign y7= en &(i0) & (i1) & (i2);
  
endmodule
