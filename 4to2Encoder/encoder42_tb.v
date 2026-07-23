// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1,i2,i3;
  wire y0,y1,v;
  
  encode42 uut(.i0(i0),
               .i1(i1),
               .i2(i2),
               .i3(i3),
               .y0(y0),
               .y1(y1),
               .v(v));
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    i3=0; i2=0; i1=0; i0=1; #10;
    i3=0; i2=0; i1=1; i0=0; #10;
    i3=0; i2=1; i1=0; i0=0; #10;
    i3=1; i2=0; i1=0; i0=0; #10;
    $finish;
  end
  
  initial begin
    $monitor("i3=%b i2=%b i1=%b i0=%b y0=%b y1=%b v=%b", i3,i2,i1,i0, y0,y1,v);
  end
  
endmodule
    
    
  
