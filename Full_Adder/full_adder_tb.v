// Code your testbench here
// or browse Examples
module tb;
  reg A,B,C;
  wire S, F;
  
  Full_Adder uut(.A(A),
                 .B(B),
                 .C(C),
                 .S(S),
                 .F(F));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    {A,B,C}=3'b000;
    repeat(8) begin
      #10;
      {A,B,C}= {A,B,C}+1;
    end
    $finish;
  end
  initial begin
    $monitor("A=%b B=%b C=%b S=%b F=%b", A,B,C,S,F);
  end
endmodule
      
