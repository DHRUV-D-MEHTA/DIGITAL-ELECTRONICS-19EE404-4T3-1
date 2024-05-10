module HALF_ADDER(A,B,C,S); 
input A,B; 
output S,C; 
assign c=A&B; 
assign S=A^B; 
endmodule