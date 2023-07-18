`timescale 1ns/1ps
module parity_odd_checker(A,B,C,D,P);
input A,B,C,D;
output P;
wire w1,w2;
xnor xn1(w1,A,B);
xnor xn2(w2,C,D);
xnor xn3(P,w1,w2);

endmodule
