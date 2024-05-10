module FULL_SUBTRACTOR(a,b,c,difference,borrow); 
input a,b,c; 
output difference,borrow; 
assign difference=(a^b^c); 
assign borrow=(~a&(b^c)|(b&c)); 
endmodule