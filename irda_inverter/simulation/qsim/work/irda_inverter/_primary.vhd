library verilog;
use verilog.vl_types.all;
entity irda_inverter is
    port(
        bit_input       : in     vl_logic;
        irda_baud       : in     vl_logic;
        SW              : in     vl_logic_vector(0 downto 0);
        bit_output      : out    vl_logic
    );
end irda_inverter;
