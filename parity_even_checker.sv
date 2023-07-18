`timescale 1ns/1ps
module parity_even_checker(A,B,C,D,P);
input A,B,C,D;
output P;
wire w1,w2;
xor xo1(w1,A,B);
xor xo2(w2,C,D);
xor xo3(P,w1,w2);

endmodule
