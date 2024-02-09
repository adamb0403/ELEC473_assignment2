module irda_encoder (input encoder_input,
                      input irda_baud,
                      output reg encoder_output);
    
always @(encoder_input) begin
    encoder_output = (encoder_input) && (irda_baud);
end
endmodule