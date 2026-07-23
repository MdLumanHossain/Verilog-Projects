// Code your testbench here
// or browse Examples
module tb;
  reg d, reset,clk;
  wire q;
  
  dff uut(.d(d),
          .reset(reset),
          .clk(clk),
          .q(q));
   initial clk=0;
  always #5 clk= ~clk;
  integer i;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
   
    reset=1; d=0; #20;
    reset=0;

    for(i=0; i<4 ; i=i+1) begin
      d=i[0];
      #10;
    end
    
    
    $finish;
  end
 
  initial begin
    $monitor("d=%b reset=%b clk=%b q=%b", d,reset, clk,q);
  end
endmodule
  
  
