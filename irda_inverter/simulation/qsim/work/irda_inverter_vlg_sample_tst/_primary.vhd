library verilog;
use verilog.vl_types.all;
entity irda_inverter_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(0 downto 0);
        bit_input       : in     vl_logic;
        irda_baud       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end irda_inverter_vlg_sample_tst;
