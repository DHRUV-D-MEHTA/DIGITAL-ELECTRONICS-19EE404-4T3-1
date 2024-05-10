module EX9(T,clk,Q,Qbar); 
input T,clk; 
output Q,Qbar; 
wire S,R; 
nand (S,T,clk,Qbar); 
nand (R,T,clk,Q); 
nand (Q,S,Qbar); 
nand (Qbar,R,Q); 
endmodule 