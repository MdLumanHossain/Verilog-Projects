// Code your testbench here
// or browse Examples
module tb;
  reg s,r,clk,reset;
  wire q,qb;
  
  SRff uut(.s(s),
           .r(r),
           .clk(clk),
           .reset(reset),
           .q(q),
           .qb(qb));
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    reset=1; s=0; r=0; #10;
    reset=0;
    
    s=0; r=1; #10;
    s=1; r=1; #10;
    s=1; r=0; #10;
    s=0; r=0; #10;
    s=0; r=1; #10;
    $finish;
  end
  initial begin
    $monitor("s=%b r=%b clk=%b rest=%b q=%b qb=%b",s,r,clk, reset,q, qb);
  end
endmodule
    
