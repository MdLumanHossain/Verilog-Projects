// Full Adder module
module Full_Adder(
  input  A,
  input  B,
  input  C,
  output S,
  output Cout
);
  assign S    = A ^ B ^ C;
  assign Cout = (C & (A ^ B)) | (A & B);
endmodule


// 4-bit Ripple Carry Adder
module Adder4bit(
  input  [3:0] A,
  input  [3:0] B,
  input        C0,
  output [3:0] S,
  output       Cout
);
  wire [3:1] Cin;  // internal carry wires

  // Bit 0 — LSB
  Full_Adder i0(
    .A(A[0]), .B(B[0]), .C(C0),
    .S(S[0]), .Cout(Cin[1])
  );

  // Bit 1
  Full_Adder i1(
    .A(A[1]), .B(B[1]), .C(Cin[1]),
    .S(S[1]), .Cout(Cin[2])
  );

  // Bit 2
  Full_Adder i2(
    .A(A[2]), .B(B[2]), .C(Cin[2]),
    .S(S[2]), .Cout(Cin[3])
  );

  // Bit 3 — MSB
  Full_Adder i3(
    .A(A[3]), .B(B[3]), .C(Cin[3]),
    .S(S[3]), .Cout(Cout)
  );

endmodule
