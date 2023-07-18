`timescale 1ns/1ps
module test_parity_even_checker;
reg A;
reg B;
reg C;
reg D;

wire P;

parity_even_checker uut(
.A(A),
.B(B),
.C(C),
.D(D),
.P(P)
);

initial begin
$dumpfile("dump.vcd");
$dumpvars(1);

A=0;
B=0;
C=0;
D=0;
#70;

A=0;
B=0;
C=0;
D=1;
#70;

A=0;
B=0;
C=1;
D=0;
#70;

A=0;
B=0;
C=1;
D=1;
#70;

A=0;
B=1;
C=0;
D=0;
#70;

A=0;
B=1;
C=0;
D=1;
#70;

A=0;
B=1;
C=1;
D=0;
#70;

A=0;
B=1;
C=1;
D=1;
#70;

A=1;
B=0;
C=0;
D=0;
#70;

A=1;
B=0;
C=0;
D=1;
#70;

A=1;
B=0;
C=1;
D=0;
#70;

A=1;
B=0;
C=1;
D=1;
#70;

A=1;
B=1;
C=0;
D=0;
#70;

A=1;
B=1;
C=0;
D=1;
#70;

A=1;
B=1;
C=1;
D=0;
#70;

A=1;
B=1;
C=1;
D=1;
#70;

end
endmodule