
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 12:09:43 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module countup ( p_reset , m_clock , current , value , cntup );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] current;
  wire [31:0] current;
  output [31:0] value;
  wire [31:0] value;
  input cntup;
  wire cntup;
  wire [31:0] res;

   assign  res = 
// synthesis translate_off
// synopsys translate_off
(cntup)? 
// synthesis translate_on
// synopsys translate_on
((cntup)?(current+32'b00000000000000000000000000000001):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  value = 
// synthesis translate_off
// synopsys translate_off
(cntup)? 
// synthesis translate_on
// synopsys translate_on
((cntup)?res:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
endmodule
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 12:09:43 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 12:09:43 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module counter ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [31:0] cnt;
  wire [31:0] cnt_w;
  wire [31:0] _countup_ins_current;
  wire [31:0] _countup_ins_value;
  wire _countup_ins_cntup;
  wire _net_1;
countup countup_ins (.p_reset(p_reset), .m_clock(m_clock), .cntup(_countup_ins_cntup), .value(_countup_ins_value), .current(_countup_ins_current));

   assign  cnt_w = cnt;
   assign  _countup_ins_current = cnt_w;
always @(posedge _countup_ins_cntup)
  begin
#1 if (_countup_ins_cntup===1'bx)
 begin
$display("Warning: control hazard(counter:_countup_ins_cntup) at %d",$time);
 end
#1 if (((1'b1)===1'bx) || (1'b1)===1'bx) $display("hazard (1'b1 || 1'b1) line 23 at %d\n",$time);
 end
   assign  _countup_ins_cntup = 1'b1;
always @(posedge m_clock)
  begin
    if(1'b1)
    begin
    $display("%d",cnt);
    end
  end
   assign  _net_1 = (cnt >= 32'b00000000000000000000000001000110);
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $display("BYE");
    end
  end
always @(posedge m_clock)
  begin
    if(_net_1)
    begin
    $finish;
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 32'b00000000000000000000000000000000;
else   cnt <= _countup_ins_value;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 12:09:43 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20150929), IP ARCH, Inc. Tue Mar 15 12:09:43 2016
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

	counter counter_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("counter.vcd");
		$dumpvars(0,counter_instance);
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
