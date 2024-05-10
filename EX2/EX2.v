module EX2(a,b,c,d,f1); 
input a,b,c,d; 
output f1; 
wire x1,x2,x3,x4,x5; 
assign x1=(~a)&(~b)&(~c)&(~d); 
assign x2=(a)&(~c)&(~d); 
assign x3=(~b)&(c)&(~d); 
assign x4=(~a)&(b)&(c)&(d); 
assign x5=(b)&(~c)&(d); 
assign f1=x1|x2|x3|x4|x5; 
endmodule 