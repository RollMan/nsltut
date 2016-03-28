
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 18:21:19 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module test02 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] a;
  reg [3:0] loop;
  reg f;
  wire start;
  wire [3:0] _net_2;
  wire _net_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  wire _net_8;
  wire _reg_5_goto;
  wire _reg_4_goin;
  wire _net_9;
  wire _reg_5_goin;

always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(test02:start) at %d",$time);
 end
#1 if (((_net_3)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_3 || 1'b1) line 11 at %d\n",$time);
 end
   assign  start = _net_3;
   assign  _net_2 = ((_reg_5&(~_net_8)))? (((_reg_5&(~_net_8)))?(loop+4'b0001):4'b0):4'bx;
   assign  _net_3 = (f==1'b0);
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $finish;
    end
  end
   assign  _net_8 = (_reg_5)? ((_reg_5)?(~(loop < 4'b1000)):1'b0):1'bx;
always @(posedge _reg_5_goto)
  begin
#1 if (_reg_5_goto===1'bx)
 begin
$display("Warning: control hazard(test02:_reg_5_goto) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_8))&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_8))&_net_9) || 1'b1) line 18 at %d\n",$time);
#1 if ((((_reg_5&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_8) || 1'b1) line 18 at %d\n",$time);
 end
   assign  _reg_5_goto = ((_reg_5&(~_net_8))&_net_9)|
    (_reg_5&_net_8);
always @(posedge _reg_4_goin)
  begin
#1 if (_reg_4_goin===1'bx)
 begin
$display("Warning: control hazard(test02:_reg_4_goin) at %d",$time);
 end
#1 if ((((_reg_5&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_5&_net_8) || 1'b1) line 18 at %d\n",$time);
 end
   assign  _reg_4_goin = (_reg_5&_net_8);
   assign  _net_9 = ((_reg_5&(~_net_8)))? (((_reg_5&(~_net_8)))?(_net_2 < 4'b1000):1'b0):1'bx;
always @(posedge _reg_5_goin)
  begin
#1 if (_reg_5_goin===1'bx)
 begin
$display("Warning: control hazard(test02:_reg_5_goin) at %d",$time);
 end
#1 if (((((_reg_5&(~_net_8))&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard (((_reg_5&(~_net_8))&_net_9) || 1'b1) line 18 at %d\n",$time);
 end
   assign  _reg_5_goin = ((_reg_5&(~_net_8))&_net_9);
always @(posedge m_clock)
  begin
    if((_reg_5&(~_net_8)))
    begin
    $display("%d",(a[loop]));
    end
  end
always @(posedge m_clock)
  begin
if (_net_3)
      a <= 8'b00101111;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     loop <= 4'b0000;
else if (((start|_reg_6)&(_reg_5&(~_net_8))))   loop <= 4'bx; 
  else if ((start|_reg_6))
      loop <= 4'b0000;
else if ((_reg_5&(~_net_8)))
      loop <= _net_2;
end
always @(posedge m_clock)
  begin
if ((((start|_reg_6)|(_reg_5&(~_net_8)))==1'b1) ||
 (((start|_reg_6)|(_reg_5&(~_net_8)))==1'b0) ) begin
 if (((start|_reg_6)&(_reg_5&(~_net_8))))
 begin $display("Warning: assign collision(test02:loop) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(test02:loop) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     f <= 1'b0;
else if (_net_3)
      f <= 1'b1;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if (((_reg_5&_net_8)|(_reg_4|_reg_5)))
      _reg_4 <= ((_reg_5&_net_8)|(_reg_5&(~_reg_5_goto)));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if (((((_reg_5&(~_net_8))&_net_9)|start)|(_reg_5|_reg_6)))
      _reg_5 <= ((((_reg_5&(~_net_8))&_net_9)|_reg_6)|start);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if (_reg_6)
      _reg_6 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 18:21:19 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 18:21:19 2016
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

	test02 test02_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("test02.vcd");
		$dumpvars(0,test02_instance);
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
