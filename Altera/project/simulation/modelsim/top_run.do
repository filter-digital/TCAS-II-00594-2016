transcript on

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom "../../../cores/FIR_90TAPS_sim/dspba_library_package.vhd"                      
vcom "../../../cores/FIR_90TAPS_sim/dspba_library.vhd"                              
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_math_pkg_hpfir.vhd"                   
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_lib_pkg_hpfir.vhd"                    
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"      
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"    
vcom "../../../cores/FIR_90TAPS_sim/auk_dspip_roundsat_hpfir.vhd"                   
vlog "../../../cores/FIR_90TAPS_sim/altera_avalon_sc_fifo.v"                        
vcom "../../../cores/FIR_90TAPS_sim/FIR_90TAPS_rtl.vhd"                             
vcom "../../../cores/FIR_90TAPS_sim/FIR_90TAPS_ast.vhd"                             
vcom "../../../cores/FIR_90TAPS_sim/FIR_90TAPS.vhd"                                 

vcom -work work {../../../rtl/txt_util.vhd}
vcom -work work {../../../rtl/fir_altera_wrapper.vhd}
vcom -work work {../../../rtl/top.vhd}
vcom -work work {../../../rtl/top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  top_tb

add wave /top_tb/DUT/clk
add wave -format Analog-Step -height 74 -max 16383.0 -radix decimal /top_tb/DUT/datain
add wave -format Analog-Step -height 74 -max 2147336193.0 -min -463245708.0 -radix decimal /top_tb/DUT/dataout
view structure
view signals
run 11 us
