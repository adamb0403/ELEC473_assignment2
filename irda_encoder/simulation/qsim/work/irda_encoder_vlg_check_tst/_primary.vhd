library verilog;
use verilog.vl_types.all;
entity irda_encoder_vlg_check_tst is
    port(
        encoder_output  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end irda_encoder_vlg_check_tst;
