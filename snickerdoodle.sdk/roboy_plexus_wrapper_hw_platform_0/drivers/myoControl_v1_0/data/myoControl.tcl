

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "myoControl" "NUM_INSTANCES" "DEVICE_ID"  "C_myoControl_BASEADDR" "C_myoControl_HIGHADDR"
}
