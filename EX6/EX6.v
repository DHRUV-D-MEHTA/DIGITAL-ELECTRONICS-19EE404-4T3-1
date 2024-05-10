module EX6 (
    input s, r, clk, reset,
    output reg q,
    output q_bar
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 0; // Asynchronous reset sets Q to 0
        end else begin
            case({s, r})
                2'b00: begin // No change
                    q <= q;
                end
                2'b01: begin // Reset state
                    q <= 0;
                end
                2'b10: begin // Set state
                    q <= 1;
                end
                2'b11: begin // Invalid state (both inputs high)
                    q <= q; // Retain previous state
                end
            endcase
        end
    end

    assign q_bar = ~q; // Q-bar is the complement of Q

endmodule