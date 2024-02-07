module rx_shift_register (input clk,
                          input reset,
                          input rx_sr_load,
                          input rx_sr_in,
                          output [10:0] rx_sr_out);
    
    reg [10:0] tmp_data; // 11 bit register for data
	assign rx_sr_out[10:0] = tmp_data[10:0]; // Assign the shift register output to the lsb of the data register
	
	initial
		tmp_data[10:0] = 11'b00000000000; // Initially set the register to all 1s
	
    always @(posedge clk) begin
        if (!reset)
            tmp_data <= 11'b00000000000; // Upon reset set the register to all 1s
        else if (rx_sr_load) begin
            tmp_data <= tmp_data >> 1;
            tmp_data[10] <= rx_sr_in;
        end
    end
endmodule