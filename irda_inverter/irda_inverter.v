module irda_inverter (input bit_input,
                      input irda_baud,
                      input [0:0] SW,
                      output reg bit_output);

    always @(bit_input) begin
        if (SW[0])
            bit_output = (!bit_input) && (irda_baud);
        else
            bit_output = bit_input;
    end
    
endmodule