
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 11:39:37 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module tut0 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;

always @(posedge m_clock)
  begin
    if(1'b1)
    begin
    $display("Hello World");
    end
  end
always @(posedge m_clock)
  begin
    if(1'b1)
    begin
    $finish;
    end
  end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 11:39:37 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 11:39:37 2016
 Licensed to :EVALUATION USER:
*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg p_reset;
	reg m_clock;

	tut0 tut0_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("tut0.vcd");
		$dumpvars(0,tut0_instance);
	end

	initial begin
		#(tPD)
			p_reset = 1;
			m_clock = 0;
		#(tCYC)
			p_reset = 0;
	end

endmodule

//synthesis translate_on
