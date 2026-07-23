// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1, en;
  wire y0,y1,y2,y3;
  
  decode24 uut(.i0(i0),
               .i1(i1),
               .en(en),
               .y0(y0),
               .y1(y1),
               .y2(y2),
               .y3(y3));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    en=0; i0=0; i1=0; #10;
    en=1; i0=0; i1=0; #10;
    en=1; i0=0; i1=1; #10;
    en=1; i0=1; i1=0; #10;
    en=1; i0=1; i1=1; #10;
    
    $finish;
  end
  
  initial begin
    $monitor("i0=%b i1=%b en=%b y0=%b y1=%b y2=%b y3=%b",i0,i1, en,y0,y1,y2,y3);
  end
endmodule
    
    
    
