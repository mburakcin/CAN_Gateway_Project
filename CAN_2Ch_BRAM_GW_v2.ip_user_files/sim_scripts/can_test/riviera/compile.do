vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/lib_bmg_v1_0_14
vlib riviera/can_v5_0_30
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_bram_ctrl_v4_1_7

vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap lib_bmg_v1_0_14 riviera/lib_bmg_v1_0_14
vmap can_v5_0_30 riviera/can_v5_0_30
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_7 riviera/axi_bram_ctrl_v4_1_7

vlog -work xpm  -sv2k12 "+incdir+../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/7698" \
"/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/7698" \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_14 -93  \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work can_v5_0_30 -93  \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/8f5b/hdl/can_v5_0_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/can_test/ip/can_test_can_0_0/sim/can_test_can_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/can_test/ip/can_test_proc_sys_reset_0_0/sim/can_test_proc_sys_reset_0_0.vhd" \
"../../../bd/can_test/ip/can_test_input_register_can_0_0/sim/can_test_input_register_can_0_0.vhd" \
"../../../bd/can_test/ip/can_test_tx_pulse_generator_0_0/sim/can_test_tx_pulse_generator_0_0.vhd" \
"../../../bd/can_test/ip/can_test_frequency_test_0_0/sim/can_test_frequency_test_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/7698" \
"../../../bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/can_test/ip/can_test_can_1_0/sim/can_test_can_1_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_7 -93  \
"../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/f80b/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/can_test/ip/can_test_axi_bram_ctrl_0_0/sim/can_test_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/7698" \
"../../../bd/can_test/ip/can_test_axi_bram_ctrl_0_bram_0/sim/can_test_axi_bram_ctrl_0_bram_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/can_test/ip/can_test_input_register_can_1_0/sim/can_test_input_register_can_1_0.vhd" \
"../../../bd/can_test/ipshared/b7f1/hdl/Gateway_Logik_v1_0_M00_AXI.vhd" \
"../../../bd/can_test/ipshared/b7f1/hdl/Gateway_Logik_v1_0_M01_AXI.vhd" \
"../../../bd/can_test/ipshared/b7f1/hdl/Gateway_Logik_v1_0_M02_AXI.vhd" \
"../../../bd/can_test/ipshared/b7f1/hdl/Gateway_Logik_v1_0.vhd" \
"../../../bd/can_test/ip/can_test_Gateway_Logik_0_0/sim/can_test_Gateway_Logik_0_0.vhd" \
"../../../bd/can_test/sim/can_test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

