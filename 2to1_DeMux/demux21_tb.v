// Code your testbench here
// or browse Examples
module tb;
  reg D, S;
  wire Y0, Y1;
  
  Demux21 uut(.D(D),
            .S(S),
            .Y0(Y0),
            .Y1(Y1));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
     
    S=0; D=1;  #10;
    S=1; D=1;  #10;
    $finish;
  end
  initial begin 
    $monitor("S=%b D=%b Y0=%b Y1=%b", S, D, Y0, Y1);
  end
endmodule
    
    
    
