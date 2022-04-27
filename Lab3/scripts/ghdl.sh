ghdl -a -fsynopsys ../rtl/seq_behav.vhd
ghdl -a -fsynopsys ../tb/sequential_tb.vhd
ghdl -e -fsynopsys sequential_tb
ghdl -r sequential_tb --vcd=../vcd/seq_behav.vcd