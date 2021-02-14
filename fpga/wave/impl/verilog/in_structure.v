// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module in_structure (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        y,
        scenario_nr_struct,
        scenario_structure_c_address0,
        scenario_structure_c_ce0,
        scenario_structure_c_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'b1;
parameter    ap_ST_fsm_state2 = 6'b10;
parameter    ap_ST_fsm_state3 = 6'b100;
parameter    ap_ST_fsm_state4 = 6'b1000;
parameter    ap_ST_fsm_state5 = 6'b10000;
parameter    ap_ST_fsm_state6 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv31_0 = 31'b0000000000000000000000000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv31_1 = 31'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv34_6 = 34'b110;
parameter    ap_const_lv30_0 = 30'b000000000000000000000000000000;
parameter    ap_const_lv34_1 = 34'b1;
parameter    ap_const_lv34_3 = 34'b11;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] x;
input  [31:0] y;
input  [31:0] scenario_nr_struct;
output  [6:0] scenario_structure_c_address0;
output   scenario_structure_c_ce0;
input  [31:0] scenario_structure_c_q0;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] scenario_structure_c_address0;
reg scenario_structure_c_ce0;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [0:0] tmp_fu_110_p2;
reg   [0:0] tmp_reg_216;
wire   [0:0] ap_CS_fsm_state2;
wire   [30:0] i_8_fu_115_p2;
reg   [30:0] i_8_reg_220;
reg   [6:0] scenario_structure_c_34_reg_230;
reg   [6:0] scenario_structure_c_35_reg_235;
reg   [6:0] scenario_structure_c_36_reg_240;
wire   [0:0] tmp_160_fu_179_p2;
reg   [0:0] tmp_160_reg_245;
wire   [0:0] ap_CS_fsm_state3;
wire   [0:0] tmp_161_fu_184_p2;
reg   [0:0] tmp_161_reg_249;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] tmp_162_fu_189_p2;
reg   [0:0] tmp_162_reg_253;
wire   [0:0] ap_CS_fsm_state5;
reg   [30:0] i_reg_79;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] tmp_163_fu_194_p2;
reg   [0:0] p_0_phi_fu_94_p4;
reg   [0:0] p_0_reg_90;
wire   [63:0] tmp_283_fu_129_p1;
wire   [63:0] tmp_285_fu_140_p3;
wire   [63:0] tmp_287_fu_155_p3;
wire   [63:0] tmp_289_fu_170_p3;
wire   [31:0] i_cast_fu_106_p1;
wire   [33:0] tmp_s_fu_121_p3;
wire   [33:0] tmp_284_fu_134_p2;
wire   [33:0] tmp_286_fu_149_p2;
wire   [33:0] tmp_288_fu_164_p2;
reg   [0:0] ap_return_preg;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
#0 ap_return_preg = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & ((tmp_reg_216 == 1'b0) | (~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253))))) begin
            ap_return_preg <= p_0_phi_fu_94_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((~(tmp_reg_216 == 1'b0) & (1'b0 == tmp_160_reg_245)) | (~(tmp_reg_216 == 1'b0) & (1'b0 == tmp_161_reg_249)) | (~(tmp_reg_216 == 1'b0) & (1'b0 == tmp_162_reg_253)) | (~(tmp_reg_216 == 1'b0) & (1'b0 == tmp_163_fu_194_p2))))) begin
        i_reg_79 <= i_8_reg_220;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_reg_79 <= ap_const_lv31_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~(tmp_reg_216 == 1'b0) & ~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253))) begin
        p_0_reg_90 <= 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_110_p2 == 1'b0))) begin
        p_0_reg_90 <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_8_reg_220 <= i_8_fu_115_p2;
        tmp_reg_216 <= tmp_fu_110_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_110_p2 == 1'b0))) begin
        scenario_structure_c_34_reg_230[6 : 3] <= tmp_285_fu_140_p3[6 : 3];
        scenario_structure_c_35_reg_235[6 : 3] <= tmp_287_fu_155_p3[6 : 3];
        scenario_structure_c_36_reg_240[6 : 3] <= tmp_289_fu_170_p3[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_160_reg_245 <= tmp_160_fu_179_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_161_reg_249 <= tmp_161_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_162_reg_253 <= tmp_162_fu_189_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state6) & ((tmp_reg_216 == 1'b0) | (~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253)))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((tmp_reg_216 == 1'b0) | (~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((tmp_reg_216 == 1'b0) | (~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253))))) begin
        ap_return = p_0_phi_fu_94_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~(tmp_reg_216 == 1'b0) & ~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253))) begin
        p_0_phi_fu_94_p4 = 1'b1;
    end else begin
        p_0_phi_fu_94_p4 = p_0_reg_90;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        scenario_structure_c_address0 = scenario_structure_c_36_reg_240;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        scenario_structure_c_address0 = scenario_structure_c_35_reg_235;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        scenario_structure_c_address0 = scenario_structure_c_34_reg_230;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        scenario_structure_c_address0 = tmp_283_fu_129_p1;
    end else begin
        scenario_structure_c_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        scenario_structure_c_ce0 = 1'b1;
    end else begin
        scenario_structure_c_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((tmp_fu_110_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((1'b0 == tmp_160_fu_179_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((1'b0 == tmp_161_fu_184_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_reg_216 == 1'b0) | (~(1'b0 == tmp_163_fu_194_p2) & ~(1'b0 == tmp_160_reg_245) & ~(1'b0 == tmp_161_reg_249) & ~(1'b0 == tmp_162_reg_253)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign i_8_fu_115_p2 = (i_reg_79 + ap_const_lv31_1);

assign i_cast_fu_106_p1 = i_reg_79;

assign tmp_160_fu_179_p2 = (($signed(scenario_structure_c_q0) < $signed(x)) ? 1'b1 : 1'b0);

assign tmp_161_fu_184_p2 = (($signed(scenario_structure_c_q0) > $signed(x)) ? 1'b1 : 1'b0);

assign tmp_162_fu_189_p2 = (($signed(scenario_structure_c_q0) < $signed(y)) ? 1'b1 : 1'b0);

assign tmp_163_fu_194_p2 = (($signed(scenario_structure_c_q0) > $signed(y)) ? 1'b1 : 1'b0);

assign tmp_283_fu_129_p1 = tmp_s_fu_121_p3;

assign tmp_284_fu_134_p2 = (tmp_s_fu_121_p3 | ap_const_lv34_6);

assign tmp_285_fu_140_p3 = {{ap_const_lv30_0}, {tmp_284_fu_134_p2}};

assign tmp_286_fu_149_p2 = (tmp_s_fu_121_p3 | ap_const_lv34_1);

assign tmp_287_fu_155_p3 = {{ap_const_lv30_0}, {tmp_286_fu_149_p2}};

assign tmp_288_fu_164_p2 = (tmp_s_fu_121_p3 | ap_const_lv34_3);

assign tmp_289_fu_170_p3 = {{ap_const_lv30_0}, {tmp_288_fu_164_p2}};

assign tmp_fu_110_p2 = (($signed(i_cast_fu_106_p1) < $signed(scenario_nr_struct)) ? 1'b1 : 1'b0);

assign tmp_s_fu_121_p3 = {{i_reg_79}, {ap_const_lv3_0}};

always @ (posedge ap_clk) begin
    scenario_structure_c_34_reg_230[2:0] <= 3'b110;
    scenario_structure_c_35_reg_235[2:0] <= 3'b001;
    scenario_structure_c_36_reg_240[2:0] <= 3'b011;
end

endmodule //in_structure
