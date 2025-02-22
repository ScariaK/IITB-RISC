transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB-RISC-22/Multicycle/Controller/controller.vhd}
vcom -93 -work work {D:/IITB-RISC-22/Multicycle/Controller/DUT.vhd}

vcom -93 -work work {D:/IITB-RISC-22/Multicycle/Controller/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
