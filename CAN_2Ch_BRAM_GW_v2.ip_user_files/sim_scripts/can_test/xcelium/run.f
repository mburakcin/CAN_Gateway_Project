-makelib xcelium_lib/xpm -sv \
  "/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_14 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/can_v5_0_30 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/8f5b/hdl/can_v5_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_can_0_0/sim/can_test_can_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_proc_sys_reset_0_0/sim/can_test_proc_sys_reset_0_0.vhd" \
  "../../../bd/can_test/ip/can_test_input_register_can_0_0/sim/can_test_input_register_can_0_0.vhd" \
  "../../../bd/can_test/ip/can_test_frequency_test_0_0/sim/can_test_frequency_test_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2_clk_wiz.v" \
  "../../../bd/can_test/ip/can_test_clk_wiz_0_2/can_test_clk_wiz_0_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_can_1_0/sim/can_test_can_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_7 \
  "../../../../CAN_2Ch_BRAM_GW_v2.gen/sources_1/bd/can_test/ipshared/f80b/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_axi_bram_ctrl_0_0/sim/can_test_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_axi_bram_ctrl_0_bram_0/sim/can_test_axi_bram_ctrl_0_bram_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/can_test/ip/can_test_input_register_can_1_0/sim/can_test_input_register_can_1_0.vhd" \
  "../../../bd/can_test/ipshared/788a/hdl/Gateway_Logik_v1_0_M00_AXI.vhd" \
  "../../../bd/can_test/ipshared/788a/hdl/Gateway_Logik_v1_0_M01_AXI.vhd" \
  "../../../bd/can_test/ipshared/788a/hdl/Gateway_Logik_v1_0_M02_AXI.vhd" \
  "../../../bd/can_test/ipshared/788a/hdl/Gateway_Logik_v1_0.vhd" \
  "../../../bd/can_test/ip/can_test_Gateway_Logik_0_0/sim/can_test_Gateway_Logik_0_0.vhd" \
  "../../../bd/can_test/ip/can_test_tx_pulse_generator_0_0/sim/can_test_tx_pulse_generator_0_0.vhd" \
  "../../../bd/can_test/sim/can_test.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

