all:result.vcd
result.vcd:demux.vhdl demux_tb.vhdl
	ghdl -a demux.vhdl
	ghdl -a demux_tb.vhdl
	ghdl -e demux_tb
	ghdl -r demux_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
