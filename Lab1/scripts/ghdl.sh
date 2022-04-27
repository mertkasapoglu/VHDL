ghdl -a -fsynopsys ../rtl/xor_gate.vhd
ghdl -a -fsynopsys ../tb/tb_ssi.vhd
ghdl -e -fsynopsys tb_ssi
ghdl -r tb_ssi --vcd=../vcd/xor.vcd
