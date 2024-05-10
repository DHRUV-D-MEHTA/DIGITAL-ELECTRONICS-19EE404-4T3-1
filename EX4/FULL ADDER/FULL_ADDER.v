module FULL_ADDER(a,b,carryin,sum,carryout); 
input a,b,carryin; 
output sum,carryout; 
wire x,p,q,r; 
xor(x,b,carryin); 
xor(sum,x,a); 
and(p,a,b); 
and(q,b,carryin); 
and(r,a,carryin); 
or(carryout,p,q,r); 
endmodule 