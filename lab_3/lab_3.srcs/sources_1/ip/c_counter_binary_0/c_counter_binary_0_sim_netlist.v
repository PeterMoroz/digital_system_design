// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 13 17:06:49 2024
// Host        : peter-win7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/projects/digital_system_design/lab_3/lab_3.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_11 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_11
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_11_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
Y+L9i0YSRRTImhWHbAg7E25bIdAAxGMuR8RaEBPZ6/Wym8pfna5UBCt4OCKtQYmvj6jA8x9DiZpw
5yrqFz6ju/+eP/rHPbTOggdEKI5ntPcWi3o0N8bTadp8VLZEGLEsS9TOo5GLo5wDyHrD7nUwA+iE
8Dt0NAUUfr/VXOqvAvyAC5j8BHql5Ppf4Hlhp++DVjiTXGood67RScrGiFarc+psRVtRerwM8LEs
rpTuVE8t6s6r12utt6gA/HvsNQUF4ViMmK5H1iIDTj+hg+Uzu4iN85PWLUroYCfciXnTcdfRUMNE
WwDnsFcR4E/RCg/50R1HxMbJasAgzDEKcCBWow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UrmD9xTy/JiNLtfey2TpLG2sZE9vfF77K8Q51dv3xQgwWeAeVTcn2UjASR6afrpGuNemvvZpzDgz
gnGss8etuUAtIWMmW4D4OZvRue1q//oxrX7T806MregxeIzCY4c3YpDgGpZPiy21zRPLQX+6D9rR
6fpP4LSzVZDNXCIOClDMSH17G5LFlNFpjksVRMBlIb96BSoG+d5BGbjHVQ86e5m7yjbTsPY63Y2I
3Y9N5/rHfa02DYIhmjpfRUhYZH39C3ZwWfjYg4dLs4UN/jnG34ERP/hLn81oBfNufSepgMriDHgc
/O9FcSRJ3PT0yDg+KeX72fp3eD5Ko5r1MeVwpA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
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
E8a09HcsZuTylq+RD5g=
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
