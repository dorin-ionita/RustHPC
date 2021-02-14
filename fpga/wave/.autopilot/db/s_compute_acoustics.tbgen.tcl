set C_TypeInfoList {{ 
"s_compute_acoustics" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"result": [[],{ "pointer":  {"scalar": "double"}}] }],["0","1","2","3","4","5"],""],
 "0": [ "scenario", [[],"6"],""],
 "1": [ "ny", [[], {"scalar": "int"}],""],
 "2": [ "nx", [[], {"scalar": "int"}],""],
 "3": [ "gain", [[], {"scalar": "double"}],""],
 "4": [ "TIME_STEP", [[], {"scalar": "double"}],""],
 "5": [ "MAX_TIME", [[], {"scalar": "double"}],""], 
"6": [ "scenario_t", {"typedef": [[[],"7"],""]}], 
"7": [ "", {"struct": [[],[],[{ "nx": [[],  {"scalar": "int"}]},{ "ny": [[],  {"scalar": "int"}]},{ "SAVE_TIME": [[],  {"scalar": "int"}]},{ "nr_struct": [[],  {"scalar": "int"}]},{ "structure": [[],  {"array": ["8", [10]]}]},{ "source": [[192], "9"]},{ "H": [[],  {"scalar": "double"}]},{ "MAX_TIME": [[],  {"scalar": "double"}]},{ "TIME_STEP": [[],  {"scalar": "double"}]}],""]}], 
"9": [ "source_t", {"typedef": [[[],"10"],""]}], 
"10": [ "", {"struct": [[],[],[{ "x": [[],  {"scalar": "int"}]},{ "y": [[],  {"scalar": "int"}]},{ "radius": [[],  {"scalar": "int"}]},{ "p_amp": [[],  {"scalar": "double"}]}],""]}], 
"8": [ "structure_t", {"typedef": [[[],"11"],""]}], 
"11": [ "", {"struct": [[],[],[{ "c_points": [[],  {"array": [ {"scalar": "int"}, [4,2]]}]}],""]}]
}}
set moduleName s_compute_acoustics
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {s_compute_acoustics}
set C_modelType { void 0 }
set C_modelArgList {
	{ result double 64 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "result","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_result_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_result_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_result_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_result_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_result_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_result_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_result_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_result_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_result_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_result_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_result_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_result_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_result_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_result_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_result_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_result_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_result_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_result_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_result_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_result_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_result_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_result_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_result_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_result_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_result_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"s_compute_acoustics","role":"start","value":"0","valid_bit":"0"},{"name":"s_compute_acoustics","role":"continue","value":"0","valid_bit":"4"},{"name":"s_compute_acoustics","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"s_compute_acoustics","role":"start","value":"0","valid_bit":"0"},{"name":"s_compute_acoustics","role":"done","value":"0","valid_bit":"1"},{"name":"s_compute_acoustics","role":"idle","value":"0","valid_bit":"2"},{"name":"s_compute_acoustics","role":"ready","value":"0","valid_bit":"3"},{"name":"s_compute_acoustics","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_result_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "AWVALID" }} , 
 	{ "name": "m_axi_result_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "AWREADY" }} , 
 	{ "name": "m_axi_result_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "AWADDR" }} , 
 	{ "name": "m_axi_result_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "AWID" }} , 
 	{ "name": "m_axi_result_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result", "role": "AWLEN" }} , 
 	{ "name": "m_axi_result_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_result_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "AWBURST" }} , 
 	{ "name": "m_axi_result_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_result_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_result_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result", "role": "AWPROT" }} , 
 	{ "name": "m_axi_result_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "AWQOS" }} , 
 	{ "name": "m_axi_result_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "AWREGION" }} , 
 	{ "name": "m_axi_result_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "AWUSER" }} , 
 	{ "name": "m_axi_result_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "WVALID" }} , 
 	{ "name": "m_axi_result_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "WREADY" }} , 
 	{ "name": "m_axi_result_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result", "role": "WDATA" }} , 
 	{ "name": "m_axi_result_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result", "role": "WSTRB" }} , 
 	{ "name": "m_axi_result_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "WLAST" }} , 
 	{ "name": "m_axi_result_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "WID" }} , 
 	{ "name": "m_axi_result_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "WUSER" }} , 
 	{ "name": "m_axi_result_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ARVALID" }} , 
 	{ "name": "m_axi_result_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ARREADY" }} , 
 	{ "name": "m_axi_result_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "ARADDR" }} , 
 	{ "name": "m_axi_result_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ARID" }} , 
 	{ "name": "m_axi_result_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "result", "role": "ARLEN" }} , 
 	{ "name": "m_axi_result_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_result_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "ARBURST" }} , 
 	{ "name": "m_axi_result_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_result_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_result_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result", "role": "ARPROT" }} , 
 	{ "name": "m_axi_result_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "ARQOS" }} , 
 	{ "name": "m_axi_result_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "ARREGION" }} , 
 	{ "name": "m_axi_result_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ARUSER" }} , 
 	{ "name": "m_axi_result_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "RVALID" }} , 
 	{ "name": "m_axi_result_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "RREADY" }} , 
 	{ "name": "m_axi_result_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result", "role": "RDATA" }} , 
 	{ "name": "m_axi_result_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "RLAST" }} , 
 	{ "name": "m_axi_result_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "RID" }} , 
 	{ "name": "m_axi_result_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "RUSER" }} , 
 	{ "name": "m_axi_result_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "RRESP" }} , 
 	{ "name": "m_axi_result_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "BVALID" }} , 
 	{ "name": "m_axi_result_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "BREADY" }} , 
 	{ "name": "m_axi_result_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "BRESP" }} , 
 	{ "name": "m_axi_result_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "BID" }} , 
 	{ "name": "m_axi_result_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "s_compute_acoustics",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "result", "Type" : "MAXI", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "result_blk_n_AW", "Type" : "RtlSignal"},
			{"Name" : "result_blk_n_W", "Type" : "RtlSignal"},
			{"Name" : "result_blk_n_B", "Type" : "RtlSignal"}]},
		{"Name" : "ny", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "ny"},
			{"ID" : "29", "SubInstance" : "grp_on_edge_fu_1349", "Port" : "ny"}]},
		{"Name" : "nx", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "nx"},
			{"ID" : "29", "SubInstance" : "grp_on_edge_fu_1349", "Port" : "nx"}]},
		{"Name" : "scenario_nx", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "scenario_ny", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "scenario_H", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "scenario_MAX_TIME", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "scenario_TIME_STEP", "Type" : "Vld", "Direction" : "O"},
		{"Name" : "scenario_source_x", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "scenario_source_x"}]},
		{"Name" : "scenario_source_y", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "scenario_source_y"}]},
		{"Name" : "scenario_source_p_am", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "scenario_nr_struct", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "27", "SubInstance" : "grp_on_structure_corner_fu_1317", "Port" : "scenario_nr_struct"},
			{"ID" : "26", "SubInstance" : "grp_on_structure_edge_fu_1301", "Port" : "scenario_nr_struct"},
			{"ID" : "28", "SubInstance" : "grp_in_structure_fu_1333", "Port" : "scenario_nr_struct"}]},
		{"Name" : "scenario_source_radi", "Type" : "None", "Direction" : "I"},
		{"Name" : "MAX_TIME", "Type" : "None", "Direction" : "I"},
		{"Name" : "TIME_STEP", "Type" : "None", "Direction" : "I"},
		{"Name" : "hls_ref_4oPi_table_s", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "hls_ref_4oPi_table_s"}]},
		{"Name" : "hls_cordic_ctab_tab", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "7", "SubInstance" : "grp_pulse_source_fu_1280", "Port" : "hls_cordic_ctab_tab"}]},
		{"Name" : "scenario_structure_c", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "27", "SubInstance" : "grp_on_structure_corner_fu_1317", "Port" : "scenario_structure_c"},
			{"ID" : "26", "SubInstance" : "grp_on_structure_edge_fu_1301", "Port" : "scenario_structure_c"},
			{"ID" : "28", "SubInstance" : "grp_in_structure_fu_1333", "Port" : "scenario_structure_c"}]},
		{"Name" : "gain", "Type" : "None", "Direction" : "I"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pulse_source_fu_1280"},
		{"State" : "ap_ST_fsm_state318", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pulse_source_fu_1280"},
		{"State" : "ap_ST_fsm_state503", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pulse_source_fu_1280"},
		{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state248", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state372", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state433", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state557", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state618", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_edge_fu_1301"},
		{"State" : "ap_ST_fsm_state189", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state252", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state374", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state437", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state559", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state622", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_structure_corner_fu_1317"},
		{"State" : "ap_ST_fsm_state191", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_in_structure_fu_1333"},
		{"State" : "ap_ST_fsm_state376", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_in_structure_fu_1333"},
		{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_in_structure_fu_1333"},
		{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"},
		{"State" : "ap_ST_fsm_state231", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"},
		{"State" : "ap_ST_fsm_state323", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"},
		{"State" : "ap_ST_fsm_state416", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"},
		{"State" : "ap_ST_fsm_state508", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"},
		{"State" : "ap_ST_fsm_state601", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_on_edge_fu_1349"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scenario_structure_c_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustics_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustics_result_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ua_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ub_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uc_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280", "Parent" : "0", "Child" : ["8", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "pulse_source",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "radius", "Type" : "None", "Direction" : "I"},
		{"Name" : "step", "Type" : "None", "Direction" : "I"},
		{"Name" : "amp", "Type" : "None", "Direction" : "I"},
		{"Name" : "uc", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "ny", "Type" : "None", "Direction" : "I"},
		{"Name" : "nx", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_source_x", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_source_y", "Type" : "None", "Direction" : "I"},
		{"Name" : "hls_ref_4oPi_table_s", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "8", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119", "Port" : "hls_ref_4oPi_table_s"}]},
		{"Name" : "hls_cordic_ctab_tab", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "8", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119", "Port" : "hls_cordic_ctab_tab"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119", "Parent" : "7", "Child" : ["9", "10", "11", "15"],
		"CDFG" : "sin_cos_range_redux_s",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
		{"Name" : "hls_ref_4oPi_table_s", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "hls_cordic_ctab_tab", "Type" : "Memory", "Direction" : "I"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_big_mult_v3_94_17_s_fu_296"},
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_big_mult_v3small_fu_301"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.hls_ref_4oPi_table_s_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.hls_cordic_ctab_tab_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296", "Parent" : "8", "Child" : ["12", "13", "14"],
		"CDFG" : "big_mult_v3_94_17_s",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.pp_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.pps_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.s_compute_acoustig8j_U5", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301", "Parent" : "8", "Child" : ["16", "17", "18"],
		"CDFG" : "big_mult_v3small",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.pp_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.pps_V_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.s_compute_acoustidEe_U1", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustijbC_U12", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustikbM_U13", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustikbM_U14", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustilbW_U15", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustimb6_U16", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustimb6_U17", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pulse_source_fu_1280.s_compute_acoustincg_U18", "Parent" : "7"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_on_structure_edge_fu_1301", "Parent" : "0",
		"CDFG" : "on_structure_edge",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "x", "Type" : "None", "Direction" : "I"},
		{"Name" : "y", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_nr_struct", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_structure_c", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_on_structure_corner_fu_1317", "Parent" : "0",
		"CDFG" : "on_structure_corner",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "x", "Type" : "None", "Direction" : "I"},
		{"Name" : "y", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_nr_struct", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_structure_c", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_in_structure_fu_1333", "Parent" : "0",
		"CDFG" : "in_structure",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "x", "Type" : "None", "Direction" : "I"},
		{"Name" : "y", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_nr_struct", "Type" : "None", "Direction" : "I"},
		{"Name" : "scenario_structure_c", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_on_edge_fu_1349", "Parent" : "0",
		"CDFG" : "on_edge",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "x", "Type" : "None", "Direction" : "I"},
		{"Name" : "y", "Type" : "None", "Direction" : "I"},
		{"Name" : "nx", "Type" : "None", "Direction" : "I"},
		{"Name" : "ny", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustisc4_U43", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustikbM_x_U44", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustikbM_x_U45", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustitde_U46", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustilbW_x_U47", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustimb6_x_U48", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustimb6_x_U49", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustincg_x_U50", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustiudo_U51", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustivdy_U52", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustiwdI_U53", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustivdy_U54", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustiwdI_U55", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustivdy_U56", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustiwdI_U57", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	result { m_axi {  { m_axi_result_AWVALID VALID 1 1 }  { m_axi_result_AWREADY READY 0 1 }  { m_axi_result_AWADDR ADDR 1 32 }  { m_axi_result_AWID ID 1 1 }  { m_axi_result_AWLEN LEN 1 8 }  { m_axi_result_AWSIZE SIZE 1 3 }  { m_axi_result_AWBURST BURST 1 2 }  { m_axi_result_AWLOCK LOCK 1 2 }  { m_axi_result_AWCACHE CACHE 1 4 }  { m_axi_result_AWPROT PROT 1 3 }  { m_axi_result_AWQOS QOS 1 4 }  { m_axi_result_AWREGION REGION 1 4 }  { m_axi_result_AWUSER USER 1 1 }  { m_axi_result_WVALID VALID 1 1 }  { m_axi_result_WREADY READY 0 1 }  { m_axi_result_WDATA DATA 1 64 }  { m_axi_result_WSTRB STRB 1 8 }  { m_axi_result_WLAST LAST 1 1 }  { m_axi_result_WID ID 1 1 }  { m_axi_result_WUSER USER 1 1 }  { m_axi_result_ARVALID VALID 1 1 }  { m_axi_result_ARREADY READY 0 1 }  { m_axi_result_ARADDR ADDR 1 32 }  { m_axi_result_ARID ID 1 1 }  { m_axi_result_ARLEN LEN 1 8 }  { m_axi_result_ARSIZE SIZE 1 3 }  { m_axi_result_ARBURST BURST 1 2 }  { m_axi_result_ARLOCK LOCK 1 2 }  { m_axi_result_ARCACHE CACHE 1 4 }  { m_axi_result_ARPROT PROT 1 3 }  { m_axi_result_ARQOS QOS 1 4 }  { m_axi_result_ARREGION REGION 1 4 }  { m_axi_result_ARUSER USER 1 1 }  { m_axi_result_RVALID VALID 0 1 }  { m_axi_result_RREADY READY 1 1 }  { m_axi_result_RDATA DATA 0 64 }  { m_axi_result_RLAST LAST 0 1 }  { m_axi_result_RID ID 0 1 }  { m_axi_result_RUSER USER 0 1 }  { m_axi_result_RRESP RESP 0 2 }  { m_axi_result_BVALID VALID 0 1 }  { m_axi_result_BREADY READY 1 1 }  { m_axi_result_BRESP RESP 0 2 }  { m_axi_result_BID ID 0 1 }  { m_axi_result_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ result { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ result 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ result 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
