// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Aug 27 16:24:45 2018
// Host        : b1409dewei running 64-bit Linux Mint 19 Tara
// Command     : write_verilog -force -mode funcsim
//               /media/b1409_dewei/WorkDisk/WorkSpace/zedBoard/cnt/cnt.srcs/sources_1/bd/design_1/ip/design_1_cnt_0_0/design_1_cnt_0_0_sim_netlist.v
// Design      : design_1_cnt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cnt_0_0,cnt,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cnt,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_cnt_0_0
   (reset,
    btn,
    and_out,
    cnt_val,
    null_port,
    high_port,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input [1:0]btn;
  output and_out;
  output [3:0]cnt_val;
  output null_port;
  output high_port;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_in" *) input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire and_out;
  wire [1:0]btn;
  wire clk;
  wire [3:0]cnt_val;
  wire reset;

  assign high_port = \<const1> ;
  assign null_port = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    and_out_INST_0
       (.I0(btn[1]),
        .I1(btn[0]),
        .O(and_out));
  design_1_cnt_0_0_cnt inst
       (.Q(cnt_val),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "cnt" *) 
module design_1_cnt_0_0_cnt
   (Q,
    clk,
    reset);
  output [3:0]Q;
  input clk;
  input reset;

  wire [3:0]Q;
  wire clk;
  wire \cnt_buf[0]_i_1_n_0 ;
  wire \cnt_buf[1]_i_1_n_0 ;
  wire \cnt_buf[2]_i_1_n_0 ;
  wire \cnt_buf[3]_i_1_n_0 ;
  wire \cnt_buf[3]_i_2_n_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cnt_buf[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\cnt_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \cnt_buf[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\cnt_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_buf[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\cnt_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \cnt_buf[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\cnt_buf[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_buf[3]_i_2 
       (.I0(reset),
        .O(\cnt_buf[3]_i_2_n_0 ));
  FDCE \cnt_buf_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \cnt_buf_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \cnt_buf_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \cnt_buf_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[3]_i_1_n_0 ),
        .Q(Q[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
