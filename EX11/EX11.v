module EX11(clk,q1,q2,q3); 
input clk; 
output reg q1,q2,q3; 
always@(posedge clk) 
begin 
q3 = (q1&q2)^q3; 
q2 = q1^q2; 
q1 = 1^q1; 
end 
endmodule