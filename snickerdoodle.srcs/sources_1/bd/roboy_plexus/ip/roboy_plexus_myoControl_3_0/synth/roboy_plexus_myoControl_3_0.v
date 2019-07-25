// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Roboy:roboy_plexus:myoControl:1.0
// IP Revision: 4

(* X_CORE_INFO = "myoControl_v1_0,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "roboy_plexus_myoControl_3_0,myoControl_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module roboy_plexus_myoControl_3_0 (
  myocontrol_awaddr,
  myocontrol_awprot,
  myocontrol_awvalid,
  myocontrol_awready,
  myocontrol_wdata,
  myocontrol_wstrb,
  myocontrol_wvalid,
  myocontrol_wready,
  myocontrol_bresp,
  myocontrol_bvalid,
  myocontrol_bready,
  myocontrol_araddr,
  myocontrol_arprot,
  myocontrol_arvalid,
  myocontrol_arready,
  myocontrol_rdata,
  myocontrol_rresp,
  myocontrol_rvalid,
  myocontrol_rready,
  ss_n_o,
  miso,
  mosi,
  sck,
  mirrored_muscle_unit,
  power_sense_n,
  myocontrol_aclk,
  myocontrol_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl AWADDR" *)
input wire [10 : 0] myocontrol_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl AWPROT" *)
input wire [2 : 0] myocontrol_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl AWVALID" *)
input wire myocontrol_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl AWREADY" *)
output wire myocontrol_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl WDATA" *)
input wire [31 : 0] myocontrol_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl WSTRB" *)
input wire [3 : 0] myocontrol_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl WVALID" *)
input wire myocontrol_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl WREADY" *)
output wire myocontrol_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl BRESP" *)
output wire [1 : 0] myocontrol_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl BVALID" *)
output wire myocontrol_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl BREADY" *)
input wire myocontrol_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl ARADDR" *)
input wire [10 : 0] myocontrol_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl ARPROT" *)
input wire [2 : 0] myocontrol_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl ARVALID" *)
input wire myocontrol_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl ARREADY" *)
output wire myocontrol_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl RDATA" *)
output wire [31 : 0] myocontrol_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl RRESP" *)
output wire [1 : 0] myocontrol_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl RVALID" *)
output wire myocontrol_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME myoControl, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 512, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999947, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN roboy_plexus_proce\
ssing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 myoControl RREADY" *)
input wire myocontrol_rready;
output wire [5 : 0] ss_n_o;
input wire miso;
output wire mosi;
output wire sck;
input wire mirrored_muscle_unit;
input wire power_sense_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME myoControl_CLK, ASSOCIATED_BUSIF myoControl, ASSOCIATED_RESET myocontrol_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN roboy_plexus_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 myoControl_CLK CLK" *)
input wire myocontrol_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME myoControl_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 myoControl_RST RST" *)
input wire myocontrol_aresetn;

  myoControl_v1_0 #(
    .C_myoControl_DATA_WIDTH(32),
    .C_myoControl_ADDR_WIDTH(11),
    .NUMBER_OF_MOTORS(6),
    .CLOCK_SPEED_HZ(50000000)
  ) inst (
    .myocontrol_awaddr(myocontrol_awaddr),
    .myocontrol_awprot(myocontrol_awprot),
    .myocontrol_awvalid(myocontrol_awvalid),
    .myocontrol_awready(myocontrol_awready),
    .myocontrol_wdata(myocontrol_wdata),
    .myocontrol_wstrb(myocontrol_wstrb),
    .myocontrol_wvalid(myocontrol_wvalid),
    .myocontrol_wready(myocontrol_wready),
    .myocontrol_bresp(myocontrol_bresp),
    .myocontrol_bvalid(myocontrol_bvalid),
    .myocontrol_bready(myocontrol_bready),
    .myocontrol_araddr(myocontrol_araddr),
    .myocontrol_arprot(myocontrol_arprot),
    .myocontrol_arvalid(myocontrol_arvalid),
    .myocontrol_arready(myocontrol_arready),
    .myocontrol_rdata(myocontrol_rdata),
    .myocontrol_rresp(myocontrol_rresp),
    .myocontrol_rvalid(myocontrol_rvalid),
    .myocontrol_rready(myocontrol_rready),
    .ss_n_o(ss_n_o),
    .miso(miso),
    .mosi(mosi),
    .sck(sck),
    .mirrored_muscle_unit(mirrored_muscle_unit),
    .power_sense_n(power_sense_n),
    .myocontrol_aclk(myocontrol_aclk),
    .myocontrol_aresetn(myocontrol_aresetn)
  );
endmodule
