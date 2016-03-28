
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:05:26 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module test ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] r;
  reg [7:0] a;
  wire start;
  wire _net_0;
  reg _reg_1;
  reg _reg_2;
  reg _reg_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  reg _reg_7;

always @(posedge start)
  begin
#1 if (start===1'bx)
 begin
$display("Warning: control hazard(test:start) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 9 at %d\n",$time);
 end
   assign  start = _net_0;
   assign  _net_0 = (r==8'b00000000);
always @(posedge m_clock)
  begin
    if(_reg_1)
    begin
    $finish;
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_2)
    begin
    $display("%d",a);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $display("%d",a);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_6)
    begin
    $display("%d",a);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     r <= 8'b00000000;
else if (_net_0)
      r <= 8'b00001010;
end
always @(posedge m_clock)
  begin
if ((((start|_reg_7)&_reg_5)|(((start|_reg_7)|_reg_5)&_reg_3)))   a <= 8'bx; 
  else if ((start|_reg_7))
      a <= 8'b00000000;
else if (_reg_5)
      a <= 8'b00001010;
else if (_reg_3)
      a <= (a>>1);
end
always @(posedge m_clock)
  begin
if (((((start|_reg_7)|_reg_5)|_reg_3)==1'b1) ||
 ((((start|_reg_7)|_reg_5)|_reg_3)==1'b0) ) begin
 if ((((start|_reg_7)&_reg_5)|(((start|_reg_7)|_reg_5)&_reg_3)))
 begin $display("Warning: assign collision(test:a) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(test:a) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if ((_reg_1|_reg_2))
      _reg_1 <= _reg_2;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if ((_reg_2|_reg_3))
      _reg_2 <= _reg_3;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((_reg_3|_reg_4))
      _reg_3 <= _reg_4;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if ((_reg_4|_reg_5))
      _reg_4 <= _reg_5;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if ((_reg_5|_reg_6))
      _reg_5 <= _reg_6;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if ((start|(_reg_6|_reg_7)))
      _reg_6 <= (_reg_7|start);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_7 <= 1'b0;
else if (_reg_7)
      _reg_7 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:05:26 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:05:26 2016
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

	test test_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("test.vcd");
		$dumpvars(0,test_instance);
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
