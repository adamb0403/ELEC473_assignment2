module irda_inverter (input UART_input,
                      input IRDA_input,
                      input irda_baud,
                      input [0:0] SW,
                      output reg UART_output,
                      output reg IRDA_output,
                      output reg rx_output);

    always @(UART_input || IRDA_input) begin
        if (!SW[0]) begin
            IRDA_output = 1'b0;
            UART_output = UART_input;
            rx_output = UART_output;
        end
        else begin
            UART_output = 1'b1;
            IRDA_output = (!IRDA_input); // && (irda_baud);
            rx_output = IRDA_output;
        end
    end
endmodule