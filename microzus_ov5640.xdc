set_property IOSTANDARD LVTTL [get_ports {led[0]}]
set_property PACKAGE_PIN M15 [get_ports {led[0]}]

set_property IOSTANDARD LVTTL [get_ports image_sensor_xclk]
set_property PACKAGE_PIN U19 [get_ports image_sensor_xclk]

set_property IOSTANDARD LVTTL [get_ports image_sensor_pclk]
set_property PACKAGE_PIN U18 [get_ports image_sensor_pclk]

set_property IOSTANDARD LVTTL [get_ports image_sensor_vsync]
set_property PACKAGE_PIN U15 [get_ports image_sensor_vsync]

set_property IOSTANDARD LVTTL [get_ports image_sensor_href]
set_property PACKAGE_PIN U14 [get_ports image_sensor_href]

set_property IOSTANDARD LVTTL [get_ports image_sensor_scl]
set_property PACKAGE_PIN W15 [get_ports image_sensor_scl]

set_property IOSTANDARD LVTTL [get_ports image_sensor_sda]
set_property PACKAGE_PIN V15 [get_ports image_sensor_sda]

set_property PULLUP true [get_ports image_sensor_scl]
set_property PULLUP true [get_ports image_sensor_sda]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[0]}]
set_property PACKAGE_PIN T16 [get_ports {image_sensor_data[0]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[1]}]
set_property PACKAGE_PIN U17 [get_ports {image_sensor_data[1]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[2]}]
set_property PACKAGE_PIN Y18 [get_ports {image_sensor_data[2]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[3]}]
set_property PACKAGE_PIN Y19 [get_ports {image_sensor_data[3]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[4]}]
set_property PACKAGE_PIN Y16 [get_ports {image_sensor_data[4]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[5]}]
set_property PACKAGE_PIN Y17 [get_ports {image_sensor_data[5]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[6]}]
set_property PACKAGE_PIN W14 [get_ports {image_sensor_data[6]}]

set_property IOSTANDARD LVTTL [get_ports {image_sensor_data[7]}]
set_property PACKAGE_PIN Y14 [get_ports {image_sensor_data[7]}]


set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_fpga_1]
set_false_path -from [get_clocks clk_fpga_1] -to [get_clocks clk_fpga_2]
set_false_path -from [get_clocks clk_fpga_3] -to [get_clocks clk_fpga_2]
set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_fpga_3]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets image_sensor_xclk_OBUF]
