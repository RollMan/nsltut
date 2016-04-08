`timescale 1ps/1ps

module testbench();
  reg p_reset, m_clock, RDX;
  wire[7:0] LEDR;

  serial_r serial_r_instance(p_reset, m_clock, RDX, LEDR);

  parameter OSC50M_PERIOD = 20000;  //ps
  parameter SERIALCLOCK_PERIOD = 104166666; //ps

  initial begin
  $dumpfile("testbench.vcd");
  $dumpvars(0, testbench);
  m_clock <= 0;
  p_reset <= 1;
  RDX <= 1;
  #200

  // 1 / 9600bps = 104us
  //Start to send 8bit data
  //Start bit
  RDX <= 0;
  #SERIALCLOCK_PERIOD
  //Data bit
  RDX <= 1;
  #SERIALCLOCK_PERIOD
  //finish bit
  RDX <= 1;
  #SERIALCLOCK_PERIOD
  #100
  $finish;
  end

  always #(OSC50M_PERIOD/2) begin
    m_clock <= ~m_clock;
  end
endmodule
