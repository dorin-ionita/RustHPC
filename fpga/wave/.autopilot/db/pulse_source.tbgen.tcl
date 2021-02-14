set moduleName pulse_source
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {pulse_source}
set C_modelType { void 0 }
set C_modelArgList {
	{ radius int 32 regular  }
	{ step int 32 regular  }
	{ amp double 64 regular  }
	{ uc double 64 regular {array 10000 { 0 3 } 0 1 }  }
	{ ny int 32 regular {pointer 0} {global 0}  }
	{ nx int 32 regular {pointer 0} {global 0}  }
	{ scenario_source_x int 32 regular {pointer 0} {global 0}  }
	{ scenario_source_y int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "radius", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "step", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "amp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "uc", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ny", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ny","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "nx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "scenario_source_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scenario.source.x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "scenario_source_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scenario.source.y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ radius sc_in sc_lv 32 signal 0 } 
	{ step sc_in sc_lv 32 signal 1 } 
	{ amp sc_in sc_lv 64 signal 2 } 
	{ uc_address0 sc_out sc_lv 14 signal 3 } 
	{ uc_ce0 sc_out sc_logic 1 signal 3 } 
	{ uc_we0 sc_out sc_logic 1 signal 3 } 
	{ uc_d0 sc_out sc_lv 64 signal 3 } 
	{ ny sc_in sc_lv 32 signal 4 } 
	{ nx sc_in sc_lv 32 signal 5 } 
	{ scenario_source_x sc_in sc_lv 32 signal 6 } 
	{ scenario_source_y sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "radius", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "radius", "role": "default" }} , 
 	{ "name": "step", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "step", "role": "default" }} , 
 	{ "name": "amp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "amp", "role": "default" }} , 
 	{ "name": "uc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "uc", "role": "address0" }} , 
 	{ "name": "uc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uc", "role": "ce0" }} , 
 	{ "name": "uc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uc", "role": "we0" }} , 
 	{ "name": "uc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "uc", "role": "d0" }} , 
 	{ "name": "ny", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ny", "role": "default" }} , 
 	{ "name": "nx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nx", "role": "default" }} , 
 	{ "name": "scenario_source_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scenario_source_x", "role": "default" }} , 
 	{ "name": "scenario_source_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scenario_source_y", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12", "13", "14", "15", "16", "17", "18"],
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
			{"ID" : "1", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119", "Port" : "hls_ref_4oPi_table_s"}]},
		{"Name" : "hls_cordic_ctab_tab", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119", "Port" : "hls_cordic_ctab_tab"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_cos_range_redux_s_fu_119"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119", "Parent" : "0", "Child" : ["2", "3", "4", "8"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.hls_ref_4oPi_table_s_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.hls_cordic_ctab_tab_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296", "Parent" : "1", "Child" : ["5", "6", "7"],
		"CDFG" : "big_mult_v3_94_17_s",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.pp_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.pps_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3_94_17_s_fu_296.s_compute_acoustig8j_U5", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301", "Parent" : "1", "Child" : ["9", "10", "11"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.pp_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.pps_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_cos_range_redux_s_fu_119.grp_big_mult_v3small_fu_301.s_compute_acoustidEe_U1", "Parent" : "8"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustijbC_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustikbM_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustikbM_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustilbW_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustimb6_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustimb6_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_compute_acoustincg_U18", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set Spec2ImplPortList { 
	radius { ap_none {  { radius in_data 0 32 } } }
	step { ap_none {  { step in_data 0 32 } } }
	amp { ap_none {  { amp in_data 0 64 } } }
	uc { ap_memory {  { uc_address0 mem_address 1 14 }  { uc_ce0 mem_ce 1 1 }  { uc_we0 mem_we 1 1 }  { uc_d0 mem_din 1 64 } } }
	ny { ap_none {  { ny in_data 0 32 } } }
	nx { ap_none {  { nx in_data 0 32 } } }
	scenario_source_x { ap_none {  { scenario_source_x in_data 0 32 } } }
	scenario_source_y { ap_none {  { scenario_source_y in_data 0 32 } } }
}
