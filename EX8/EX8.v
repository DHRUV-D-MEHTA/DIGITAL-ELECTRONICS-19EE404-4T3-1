module EX8(D,clk,Q,Qbar); 
input D,clk; 
output Q,Qbar; 
assign Dbar=~D; 
wire X,Y; 
nand (X,D,clk); 
nand (Y,Dbar,clk); 
nand (Q,X,Qbar); 
nand (Qbar,Y,Q); 
endmodule 