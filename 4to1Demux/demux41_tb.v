// Code your testbench here
// or browse Examples
module tb;
  reg d, s1,s2;
  wire y1, y2,y3,y4;
   
  demux41 uut (.d(d),
               .s1(s1),
               .s2(s2),
               .y1(y1),
               .y2(y2),
               .y3(y3),
               .y4(y4));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    d=1; s1=0; s2=0; #10;
    d=1; s1=0; s2=1; #10;
    d=1; s1=1; s2=0; #10;
    d=1; s1=1; s2=1; #10;
    $finish;
  end
  
  initial begin
    $monitor("d=%b s1=%b s2=%b y1=%b y2=%b y3=%b y4=%b", d,s1,s2,y1,y2,y3,y4);
  end 
  
endmodule
               
