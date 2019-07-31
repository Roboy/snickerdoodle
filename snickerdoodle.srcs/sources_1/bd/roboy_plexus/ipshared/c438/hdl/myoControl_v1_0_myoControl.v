
`timescale 1 ns / 1 ps

	module myoControl_v1_0_myoControl #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 11,
		parameter integer NUMBER_OF_MOTORS     = 9,
		parameter integer CLOCK_SPEED_HZ = 50_000_000
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,
		// these are the spi ports
        output [NUMBER_OF_MOTORS-1:0] ss_n_o,
        input miso,
        output mosi,
        output sck,
        input mirrored_muscle_unit
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;
	localparam integer power_sense_n = 0;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 8;
	
	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
	
	// gains and shit
    // p gains
    reg signed [31:0] Kp[NUMBER_OF_MOTORS-1:0];
    // i gains
    reg signed [31:0] Ki[NUMBER_OF_MOTORS-1:0];
    // d gains
    reg signed [31:0] Kd[NUMBER_OF_MOTORS-1:0];
    // setpoints
    reg signed [31:0] sp[NUMBER_OF_MOTORS-1:0];
    // output positive limits
    reg signed [31:0] outputPosMax[NUMBER_OF_MOTORS-1:0];
    // output negative limits
    reg signed [31:0] outputNegMax[NUMBER_OF_MOTORS-1:0];
    // integral negative limits
    reg signed [31:0] IntegralNegMax[NUMBER_OF_MOTORS-1:0];
    // integral positive limits
    reg signed [31:0] IntegralPosMax[NUMBER_OF_MOTORS-1:0];
    // deadband
    reg signed [31:0] deadBand[NUMBER_OF_MOTORS-1:0];
    // control mode
    reg [2:0] control_mode[NUMBER_OF_MOTORS-1:0];
    // reset pid_controller
    reg reset_controller[NUMBER_OF_MOTORS-1:0];
    // output shifter
    reg signed [31:0] outputShifter[NUMBER_OF_MOTORS-1:0];
    
    // pwm output to motors 
    wire signed [0:15] pwmRefs[NUMBER_OF_MOTORS-1:0];
    
    // the following is stuff we receive from the motors via spi
    // positions of the motors
    reg signed [31:0] positions[NUMBER_OF_MOTORS-1:0];
    // velocitys of the motors
    reg signed [15:0] velocitys[NUMBER_OF_MOTORS-1:0];
    // currents of the motors
    reg signed [15:0] currents[NUMBER_OF_MOTORS-1:0];
    // displacements of the springs
    reg signed [31:0] displacements[NUMBER_OF_MOTORS-1:0];
    
    reg reset_myo_control;
    reg spi_activated;
    reg update_controller;
    reg start_spi_transmission;
    reg [31:0] update_frequency;
    reg [31:0] actual_update_frequency;
    reg [31:0] delay_counter;
    
    reg [7:0] motor;
    reg [7:0] pid_update;
    reg [31:0] spi_enable_counter;
    
    reg [NUMBER_OF_MOTORS-1:0] myo_brick;
    reg signed [31:0] position_offset[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] myo_brick_gear_box_ratio[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] myo_brick_encoder_multiplier[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] motor_spring_angle[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] motor_angle[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] motor_angle_raw[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] motor_angle_offset[NUMBER_OF_MOTORS-1:0];
    reg [31:0] status[NUMBER_OF_MOTORS-1:0];
    reg [NUMBER_OF_MOTORS-1:0] myo_brick_ack_error;
    reg [11:0] motor_angle_prev[NUMBER_OF_MOTORS-1:0];
    reg signed [31:0] motor_angle_counter[NUMBER_OF_MOTORS-1:0];
    reg spi_done_prev; 
    reg [7:0]i;
    reg [31:0] counter;
    reg spi_enable;
    
    wire di_req, wr_ack, do_valid, wren, spi_done, ss_n;
    wire [0:15] Word;
    wire [15:0] data_out;
    wire signed [0:15] pwmRef;
    wire signed [0:31] position; 
    wire signed [0:15] velocity;
    wire signed [0:15] current;
    wire [0:15] displacement;
    wire signed [0:15] sensor1;
    wire signed [0:15] sensor2;
    
    wire [9:0] address;
    assign address = axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

	always @( posedge S_AXI_ACLK, negedge S_AXI_ARESETN ) begin: MYO_CONTROL_LOGIC
        
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            reset_myo_control <= 0;
            spi_activated <= 0;
            motor <= 0;
            spi_done_prev <= 0;
            delay_counter <= 0;
            update_frequency <= 0;
            counter <= 0;
            spi_enable_counter <= 0;
            spi_enable <= 0;
            myo_brick <= 0;
            for(i=0; i<NUMBER_OF_MOTORS; i = i+1) begin 
                myo_brick_gear_box_ratio[i] <= 62;
                myo_brick_encoder_multiplier[i] <= 1;
                outputShifter[i] <= 1;
            end 
        end else begin
	    if (slv_reg_wren) begin
            if((address>>4)<=8'h13 && address[3:0]<NUMBER_OF_MOTORS) begin
                case(address>>4)
                    8'h00: Kp[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h01: Ki[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h02: Kd[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h03: sp[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h05: outputPosMax[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h06: outputNegMax[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h07: IntegralPosMax[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h08: IntegralNegMax[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h09: deadBand[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h0A: control_mode[address[7:0]][2:0] <= S_AXI_WDATA[2:0];
                    8'h0B: reset_myo_control <= (S_AXI_WDATA!=0);
                    8'h0C: spi_activated <= (S_AXI_WDATA!=0);
                    8'h0D: reset_controller[address[7:0]] <= (S_AXI_WDATA!=0);
                    8'h0E: update_frequency <= S_AXI_WDATA;
                    8'h10: myo_brick <= S_AXI_WDATA;
                    8'h11: myo_brick_gear_box_ratio[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h12: myo_brick_encoder_multiplier[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                    8'h13: outputShifter[address[7:0]][31:0] <= S_AXI_WDATA[31:0];
                endcase
            end
            // toggle registers need to be set to zero at every clock cycle
            update_controller <= 0;
            start_spi_transmission <= 0;
            reset_myo_control <= 0;
            for(i=0; i<NUMBER_OF_MOTORS; i = i+1) begin : reset_reset_controller
                reset_controller[i] <= 0;
            end
            // for rising edge detection of spi done
            spi_done_prev <= spi_done;
            
            // increment counter, will be used to calculate actual update frequency
            counter <= counter + 1;
            
            // when spi is done, latch the received values for the current motor and toggle PID controller update of previous motor
            if(spi_done_prev==0 && spi_done) begin
                positions[motor][31:0] <= position[0:31];
                velocitys[motor][15:0] <= velocity[0:15];
                currents[motor][15:0] <= current[0:15];
                if(~myo_brick[motor]) begin
                    if(mirrored_muscle_unit) begin 
                        displacements[motor][31:0] <= (-1)*$signed(displacement[0:14]); 
                    end else begin
                        displacements[motor][31:0] <= $signed(displacement[0:14]);
                    end
                end else begin
                    displacements[motor][31:0] <= motor_spring_angle[motor];
                end
                if(motor==0) begin // lazy update (we are updating the controller following the current spi transmission)
                    pid_update <= NUMBER_OF_MOTORS-1; 
                end else begin
                    pid_update <= motor-1;
                end
                update_controller <= 1; 
            end
            
            // if a frequency is requested, a delay counter makes sure the next motor cycle will be delayed accordingly
            if(update_frequency>0) begin
                if(spi_done_prev==0 && spi_done) begin
                    if(motor<(NUMBER_OF_MOTORS-1)) begin
                        motor <= motor + 1;
                        start_spi_transmission <= 1;
                    end
                end			
                if(delay_counter>0) begin
                    delay_counter <= delay_counter-1;
                end else begin
                    if(spi_done && motor>=(NUMBER_OF_MOTORS-1)) begin
                        motor <= 0;
                        delay_counter <= CLOCK_SPEED_HZ/update_frequency;
                        actual_update_frequency <= CLOCK_SPEED_HZ/counter;
                        counter <= 0;
                        start_spi_transmission <= 1; 
                    end
                end
            end else begin
                // update as fast as possible
                if(spi_done_prev==0 && spi_done) begin
                    start_spi_transmission <= 1;
                    if(motor<NUMBER_OF_MOTORS-1) begin
                        motor <= motor + 1;
                    end else begin
                        motor <= 0;
                        actual_update_frequency <= CLOCK_SPEED_HZ/counter;
                        counter <= 0;
                    end
                end
            end
        end
	  end
	end  
	
	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( address>>4 )
            8'h00: reg_data_out <= Kp[address[3:0]][31:0];
            8'h01: reg_data_out <= Ki[address[3:0]][31:0];
            8'h02: reg_data_out <= Kd[address[3:0]][31:0];
            8'h03: reg_data_out <= sp[address[3:0]][31:0];
            8'h04: reg_data_out <= outputPosMax[address[3:0]][31:0];
            8'h05: reg_data_out <= outputNegMax[address[3:0]][31:0];
            8'h06: reg_data_out <= IntegralPosMax[address[3:0]][31:0];
            8'h07: reg_data_out <= IntegralNegMax[address[3:0]][31:0];
            8'h08: reg_data_out <= deadBand[address[3:0]][31:0];
            8'h09: reg_data_out <= control_mode[address[3:0]][2:0];
            8'h0A: reg_data_out <= positions[address[3:0]][31:0];
            8'h0B: reg_data_out <= velocitys[address[3:0]][15:0];
            8'h0C: reg_data_out <= currents[address[3:0]][15:0];
            8'h0D: reg_data_out <= displacements[address[3:0]][31:0];
            8'h0E: reg_data_out <= pwmRefs[address[3:0]][0:15];
            8'h0F: reg_data_out <= actual_update_frequency;
            8'h10: reg_data_out <= (power_sense_n==0); // active low
            8'h11: reg_data_out <= motor_angle[address[3:0]][31:0];
            8'h12: reg_data_out <= myo_brick;
            8'h13: reg_data_out <= myo_brick_gear_box_ratio[address[3:0]][31:0];
            8'h14: reg_data_out <= myo_brick_encoder_multiplier[address[3:0]][31:0];
            8'h15: reg_data_out <= outputShifter[address[3:0]][31:0];
            8'h16: reg_data_out <= motor_angle_raw[address[3:0]][31:0];
            8'h17: reg_data_out <= motor_angle_prev[address[3:0]];
            8'h18: reg_data_out <= motor_angle_offset[address[3:0]];
            8'h19: reg_data_out <= motor_angle_counter[address[3:0]];
            default : reg_data_out <= 32'hDEADBEEF;
	      endcase
	end  
    
    // the pwmRef signal is wired to the active motor pid controller output
    assign pwmRef = pwmRefs[motor];
    
    // control logic for handling myocontrol frame
    SpiControl spi_control(
        .clock(S_AXI_ACLK),
        .reset(reset_myo_control),
        .di_req(di_req),
        .write_ack(wr_ack),
        .data_read_valid(do_valid),
        .data_read(data_out[15:0]),
        .start(spi_activated && start_spi_transmission),
        .Word(Word[0:15]),
        .wren(wren),
        .spi_done(spi_done),
        .pwmRef(pwmRef),
        .position(position),
        .velocity(velocity),
        .current(current),
        .displacement(displacement),
        .sensor1(sensor1),
        .sensor2(sensor2),
        .ss_n(ss_n)
    );
    
    // SPI specs: 2MHz, 16bit MSB, clock phase of 1
    spi_master #(16, 1'b0, 1'b1, 2, 5) spi(
        .sclk_i(S_AXI_ACLK),
        .pclk_i(S_AXI_ACLK),
        .rst_i(reset_myo_control),
        .spi_miso_i(miso),
        .di_i(Word[0:15]),
        .wren_i(wren),
        .spi_ssel_o(ss_n),
        .spi_sck_o(sck),
        .spi_mosi_o(mosi),
        .di_req_o(di_req),
        .wr_ack_o(wr_ack),
        .do_valid_o(do_valid),
        .do_o(data_out[15:0])
    );
    
    // PID controller for NUMBER_OF_MOTORS
    genvar j;
    generate 
        for(j=0; j<NUMBER_OF_MOTORS; j = j+1) begin : instantiate_pid_controllers
          PIDController pid_controller(
                .clock(S_AXI_ACLK),
                .reset(reset_myo_control||reset_controller[j]),
                .Kp(Kp[j]),
                .Kd(Kd[j]),
                .Ki(Ki[j]),
                .sp(sp[j]),
                .outputPosMax(outputPosMax[j]),
                .outputNegMax(outputNegMax[j]),
                .IntegralNegMax(IntegralNegMax[j]),
                .IntegralPosMax(IntegralPosMax[j]),
                .deadBand(deadBand[j]),
                .control_mode(control_mode[j]), // position velocity displacement current direct
                .position(positions[j]),
                .velocity(velocitys[j]),
                .displacement(displacements[j]),
                .current(currents[j]),
                .outputShifter(outputShifter[j]),
                .update_controller(pid_update==j && update_controller),
                .myo_brick(myo_brick[j]),
                .pwmRef(pwmRefs[j])
            );
            assign ss_n_o[j] = (motor==j?ss_n:1);
        end
    endgenerate 

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    
	endmodule
