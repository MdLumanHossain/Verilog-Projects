// Code your design here
module Full_Adder(input A,
                  input B,
                  input C,
                 output S,
                  output F);
  assign S= A^B^C;
  assign F=(C&(A^B))|(A&B);
endmodule
