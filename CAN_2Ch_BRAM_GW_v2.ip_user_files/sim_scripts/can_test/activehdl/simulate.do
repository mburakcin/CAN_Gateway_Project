onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+can_test  -L xpm -L lib_cdc_v1_0_2 -L blk_mem_gen_v8_4_5 -L lib_bmg_v1_0_14 -L can_v5_0_30 -L xil_defaultlib -L proc_sys_reset_v5_0_13 -L axi_bram_ctrl_v4_1_7 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.can_test xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {can_test.udo}

run

endsim

quit -force
