module tx_baud_counter (input clk,
                        input reset,
                        input reset_count,
                        output baud_output,
                        output half_baud_output,
                        output irda_baud_output);

    reg [10:0] count; // 11 bit register to count upto the baud rate
	
    // Output 1 when the baud target has been reached
	assign baud_output = (count == 11'd15); // 1301 clk cycles at 20ns = 38400 bps baud rate
    assign half_baud_output = (count == 10'd7);
    assign irda_baud_output = ((count >= 10'd7) && (count <= 10'd10)); // (3/16)*1302 + 651 = 895 for pulse width from half baud


    always @(posedge clk) begin
        if (!reset || reset_count) begin
            count <= 0; // Reset the count upon reset
        end
        else begin
            if (count == 15) begin
                count <= 0; // Reset the count if the baud target has been reached
            end
            else begin
                count <= count + 11'b1; // Increment the counter on every clk cycle
            end
        end
    end
endmodule