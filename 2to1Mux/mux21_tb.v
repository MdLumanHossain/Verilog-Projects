// Code your testbench here
// or browse Examples
module tb;
  reg I0, I1, S;
  wire Y;
  
  MUX21 uut (.I0(I0),
               .I1(I1),
               .S(S),
               .Y(Y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    S=0; I0=0; I1=1; #10;
    S=1;I0=0; I1=1; #10;
    $finish;
  end
  initial begin
    $monitor(" I0=%b I1=%b S=%b Y =%b", I0,I1,S,Y);
  end
endmodule
    
