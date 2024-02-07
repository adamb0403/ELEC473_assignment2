module full_uart (input CLOCK_50,
                  input [3:0] KEY,
                  input [8:0] SW,
                  input UART_RXD,
                  output UART_TXD,
                  output [1:0] tx_ctrl_state,
                  output rx_ctrl_state,
                  output rx_ctrl_load_counter, // to check load signal
                  output [10:0] rx_sr_parity, // to check parity signal
                  output [6:0] rx_parity_7sd, // to check parity signal
                  output [6:0] HEX5,
                  output [6:0] HEX4,
                  output [6:0] HEX1,
                  output [6:0] HEX0,
                  output [2:2] LEDR,
                  output [6:6] LEDG);

    tx_uart tx (
        .CLOCK_50(CLOCK_50),
        .KEY(KEY[3:0]),
        .SW(SW[8:0]),
        .UART_TXD(UART_TXD),
        .HEX5(HEX5[6:0]),
        .HEX4(HEX4[6:0]),
        .ctrl_state(tx_ctrl_state)
    );

    rx_uart rx (
        .CLOCK_50(CLOCK_50),
        .KEY(KEY[0:0]),
        .SW(SW[0:0]),
        .UART_RXD(UART_RXD),
        .HEX1(HEX1[6:0]),
        .HEX0(HEX0[6:0]),
        .LEDR(LEDR[2:2]),
        .LEDG(LEDG[6:6]),
        .ctrl_state(rx_ctrl_state),
        .ctrl_load_counter(rx_ctrl_load_counter),
        .sr_parity(rx_sr_parity[10:0]),
        .parity_7sd(rx_parity_7sd[6:0])
    );
endmodule