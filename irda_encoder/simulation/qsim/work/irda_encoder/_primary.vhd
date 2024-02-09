library verilog;
use verilog.vl_types.all;
entity irda_encoder is
    port(
        encoder_input   : in     vl_logic;
        irda_baud       : in     vl_logic;
        encoder_output  : out    vl_logic
    );
end irda_encoder;
