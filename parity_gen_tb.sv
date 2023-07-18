`timescale 1ns/1ps
module test_parity_generator;
reg A;
reg B;
reg C;

wire Po;
wire Pe;

parity_generator uut (
.A(A),
.B(B),
.C(C),
.Po(Po),
.Pe(Pe)
);

initial begin
$dumpfile("dump.vcd");
$dumpvars(1);

A=0;
B=0;
C=0;
#100;

A=0;
B=0;
C=1;
#100;

A=0;
B=1;
C=0;
#100;

A=0;
B=1;
C=1;
#100;

A=1;
B=0;
C=0;
#100;

A=1;
B=0;
C=1;
#100;

A=1;
B=1;
C=0;
#100;

A=1;
B=1;
C=1;
#100;

end
endmodule
