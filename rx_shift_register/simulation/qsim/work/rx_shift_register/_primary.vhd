library verilog;
use verilog.vl_types.all;
entity rx_shift_register is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rx_sr_load      : in     vl_logic;
        rx_sr_in        : in     vl_logic;
        rx_sr_out       : out    vl_logic_vector(10 downto 0)
    );
end rx_shift_register;
