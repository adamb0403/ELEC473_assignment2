module rx_parity_check (input [10:0] parity_in,
                        output [6:0] parity_out,
                        output reg p_check_out,
                        output reg framing_out);

    assign parity_out = parity_in[8:2];

    always @(parity_in) begin // Execute always at a 7bit data input
        if (~^parity_out == parity_in[9])
            p_check_out = 0;
        else
            p_check_out = 1;
        
        if (parity_in[10])
            framing_out = 0;
        else
            framing_out = 1;
    end
endmodule