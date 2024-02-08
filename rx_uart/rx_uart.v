module rx_uart (input CLOCK_50,
                input [0:0] KEY,
                input [0:0] SW,
                input UART_RXD,
                input IRDA_RXD,
                output ctrl_state,
                output ctrl_load_counter, // to check load signal
                output [10:0] sr_parity, // to check parity signal
                output [6:0] parity_7sd, // to check parity signal
                output [6:0] HEX1,
                output [6:0] HEX0,
                output [2:2] LEDR,
                output [6:6] LEDG);

    // Wires between each block, denoted as to_from
    wire baud_ctrl;
    wire ctrl_baud;
    wire irda_half_baud_ctrl;
    wire counter_ctrl;
    // wire ctrl_load_counter;
    wire inv_sr;
    // wire [10:0] sr_parity;
    // wire [6:0] parity_7sd;

    // Instantiating each block and connecting them within this file through passing inputs/outputs
    tx_7segdecoder msb_rx (
        .seven_seg_input(parity_7sd[6:4]),
        .seven_seg_output(HEX1[6:0])
    );

    tx_7segdecoder lsb_rx (
        .seven_seg_input(parity_7sd[3:0]),
        .seven_seg_output(HEX0[6:0])
    );

    tx_baud_counter baud_rx (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .reset_count(ctrl_baud),
        .half_baud_output(baud_ctrl),
        .irda_rx_baud_output(irda_half_baud_ctrl)
    );

    tx_counter counter_rx (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .count_enable(ctrl_load_counter),
        .count_out(counter_ctrl)
    );

    rx_parity_check parity_rx (
        .parity_in(sr_parity[10:0]),
        .parity_out(parity_7sd[6:0]),
        .framing_out(LEDG[6]),
        .p_check_out(LEDR[2])
    );

    rx_shift_register sr_rx (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .rx_sr_load(ctrl_load_counter),
        .rx_sr_in(inv_sr),
        .rx_sr_out(sr_parity[10:0])
    );

    rx_controller ctrl_rx (
        .clk(CLOCK_50),
        .reset(KEY[0]),
        .ctrl_rx(UART_RXD),
        .ctrl_half_baud(baud_ctrl),
        .ctrl_irda_half_baud(irda_half_baud_ctrl),
        .ctrl_counter(counter_ctrl),
        .ctrl_reset_baud(ctrl_baud),
        .ctrl_sr_load(ctrl_load_counter),
        .current_state(ctrl_state)
    );

    irda_inverter inv (
        .UART_input(UART_RXD),
        .IRDA_input(IRDA_RXD),
        .UART_output(inv_sr),
        .IRDA_output(inv_sr),
        .SW(SW[0]),
        .irda_baud(irda_half_baud_ctrl),
     );
endmodule