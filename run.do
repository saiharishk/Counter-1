vlib work

vlog counter.v +acc
vlog counter_tb.v +acc

vsim work.tb
add wave -r *
run -all
