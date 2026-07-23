// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1,i2,en;
  wire y0,y1,y2,y3,y4,y5,y6,y7;
  
  decode38 uut(.i0(i0),
               .i1(i1),
               .i2(i2),
               .en(en),
               .y0(y0),
               .y1(y1),
               .y2(y2),
               .y3(y3),
               .y4(y4),
               .y5(y5),
               .y6(y6),
               .y7(y7));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
     
    en=1; i0=0; i1=0; i2=0; #10;
    en=1; i0=0; i1=0; i2=1; #10;
    en=1; i0=0; i1=1; i2=0; #10;
    en=1; i0=0; i1=1; i2=1; #10;
    en=1; i0=1; i1=0; i2=0; #10;
    en=1; i0=1; i1=0; i2=1; #10;
    en=1; i0=1; i1=1; i2=0; #10;
    en=1; i0=1; i1=1; i2=1; #10;
    $finish;
  end
   initial begin
     $monitor("i0=%b i1=%b i2=%b en=%b y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",i0,i1,i2,en,y0,y1,y2,y3,y4,y5,y6,y7);
   end
endmodule
     
    
    
    
               
               
