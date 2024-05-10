module EX10 (
  input clk, clear, si,
  output wire so
);
  reg [3:0] tmp; // 4-bit shift register

  always @(posedge clk) begin
    if (clear) begin
      tmp <= 4'b0000; // Clear the shift register
    end else begin
      tmp <= {tmp[2:0], si}; // Shift in new data from si
    end
  end

  // Output the MSB (most significant bit) of the shift register
  assign so = tmp[3];
endmodule