
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:06:33 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module test01 ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [7:0] r;
  reg [7:0] a;
  reg b;
  reg start;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _net_0;
  reg _reg_1;
  reg _reg_2;
  reg _reg_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  reg _reg_7;

always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(test01:_proc_start_set) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 10 at %d\n",$time);
 end
   assign  _proc_start_set = _net_0;
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(test01:_proc_start_reset) at %d",$time);
 end
#1 if ((((_reg_1&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_1&start) || 1'b1) line 24 at %d\n",$time);
 end
   assign  _proc_start_reset = (_reg_1&start);
   assign  _net_0 = (r==8'b00000000);
always @(posedge m_clock)
  begin
    if((_reg_2&start))
    begin
    $display("%d",a);
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_4&start))
    begin
    $display("%d",a);
    end
  end
always @(posedge m_clock)
  begin
    if((_reg_6&start))
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
if ((((start&_reg_7)&(_reg_5&start))|(((start&_reg_7)|(_reg_5&start))&(_reg_3&start))))   a <= 8'bx; 
  else if ((start&_reg_7))
      a <= 8'b00000000;
else if ((_reg_5&start))
      a <= 8'b00001010;
else if ((_reg_3&start))
      a <= (a>>1);
end
always @(posedge m_clock)
  begin
if (((((start&_reg_7)|(_reg_5&start))|(_reg_3&start))==1'b1) ||
 ((((start&_reg_7)|(_reg_5&start))|(_reg_3&start))==1'b0) ) begin
 if ((((start&_reg_7)&(_reg_5&start))|(((start&_reg_7)|(_reg_5&start))&(_reg_3&start))))
 begin $display("Warning: assign collision(test01:a) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(test01:a) at %d",$time);

  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     b <= 1'b0;
else   b <= (~b);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     start <= 1'b0;
else if ((_proc_start_set|_proc_start_reset))
      start <= _proc_start_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if ((_proc_start_reset|(_reg_1|_reg_2)))
      _reg_1 <= (_reg_2&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if ((_proc_start_reset|(_reg_2|_reg_3)))
      _reg_2 <= (_reg_3&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((_proc_start_reset|(_reg_3|_reg_4)))
      _reg_3 <= (_reg_4&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if ((_proc_start_reset|(_reg_4|_reg_5)))
      _reg_4 <= (_reg_5&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if ((_proc_start_reset|(_reg_5|_reg_6)))
      _reg_5 <= (_reg_6&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if ((_proc_start_reset|(_reg_7|(_reg_6|_reg_7))))
      _reg_6 <= (_reg_7&(~_proc_start_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_7 <= 1'b0;
else if (((_proc_start_set|_proc_start_reset)|_reg_7))
      _reg_7 <= _proc_start_set;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:06:33 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Mon Mar 28 13:06:33 2016
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

	test01 test01_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("test01.vcd");
		$dumpvars(0,test01_instance);
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
