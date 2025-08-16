set_property SRC_FILE_INFO {cfile:/home/upkmy/CAN_2Ch_BRAM_GW_v2/CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2.xdc rfile:../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2.xdc id:1 order:EARLY scoped_inst:clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:2 order:LATE scoped_inst:can_0/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memrx unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:3 order:LATE scoped_inst:can_1/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memrx unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:4 order:LATE scoped_inst:can_0/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memtx unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:5 order:LATE scoped_inst:can_1/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memtx unmanaged:yes} [current_design]
current_instance clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.033
current_instance
current_instance can_0/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memrx
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance can_1/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memrx
set_property src_info {type:SCOPED_XDC file:3 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance can_0/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memtx
set_property src_info {type:SCOPED_XDC file:4 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance can_1/U0/core_options.cantop_i/CANCORE_LOGIC_I/ol/memtx
set_property src_info {type:SCOPED_XDC file:5 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
