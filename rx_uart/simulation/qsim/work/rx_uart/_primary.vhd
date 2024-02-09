library verilog;
use verilog.vl_types.all;
entity rx_uart is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(0 downto 0);
        SW              : in     vl_logic_vector(0 downto 0);
        UART_RXD        : in     vl_logic;
        IRDA_RXD        : in     vl_logic;
        ctrl_state      : out    vl_logic;
        ctrl_load_counter: out    vl_logic;
        sr_parity       : out    vl_logic_vector(10 downto 0);
        parity_7sd      : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(2 downto 2);
        LEDG            : out    vl_logic_vector(6 downto 6)
    );
end rx_uart;
