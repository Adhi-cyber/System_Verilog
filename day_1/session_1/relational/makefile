all:

		make clear;make compile;make simulate
compile:
		vlib work
		vlog -sv relational_code.sv

simulate:
		vsim relational_code -l relational_code_output.log -c -do "run -all;quit;"

clear:
		clearall:
			


