// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module on_structure_edge (
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

parameter    ap_ST_fsm_state1 = 14'b1;
parameter    ap_ST_fsm_state2 = 14'b10;
parameter    ap_ST_fsm_state3 = 14'b100;
parameter    ap_ST_fsm_state4 = 14'b1000;
parameter    ap_ST_fsm_state5 = 14'b10000;
parameter    ap_ST_fsm_state6 = 14'b100000;
parameter    ap_ST_fsm_state7 = 14'b1000000;
parameter    ap_ST_fsm_state8 = 14'b10000000;
parameter    ap_ST_fsm_state9 = 14'b100000000;
parameter    ap_ST_fsm_state10 = 14'b1000000000;
parameter    ap_ST_fsm_state11 = 14'b10000000000;
parameter    ap_ST_fsm_state12 = 14'b100000000000;
parameter    ap_ST_fsm_state13 = 14'b1000000000000;
parameter    ap_ST_fsm_state14 = 14'b10000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv31_0 = 31'b0000000000000000000000000000000;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv31_1 = 31'b1;
parameter    ap_const_lv34_1 = 34'b1;
parameter    ap_const_lv30_0 = 30'b000000000000000000000000000000;
parameter    ap_const_lv34_2 = 34'b10;
parameter    ap_const_lv34_3 = 34'b11;
parameter    ap_const_lv34_4 = 34'b100;
parameter    ap_const_lv34_6 = 34'b110;
parameter    ap_const_lv34_7 = 34'b111;
parameter    ap_const_lv34_5 = 34'b101;
parameter    ap_const_lv32_D = 32'b1101;

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
output  [2:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] scenario_structure_c_address0;
reg scenario_structure_c_ce0;
reg[2:0] ap_return;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [30:0] i_6_fu_194_p2;
reg   [30:0] i_6_reg_348;
wire   [0:0] ap_CS_fsm_state2;
wire   [33:0] tmp_s_fu_200_p3;
reg   [33:0] tmp_s_reg_353;
wire   [0:0] tmp_fu_189_p2;
reg   [6:0] scenario_structure_c_1_reg_369;
wire   [0:0] ap_CS_fsm_state3;
reg   [6:0] scenario_structure_c_2_reg_374;
reg   [6:0] scenario_structure_c_3_reg_379;
reg   [6:0] scenario_structure_c_4_reg_384;
reg   [6:0] scenario_structure_c_5_reg_389;
reg   [6:0] scenario_structure_c_6_reg_394;
reg   [6:0] scenario_structure_c_7_reg_399;
reg   [31:0] scenario_structure_c_8_reg_404;
wire   [0:0] grp_fu_156_p2;
reg   [0:0] tmp_132_reg_409;
wire   [0:0] grp_fu_161_p2;
reg   [0:0] tmp_133_reg_413;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] grp_fu_171_p2;
reg   [0:0] tmp_135_reg_420;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] grp_fu_176_p2;
reg   [0:0] tmp_136_reg_424;
wire   [0:0] ap_CS_fsm_state7;
reg   [0:0] tmp_138_reg_431;
wire   [0:0] ap_CS_fsm_state9;
reg   [0:0] tmp_139_reg_435;
wire   [0:0] ap_CS_fsm_state10;
reg   [0:0] tmp_141_reg_442;
wire   [0:0] ap_CS_fsm_state12;
wire   [0:0] tmp_143_fu_316_p2;
reg   [0:0] tmp_143_reg_446;
reg   [30:0] i_reg_120;
wire   [0:0] ap_CS_fsm_state13;
wire   [0:0] or_cond_fu_320_p2;
reg   [2:0] p_0_reg_131;
wire   [0:0] ap_CS_fsm_state5;
wire   [0:0] grp_fu_166_p2;
wire   [0:0] ap_CS_fsm_state8;
wire   [0:0] tmp_137_fu_311_p2;
wire   [0:0] ap_CS_fsm_state11;
wire   [63:0] tmp_255_fu_214_p3;
wire   [63:0] tmp_259_fu_246_p3;
wire   [63:0] tmp_253_fu_223_p1;
wire   [63:0] tmp_257_fu_232_p3;
wire   [63:0] tmp_261_fu_260_p3;
wire   [63:0] tmp_265_fu_288_p3;
wire   [63:0] tmp_267_fu_302_p3;
wire   [63:0] tmp_263_fu_274_p3;
wire   [31:0] i_cast_fu_185_p1;
wire   [33:0] tmp_254_fu_208_p2;
wire   [33:0] tmp_256_fu_227_p2;
wire   [33:0] tmp_258_fu_241_p2;
wire   [33:0] tmp_260_fu_255_p2;
wire   [33:0] tmp_262_fu_269_p2;
wire   [33:0] tmp_264_fu_283_p2;
wire   [33:0] tmp_266_fu_297_p2;
reg   [2:0] ap_return_preg;
wire   [0:0] ap_CS_fsm_state14;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'b1;
#0 ap_return_preg = 3'b000;
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
        ap_return_preg <= ap_const_lv3_0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_return_preg <= p_0_reg_131;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & ((1'b0 == tmp_141_reg_442) | (1'b0 == or_cond_fu_320_p2)))) begin
        i_reg_120 <= i_6_reg_348;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_reg_120 <= ap_const_lv31_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & ~(1'b0 == or_cond_fu_320_p2) & ~(1'b0 == tmp_141_reg_442))) begin
        p_0_reg_131 <= ap_const_lv3_2;
    end else if ((~(1'b0 == grp_fu_166_p2) & (1'b1 == ap_CS_fsm_state11) & ~(1'b0 == tmp_138_reg_431) & ~(1'b0 == tmp_139_reg_435))) begin
        p_0_reg_131 <= ap_const_lv3_3;
    end else if (((1'b1 == ap_CS_fsm_state8) & ~(1'b0 == tmp_137_fu_311_p2) & ~(1'b0 == tmp_135_reg_420) & ~(1'b0 == tmp_136_reg_424))) begin
        p_0_reg_131 <= ap_const_lv3_4;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == grp_fu_166_p2) & ~(1'b0 == tmp_132_reg_409) & ~(1'b0 == tmp_133_reg_413))) begin
        p_0_reg_131 <= ap_const_lv3_1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_189_p2 == 1'b0))) begin
        p_0_reg_131 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_6_reg_348 <= i_6_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        scenario_structure_c_1_reg_369[6 : 3] <= tmp_259_fu_246_p3[6 : 3];
        scenario_structure_c_2_reg_374[6 : 3] <= tmp_253_fu_223_p1[6 : 3];
        scenario_structure_c_3_reg_379[6 : 3] <= tmp_257_fu_232_p3[6 : 3];
        scenario_structure_c_4_reg_384[6 : 3] <= tmp_261_fu_260_p3[6 : 3];
        scenario_structure_c_5_reg_389[6 : 3] <= tmp_265_fu_288_p3[6 : 3];
        scenario_structure_c_6_reg_394[6 : 3] <= tmp_267_fu_302_p3[6 : 3];
        scenario_structure_c_7_reg_399[6 : 3] <= tmp_263_fu_274_p3[6 : 3];
        scenario_structure_c_8_reg_404 <= scenario_structure_c_q0;
        tmp_132_reg_409 <= grp_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_133_reg_413 <= grp_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_135_reg_420 <= grp_fu_171_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_136_reg_424 <= grp_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_138_reg_431 <= grp_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_139_reg_435 <= grp_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_141_reg_442 <= grp_fu_171_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & ~(1'b0 == grp_fu_171_p2))) begin
        tmp_143_reg_446 <= tmp_143_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_189_p2 == 1'b0))) begin
        tmp_s_reg_353[33 : 3] <= tmp_s_fu_200_p3[33 : 3];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | (1'b1 == ap_CS_fsm_state14))) begin
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_return = p_0_reg_131;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12))) begin
        scenario_structure_c_address0 = scenario_structure_c_7_reg_399;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        scenario_structure_c_address0 = scenario_structure_c_6_reg_394;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        scenario_structure_c_address0 = scenario_structure_c_5_reg_389;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        scenario_structure_c_address0 = scenario_structure_c_1_reg_369;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        scenario_structure_c_address0 = scenario_structure_c_4_reg_384;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        scenario_structure_c_address0 = scenario_structure_c_3_reg_379;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11))) begin
        scenario_structure_c_address0 = scenario_structure_c_2_reg_374;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        scenario_structure_c_address0 = tmp_259_fu_246_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        scenario_structure_c_address0 = tmp_255_fu_214_p3;
    end else begin
        scenario_structure_c_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11))) begin
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
            if ((tmp_fu_189_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((1'b0 == grp_fu_156_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~(1'b0 == grp_fu_166_p2) & ~(1'b0 == tmp_132_reg_409) & ~(1'b0 == tmp_133_reg_413))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((1'b0 == grp_fu_171_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~(1'b0 == tmp_137_fu_311_p2) & ~(1'b0 == tmp_135_reg_420) & ~(1'b0 == tmp_136_reg_424))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((1'b0 == grp_fu_156_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if ((~(1'b0 == grp_fu_166_p2) & ~(1'b0 == tmp_138_reg_431) & ~(1'b0 == tmp_139_reg_435))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b0 == tmp_141_reg_442) | (1'b0 == or_cond_fu_320_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state10 = ap_CS_fsm[ap_const_lv32_9];

assign ap_CS_fsm_state11 = ap_CS_fsm[ap_const_lv32_A];

assign ap_CS_fsm_state12 = ap_CS_fsm[ap_const_lv32_B];

assign ap_CS_fsm_state13 = ap_CS_fsm[ap_const_lv32_C];

assign ap_CS_fsm_state14 = ap_CS_fsm[ap_const_lv32_D];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign ap_CS_fsm_state7 = ap_CS_fsm[ap_const_lv32_6];

assign ap_CS_fsm_state8 = ap_CS_fsm[ap_const_lv32_7];

assign ap_CS_fsm_state9 = ap_CS_fsm[ap_const_lv32_8];

assign grp_fu_156_p2 = (($signed(scenario_structure_c_q0) < $signed(y)) ? 1'b1 : 1'b0);

assign grp_fu_161_p2 = (($signed(scenario_structure_c_q0) > $signed(y)) ? 1'b1 : 1'b0);

assign grp_fu_166_p2 = ((scenario_structure_c_q0 == x) ? 1'b1 : 1'b0);

assign grp_fu_171_p2 = (($signed(scenario_structure_c_q0) < $signed(x)) ? 1'b1 : 1'b0);

assign grp_fu_176_p2 = (($signed(scenario_structure_c_q0) > $signed(x)) ? 1'b1 : 1'b0);

assign i_6_fu_194_p2 = (i_reg_120 + ap_const_lv31_1);

assign i_cast_fu_185_p1 = i_reg_120;

assign or_cond_fu_320_p2 = (grp_fu_176_p2 & tmp_143_reg_446);

assign tmp_137_fu_311_p2 = ((scenario_structure_c_q0 == y) ? 1'b1 : 1'b0);

assign tmp_143_fu_316_p2 = ((scenario_structure_c_8_reg_404 == y) ? 1'b1 : 1'b0);

assign tmp_253_fu_223_p1 = tmp_s_reg_353;

assign tmp_254_fu_208_p2 = (tmp_s_fu_200_p3 | ap_const_lv34_1);

assign tmp_255_fu_214_p3 = {{ap_const_lv30_0}, {tmp_254_fu_208_p2}};

assign tmp_256_fu_227_p2 = (tmp_s_reg_353 | ap_const_lv34_2);

assign tmp_257_fu_232_p3 = {{ap_const_lv30_0}, {tmp_256_fu_227_p2}};

assign tmp_258_fu_241_p2 = (tmp_s_reg_353 | ap_const_lv34_3);

assign tmp_259_fu_246_p3 = {{ap_const_lv30_0}, {tmp_258_fu_241_p2}};

assign tmp_260_fu_255_p2 = (tmp_s_reg_353 | ap_const_lv34_4);

assign tmp_261_fu_260_p3 = {{ap_const_lv30_0}, {tmp_260_fu_255_p2}};

assign tmp_262_fu_269_p2 = (tmp_s_reg_353 | ap_const_lv34_6);

assign tmp_263_fu_274_p3 = {{ap_const_lv30_0}, {tmp_262_fu_269_p2}};

assign tmp_264_fu_283_p2 = (tmp_s_reg_353 | ap_const_lv34_7);

assign tmp_265_fu_288_p3 = {{ap_const_lv30_0}, {tmp_264_fu_283_p2}};

assign tmp_266_fu_297_p2 = (tmp_s_reg_353 | ap_const_lv34_5);

assign tmp_267_fu_302_p3 = {{ap_const_lv30_0}, {tmp_266_fu_297_p2}};

assign tmp_fu_189_p2 = (($signed(i_cast_fu_185_p1) < $signed(scenario_nr_struct)) ? 1'b1 : 1'b0);

assign tmp_s_fu_200_p3 = {{i_reg_120}, {ap_const_lv3_0}};

always @ (posedge ap_clk) begin
    tmp_s_reg_353[2:0] <= 3'b000;
    scenario_structure_c_1_reg_369[2:0] <= 3'b011;
    scenario_structure_c_2_reg_374[2:0] <= 3'b000;
    scenario_structure_c_3_reg_379[2:0] <= 3'b010;
    scenario_structure_c_4_reg_384[2:0] <= 3'b100;
    scenario_structure_c_5_reg_389[2:0] <= 3'b111;
    scenario_structure_c_6_reg_394[2:0] <= 3'b101;
    scenario_structure_c_7_reg_399[2:0] <= 3'b110;
end

endmodule //on_structure_edge
