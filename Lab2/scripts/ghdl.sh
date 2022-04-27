ghdl -a -fsynopsys ../rtl/demux.vhd
ghdl -a -fsynopsys ../tb/tb_msi.vhd
ghdl -e -fsynopsys tb_msi
ghdl -r tb_msi --vcd=../vcd/demux.vcd
