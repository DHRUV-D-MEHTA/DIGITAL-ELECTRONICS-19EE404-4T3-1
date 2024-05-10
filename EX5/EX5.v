module EX5 (
  output reg dout0,
  output reg dout1,
  output reg dout2,
  input din0,
  input din1,
  input din2,
  input din3,
  input din4,
  input din5,
  input din6,
  input din7
);

  wire [7:0] din; // Declare din as a wire
  assign din = {din7, din6, din5, din4, din3, din2, din1, din0};

  always @* begin
    case(din)
      8'b00000001: begin
        dout2 = 0;
        dout1 = 0;
        dout0 = 0;
      end
      8'b00000010: begin
        dout2 = 0;
        dout1 = 0;
        dout0 = 1;
      end
      8'b00000100: begin
        dout2 = 0;
        dout1 = 1;
        dout0 = 0;
      end
      8'b00001000: begin
        dout2 = 0;
        dout1 = 1;
        dout0 = 1;
      end
      8'b00010000: begin
        dout2 = 1;
        dout1 = 0;
        dout0 = 0;
      end
      8'b00100000: begin
        dout2 = 1;
        dout1 = 0;
        dout0 = 1;
      end
      8'b01000000: begin
        dout2 = 1;
        dout1 = 1;
        dout0 = 0;
      end
      8'b10000000: begin
        dout2 = 1;
        dout1 = 1;
        dout0 = 1;
      end
      default: begin
        dout2 = 1'bx; // Assign x for unknown cases
        dout1 = 1'bx;
        dout0 = 1'bx;
      end
    endcase
  end
endmodule