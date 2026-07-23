// Code your design here
module encode83(input i0,i1,i2,i3,i4,i5,i6,i7,
                output y0,y1,y2,
               output v);
  
  assign y2=i4|i5|i6|i7;
  assign y1= i2|i3|i6|i7;
  assign y0= i1|i3|i5|i7;
  assign v= i0|i1|i2|i3|i4|i5|i6|i7;
endmodule
