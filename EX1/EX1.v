module EX1(a,b,y1,y2,y3,y4,y5,y6,y7); 
input a,b; 
output y1,y2,y3,y4,y5,y6,y7; 
and (y1,a,b); 
or (y2,a,b); 
not (y3,a); 
xor (y4,a,b); 
nand (y5,a,b); 
nor(y6,a,b); 
xnor (y7,a,b); 
endmodule 
