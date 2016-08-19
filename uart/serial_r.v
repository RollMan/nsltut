/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 16:31:36 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module serial_r ( p_reset , m_clock , RDX , DATA , launch , complete );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input RDX;
  wire RDX;
  output [7:0] DATA;
  wire [7:0] DATA;
  input launch;
  wire launch;
  output complete;
  wire complete;
  reg [7:0] data;
  reg [3:0] received_bit;
  reg [15:0] cnt;
  reg start;
  reg receive;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _proc_receive_set;
  wire _proc_receive_reset;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;


// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_start_set) at %d",$time);
 end
#1 if ((((launch&_net_0))===1'bx) || (1'b1)===1'bx) $display("hazard ((launch&_net_0) || 1'b1) line 26 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_set = (launch&_net_0);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_start_reset) at %d",$time);
 end
#1 if (((((start&_net_1)&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard (((start&_net_1)&_net_3) || 1'b1) line 35 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_reset = ((start&_net_1)&_net_3);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_set)
  begin
#1 if (_proc_receive_set===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_set) at %d",$time);
 end
#1 if (((((start&_net_1)&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard (((start&_net_1)&_net_3) || 1'b1) line 35 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_set = ((start&_net_1)&_net_3);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_receive_reset)
  begin
#1 if (_proc_receive_reset===1'bx)
 begin
$display("Warning: control hazard(serial_r:_proc_receive_reset) at %d",$time);
 end
#1 if (((((receive&_net_6)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((receive&_net_6)&_net_7) || 1'b1) line 53 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_receive_reset = ((receive&_net_6)&_net_7);
   assign  _net_0 = 
// synthesis translate_off
// synopsys translate_off
(launch)? 
// synthesis translate_on
// synopsys translate_on
((launch)?((~start)&(~receive)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(RDX==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
((start&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((start&_net_1))?(cnt != 16'b0000011110011110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
((start&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((start&_net_1))?(cnt==16'b0000011110011110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(RDX==1'b1):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(receive)? 
// synthesis translate_on
// synopsys translate_on
((receive)?(cnt != 16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(receive)? 
// synthesis translate_on
// synopsys translate_on
((receive)?(cnt==16'b0001010001010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
((receive&_net_6))? 
// synthesis translate_on
// synopsys translate_on
(((receive&_net_6))?(received_bit==4'b1000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  DATA = 
// synthesis translate_off
// synopsys translate_off
(((receive&_net_6)&_net_7))? 
// synthesis translate_on
// synopsys translate_on
((((receive&_net_6)&_net_7))?data:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge complete)
  begin
#1 if (complete===1'bx)
 begin
$display("Warning: control hazard(serial_r:complete) at %d",$time);
 end
#1 if (((((receive&_net_6)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((receive&_net_6)&_net_7) || 1'b1) line 52 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  complete = ((receive&_net_6)&_net_7);
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     data <= 8'b00000000;
else if ((receive&_net_6))
      data <= ({(data[6:0]),RDX});
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     received_bit <= 4'b0000;
else if ((receive&_net_6))
      received_bit <= (received_bit+4'b0001);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((receive&_net_6)&(receive&_net_5))|(((receive&_net_6)|(receive&_net_5))&(start&_net_4)))|((((receive&_net_6)|(receive&_net_5))|(start&_net_4))&((start&_net_1)&_net_3)))|(((((receive&_net_6)|(receive&_net_5))|(start&_net_4))|((start&_net_1)&_net_3))&((start&_net_1)&_net_2))))   cnt <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((receive&_net_6))
      cnt <= 16'b0000000000000000;
else if ((receive&_net_5))
      cnt <= (cnt+16'b0000000000000001);
else if ((start&_net_4))
      cnt <= 16'b0000000000000000;
else if (((start&_net_1)&_net_3))
      cnt <= 16'b0000000000000000;
else if (((start&_net_1)&_net_2))
      cnt <= (cnt+16'b0000000000000001);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((receive&_net_6)|(receive&_net_5))|(start&_net_4))|((start&_net_1)&_net_3))|((start&_net_1)&_net_2))==1'b1) ||
 ((((((receive&_net_6)|(receive&_net_5))|(start&_net_4))|((start&_net_1)&_net_3))|((start&_net_1)&_net_2))==1'b0) ) begin
 if ((((((receive&_net_6)&(receive&_net_5))|(((receive&_net_6)|(receive&_net_5))&(start&_net_4)))|((((receive&_net_6)|(receive&_net_5))|(start&_net_4))&((start&_net_1)&_net_3)))|(((((receive&_net_6)|(receive&_net_5))|(start&_net_4))|((start&_net_1)&_net_3))&((start&_net_1)&_net_2))))
 begin $display("Warning: assign collision(serial_r:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(serial_r:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
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
     receive <= 1'b0;
else if ((_proc_receive_set|_proc_receive_reset))
      receive <= _proc_receive_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Fri Aug 19 16:31:36 2016
 Licensed to :EVALUATION USER
*/
