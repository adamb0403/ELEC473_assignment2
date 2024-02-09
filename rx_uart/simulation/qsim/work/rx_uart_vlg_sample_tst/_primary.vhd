library verilog;
use verilog.vl_types.all;
entity rx_uart_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        IRDA_RXD        : in     vl_logic;
        KEY             : in     vl_logic_vector(0 downto 0);
        SW              : in     vl_logic_vector(0 downto 0);
        UART_RXD        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end rx_uart_vlg_sample_tst;
