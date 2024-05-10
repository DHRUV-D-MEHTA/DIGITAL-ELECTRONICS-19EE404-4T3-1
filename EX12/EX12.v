module EX12 (
  output reg [3:0] q,
  input clk, reset
); 
  wire t0, t1, t2, t3;
  T_FF tffo(t0, clk, reset); 
  T_FF tff1(t1, t0, reset); 
  T_FF tff2(t2, t1, reset); 
  T_FF tff3(t3, t2, reset); 

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 4'b0000;
    end else begin
      q <= {t3, t2, t1, t0};
    end
  end
endmodule

module D_FF(
  output reg q,
  input d, clk, reset
); 
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 1'b0;
    end else begin
      q <= d;
    end
  end
endmodule

module T_FF(
  output q,
  input clk, reset
);
  wire d;
  D_FF dff0(q, d, clk, reset);
  not n1(d, q); // not is Verilog-provided primitive. 
endmodule