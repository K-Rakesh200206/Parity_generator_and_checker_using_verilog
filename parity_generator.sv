`timescale 1ns/1ps
module parity_generator (A,B,C,Po,Pe);
input A,B,C;
output Po,Pe;
wire w1,w2,w3;
xor xo1(w1,A,B);
xor xo2(w3,w1,C);
not n1(Po,w3);
xor xor3(w2,A,B);
xor xor4(Pe,w2,C);
endmodule
