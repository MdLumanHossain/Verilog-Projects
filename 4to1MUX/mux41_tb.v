// Code your testbench here
// or browse Examples
module tb;
  reg i0, i1,i2,i3, s0, s1;
  wire y;
  
  Mux41 uut (.i0(i0),
             .i1(i1),
             .i2(i2),
             .i3(i3),
             .s0(s0),
             .s1(s1),
             .y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    s0=0; s1=0; i0=0; i1=1; i2=0; i3=1; #10;
   s0=0; s1=1; i0=0; i1=1; i2=0; i3=1; #10;;
   s0=1; s1=0; i0=0; i1=1; i2=0; i3=1; #10;
   s0=1; s1=1; i0=0; i1=1; i2=0; i3=1; #10;
    $finish;
  end
  initial begin
    $monitor("s0=%b s1=%b i0=%b i1=%b i2=%b i3=%b y =%b",s0,s1,i0,i1,i2,i3, y);
  end
endmodule
    
