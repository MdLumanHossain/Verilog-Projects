module tb;
  reg  [3:0] A, B;
  reg        C0;
  wire [3:0] S;
  wire       Cout;
  wire [4:0] Total;       

  assign Total = A + B;   

  Adder4bit uut(
    .A(A), .B(B), .C0(C0),
    .S(S), .Cout(Cout)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;             
    A=0; B=0; C0=0; #10;

    // then your test cases
    A=4'b0101; B=4'b0011; C0=0; #10;
    A=4'b0111; B=4'b1000; C0=0; #10;
    A=4'b1111; B=4'b0001; C0=0; #10;
    A=4'b0110; B=4'b0110; C0=0; #10;


    $finish;
  end

  initial begin
   
    $monitor("A=%b B=%b C0=%b | S=%b Cout=%b | Total=%0d",
              A, B, C0, S, Cout, Total);
  end

endmodule
