// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 13 17:11:50 2024
// Host        : peter-win7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/projects/digital_system_design/lab_3/lab_3.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_11 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_11
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_11_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dawRtZgKutf3owYBB7ErHe2rSvIkmkPIfI9mJPs/hCoWjC1Tiq0gIbWd14mg+P0YYzEMlAETqjKh
2GXHeHg7q+i14mr2pu71Cb4FdpbaJDB/SeaW3Th2YiABLAx06Voac8IzL41GIfXMCetW7bKwoKuM
Y+LRVwqUnPWZNmibD8TYhsKmYfHMvYR1SK8cdTCAPm3GumtKkSi4Pk/GVSVqaaL/ZT2Fr0NXgbmx
1nC83aLFJnCnGCjROojUmV7eO13tgwlXfUidD8GALJtaLZr0exFXIC/fsaqJswTKQ1JrSx+bwKFl
SCiAPKicOVb2I09H2MaEC/f0L9n6AQkl+6XhQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZdAboYSzUVLJDQa7+ltnCM4QUCKy+Gy+FEtMloxW+BBaYZtgKBPKweetaLqCDe6tupLT2Bkuau0n
4+Z6LMs2vTawfyocNl1uMTbBKZjT5WKghItwf+l0K2avfATB6d6w/3rUstG3pNFCGnMCDZT09Xv0
h8v7SiX82zGw3QUu3vrWxqDOVaY+hAB9LfD7fc+i7b4T4Gy4otB4Nn8tWTrIlga5IW7YeZKrYj3f
MCmWox5I+oNr9UgG3gszhq+iksocLPO6Pk7Kk/fKEqU3t12Her1EzIuic/5to8l30R0wxU4ukOUj
LW7mNaiPxksVN95y/wUGCjNdOmBAvSOR9zdJvA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7840)
`pragma protect data_block
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
`pragma protect end_protected
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
