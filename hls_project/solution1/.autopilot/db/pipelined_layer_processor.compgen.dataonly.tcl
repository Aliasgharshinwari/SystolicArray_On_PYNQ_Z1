# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
mat_A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
mat_B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
mat_C { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
num_row_tiles { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
num_depth_tiles { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
num_col_tiles { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


