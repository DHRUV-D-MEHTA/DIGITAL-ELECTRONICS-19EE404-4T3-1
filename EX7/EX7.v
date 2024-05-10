module EX7 (
    input j, k, clock, reset,
    output reg q, qb
);

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            q <= 0; // Reset sets Q to 0
            qb <= 1; // Reset sets Q-bar to 1
        end else begin
            if (j && k) begin
                q <= q; // Invalid state, Q remains unchanged
                qb <= qb; // Q-bar remains unchanged
            end else if (j) begin
                q <= 1; // Set state, Q becomes 1
                qb <= 0; // Set state, Q-bar becomes 0
            end else if (k) begin
                q <= 0; // Reset state, Q becomes 0
                qb <= 1; // Reset state, Q-bar becomes 1
            end else begin
                q <= ~q; // Toggle state, Q toggles
                qb <= ~qb; // Toggle state, Q-bar toggles
            end
        end
    end

endmodule