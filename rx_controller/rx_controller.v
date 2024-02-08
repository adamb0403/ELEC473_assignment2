module rx_controller (input clk,
                      input reset,
                      input ctrl_counter,
                      input ctrl_half_baud,
                      input ctrl_irda_half_baud,
                      input ctrl_rx,
                      output ctrl_sr_load,
                      output reg current_state,
                      output ctrl_reset_baud);

    // Define each state using a 2 bit binary number
    parameter state_0 = 1'b0;
    parameter state_load = 1'b1;

    // Assign the conditions in which the controller will tell the shift register to load or shift
    assign ctrl_sr_load = ((current_state == state_load) && (ctrl_half_baud));
    assign ctrl_reset_baud = ((current_state == state_0) && (!ctrl_rx));

    initial
        current_state = state_0; // Set the first state to state_0

    always @(posedge clk) begin
        if (!reset)
            current_state <= state_0; // Upon reset assign state_0 as the first state

        case (current_state)
            state_0:
            // While in state_0 move to state_load upon a pulser output
                if (!ctrl_rx)
                    current_state <= state_load;
            state_load:
            // While in state_load move to state_shift after sending the load signal
                if (ctrl_counter)
                    current_state <= state_0;
        endcase
    end
endmodule