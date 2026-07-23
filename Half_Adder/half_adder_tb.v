

// Testbench
module Half_Adder_tb;
  reg  A, B;
  wire Sum, Carry;

  Half_Adder uut(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, Half_Adder_tb);

    {A, B} = 2'b00;       // ✅ fixed syntax
    repeat(8) begin
      #10;
      {A, B} = {A, B} + 1; // ✅ increment added
    end

    $finish;
  end

  initial begin
    $monitor("A=%b B=%b Sum=%b Carry=%b", A, B, Sum, Carry); // ✅ separate block
  end

endmodule
