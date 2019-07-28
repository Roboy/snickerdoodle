
`timescale 1 ns / 1 ps

	module myoControl_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface myoControl
		parameter integer C_myoControl_DATA_WIDTH	= 32,
		parameter integer C_myoControl_ADDR_WIDTH	= 11,
		parameter integer NUMBER_OF_MOTORS     = 9,
		parameter integer CLOCK_SPEED_HZ = 50_000_000
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface myoControl
		input wire  myocontrol_aclk,
		input wire  myocontrol_aresetn,
		input wire [C_myoControl_ADDR_WIDTH-1 : 0] myocontrol_awaddr,
		input wire [2 : 0] myocontrol_awprot,
		input wire  myocontrol_awvalid,
		output wire  myocontrol_awready,
		input wire [C_myoControl_DATA_WIDTH-1 : 0] myocontrol_wdata,
		input wire [(C_myoControl_DATA_WIDTH/8)-1 : 0] myocontrol_wstrb,
		input wire  myocontrol_wvalid,
		output wire  myocontrol_wready,
		output wire [1 : 0] myocontrol_bresp,
		output wire  myocontrol_bvalid,
		input wire  myocontrol_bready,
		input wire [C_myoControl_ADDR_WIDTH-1 : 0] myocontrol_araddr,
		input wire [2 : 0] myocontrol_arprot,
		input wire  myocontrol_arvalid,
		output wire  myocontrol_arready,
		output wire [C_myoControl_DATA_WIDTH-1 : 0] myocontrol_rdata,
		output wire [1 : 0] myocontrol_rresp,
		output wire  myocontrol_rvalid,
		input wire  myocontrol_rready,
		// these are the spi ports
        output [NUMBER_OF_MOTORS-1:0] ss_n_o,
        input miso,
        output mosi,
        output sck,
        input mirrored_muscle_unit,
        input power_sense_n
	);
// Instantiation of Axi Bus Interface myoControl
	myoControl_v1_0_myoControl # ( 
		.C_S_AXI_DATA_WIDTH(C_myoControl_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_myoControl_ADDR_WIDTH),
		.NUMBER_OF_MOTORS(NUMBER_OF_MOTORS),
		.CLOCK_SPEED_HZ(CLOCK_SPEED_HZ)
	) myoControl_v1_0_myoControl_inst (
		.S_AXI_ACLK(myocontrol_aclk),
		.S_AXI_ARESETN(myocontrol_aresetn),
		.S_AXI_AWADDR(myocontrol_awaddr),
		.S_AXI_AWPROT(myocontrol_awprot),
		.S_AXI_AWVALID(myocontrol_awvalid),
		.S_AXI_AWREADY(myocontrol_awready),
		.S_AXI_WDATA(myocontrol_wdata),
		.S_AXI_WSTRB(myocontrol_wstrb),
		.S_AXI_WVALID(myocontrol_wvalid),
		.S_AXI_WREADY(myocontrol_wready),
		.S_AXI_BRESP(myocontrol_bresp),
		.S_AXI_BVALID(myocontrol_bvalid),
		.S_AXI_BREADY(myocontrol_bready),
		.S_AXI_ARADDR(myocontrol_araddr),
		.S_AXI_ARPROT(myocontrol_arprot),
		.S_AXI_ARVALID(myocontrol_arvalid),
		.S_AXI_ARREADY(myocontrol_arready),
		.S_AXI_RDATA(myocontrol_rdata),
		.S_AXI_RRESP(myocontrol_rresp),
		.S_AXI_RVALID(myocontrol_rvalid),
		.S_AXI_RREADY(myocontrol_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
