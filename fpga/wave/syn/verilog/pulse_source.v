// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pulse_source (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        radius,
        step,
        amp,
        uc_address0,
        uc_ce0,
        uc_we0,
        uc_d0,
        ny,
        nx,
        scenario_source_x,
        scenario_source_y
);

parameter    ap_ST_fsm_state1 = 76'b1;
parameter    ap_ST_fsm_state2 = 76'b10;
parameter    ap_ST_fsm_state3 = 76'b100;
parameter    ap_ST_fsm_state4 = 76'b1000;
parameter    ap_ST_fsm_state5 = 76'b10000;
parameter    ap_ST_fsm_state6 = 76'b100000;
parameter    ap_ST_fsm_state7 = 76'b1000000;
parameter    ap_ST_fsm_state8 = 76'b10000000;
parameter    ap_ST_fsm_state9 = 76'b100000000;
parameter    ap_ST_fsm_state10 = 76'b1000000000;
parameter    ap_ST_fsm_state11 = 76'b10000000000;
parameter    ap_ST_fsm_state12 = 76'b100000000000;
parameter    ap_ST_fsm_state13 = 76'b1000000000000;
parameter    ap_ST_fsm_state14 = 76'b10000000000000;
parameter    ap_ST_fsm_state15 = 76'b100000000000000;
parameter    ap_ST_fsm_state16 = 76'b1000000000000000;
parameter    ap_ST_fsm_state17 = 76'b10000000000000000;
parameter    ap_ST_fsm_state18 = 76'b100000000000000000;
parameter    ap_ST_fsm_state19 = 76'b1000000000000000000;
parameter    ap_ST_fsm_state20 = 76'b10000000000000000000;
parameter    ap_ST_fsm_state21 = 76'b100000000000000000000;
parameter    ap_ST_fsm_state22 = 76'b1000000000000000000000;
parameter    ap_ST_fsm_state23 = 76'b10000000000000000000000;
parameter    ap_ST_fsm_state24 = 76'b100000000000000000000000;
parameter    ap_ST_fsm_state25 = 76'b1000000000000000000000000;
parameter    ap_ST_fsm_state26 = 76'b10000000000000000000000000;
parameter    ap_ST_fsm_state27 = 76'b100000000000000000000000000;
parameter    ap_ST_fsm_state28 = 76'b1000000000000000000000000000;
parameter    ap_ST_fsm_state29 = 76'b10000000000000000000000000000;
parameter    ap_ST_fsm_state30 = 76'b100000000000000000000000000000;
parameter    ap_ST_fsm_state31 = 76'b1000000000000000000000000000000;
parameter    ap_ST_fsm_state32 = 76'b10000000000000000000000000000000;
parameter    ap_ST_fsm_state33 = 76'b100000000000000000000000000000000;
parameter    ap_ST_fsm_state34 = 76'b1000000000000000000000000000000000;
parameter    ap_ST_fsm_state35 = 76'b10000000000000000000000000000000000;
parameter    ap_ST_fsm_state36 = 76'b100000000000000000000000000000000000;
parameter    ap_ST_fsm_state37 = 76'b1000000000000000000000000000000000000;
parameter    ap_ST_fsm_state38 = 76'b10000000000000000000000000000000000000;
parameter    ap_ST_fsm_state39 = 76'b100000000000000000000000000000000000000;
parameter    ap_ST_fsm_state40 = 76'b1000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state41 = 76'b10000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state42 = 76'b100000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state43 = 76'b1000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state44 = 76'b10000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state45 = 76'b100000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state46 = 76'b1000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state47 = 76'b10000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state48 = 76'b100000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state49 = 76'b1000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state50 = 76'b10000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state51 = 76'b100000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state52 = 76'b1000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state53 = 76'b10000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state54 = 76'b100000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state55 = 76'b1000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state56 = 76'b10000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state57 = 76'b100000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state58 = 76'b1000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state59 = 76'b10000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state60 = 76'b100000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state61 = 76'b1000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state62 = 76'b10000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state63 = 76'b100000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state64 = 76'b1000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state65 = 76'b10000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state66 = 76'b100000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state67 = 76'b1000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state68 = 76'b10000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state69 = 76'b100000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state70 = 76'b1000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state71 = 76'b10000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state72 = 76'b100000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state73 = 76'b1000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state74 = 76'b10000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state75 = 76'b100000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_ST_fsm_state76 = 76'b1000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv32_23 = 32'b100011;
parameter    ap_const_lv32_42 = 32'b1000010;
parameter    ap_const_lv32_43 = 32'b1000011;
parameter    ap_const_lv32_44 = 32'b1000100;
parameter    ap_const_lv32_45 = 32'b1000101;
parameter    ap_const_lv32_4A = 32'b1001010;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_4B = 32'b1001011;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv64_400921FB54442D18 = 64'b100000000001001001000011111101101010100010001000010110100011000;
parameter    ap_const_lv64_3FD0000000000000 = 64'b11111111010000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_19 = 32'b11001;
parameter    ap_const_lv32_24 = 32'b100100;
parameter    ap_const_lv52_0 = 52'b0000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_64 = 64'b1100100;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_34 = 32'b110100;
parameter    ap_const_lv32_3E = 32'b111110;
parameter    ap_const_lv11_7FF = 11'b11111111111;
parameter    ap_const_lv5_5 = 5'b101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] radius;
input  [31:0] step;
input  [63:0] amp;
output  [13:0] uc_address0;
output   uc_ce0;
output   uc_we0;
output  [63:0] uc_d0;
input  [31:0] ny;
input  [31:0] nx;
input  [31:0] scenario_source_x;
input  [31:0] scenario_source_y;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg uc_ce0;
reg uc_we0;

(* fsm_encoding = "none" *) reg   [75:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [63:0] grp_fu_146_p1;
reg   [63:0] reg_159;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] ap_CS_fsm_state17;
wire   [63:0] grp_fu_132_p2;
reg   [63:0] reg_165;
wire   [0:0] ap_CS_fsm_state12;
wire   [0:0] ap_CS_fsm_state18;
wire   [63:0] tmp_193_i_to_int_fu_171_p1;
reg   [63:0] tmp_193_i_to_int_reg_363;
wire   [0:0] notrhs2_fu_179_p2;
reg   [0:0] notrhs2_reg_368;
wire   [14:0] tmp_316_fu_185_p1;
reg   [14:0] tmp_316_reg_373;
wire   [0:0] ap_CS_fsm_state19;
wire   [63:0] next_mul_fu_189_p2;
reg   [63:0] next_mul_reg_378;
wire   [31:0] i_fu_205_p2;
reg   [31:0] i_reg_386;
wire   [31:0] j_fu_221_p2;
reg   [31:0] j_reg_394;
wire   [0:0] ap_CS_fsm_state20;
wire   [31:0] tmp_i_fu_231_p2;
wire   [0:0] tmp_129_fu_215_p2;
wire   [0:0] notlhs1_fu_258_p2;
reg   [0:0] notlhs1_reg_409;
reg   [63:0] tmp_186_i_reg_414;
wire   [0:0] ap_CS_fsm_state25;
wire   [63:0] grp_fu_151_p1;
reg   [63:0] tmp_189_i_reg_420;
reg   [63:0] tmp_187_i_reg_426;
wire   [0:0] ap_CS_fsm_state31;
wire   [63:0] grp_fu_138_p2;
reg   [63:0] tmp_190_i_reg_431;
wire   [63:0] grp_fu_128_p2;
reg   [63:0] tmp_191_i_reg_436;
wire   [0:0] ap_CS_fsm_state36;
wire   [63:0] grp_fu_154_p2;
reg   [63:0] tmp_192_i_reg_441;
wire   [0:0] ap_CS_fsm_state67;
wire   [0:0] tmp_182_fu_309_p2;
reg   [0:0] tmp_182_reg_447;
wire   [0:0] ap_CS_fsm_state68;
wire   [14:0] tmp_252_fu_319_p2;
reg   [14:0] tmp_252_reg_451;
wire   [62:0] tmp_318_fu_328_p1;
reg   [62:0] tmp_318_reg_456;
wire   [0:0] ap_CS_fsm_state69;
wire    grp_sin_cos_range_redux_s_fu_119_ap_done;
wire   [63:0] ret_i_i_i_i_i_fu_339_p1;
wire   [0:0] ap_CS_fsm_state70;
reg   [63:0] tmp_130_reg_466;
wire   [0:0] ap_CS_fsm_state75;
wire    grp_sin_cos_range_redux_s_fu_119_ap_start;
wire    grp_sin_cos_range_redux_s_fu_119_ap_idle;
wire    grp_sin_cos_range_redux_s_fu_119_ap_ready;
wire   [63:0] grp_sin_cos_range_redux_s_fu_119_ap_return;
reg   [31:0] x_assign_reg_84;
reg   [63:0] phi_mul_reg_96;
reg   [31:0] y_assign_reg_107;
wire   [0:0] ap_CS_fsm_state76;
wire   [0:0] tmp_127_fu_199_p2;
reg    ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start;
wire   [63:0] tmp_253_cast_fu_344_p1;
wire   [0:0] ap_CS_fsm_state32;
reg   [63:0] grp_fu_132_p0;
reg   [63:0] grp_fu_132_p1;
wire   [0:0] ap_CS_fsm_state7;
wire   [0:0] ap_CS_fsm_state13;
wire   [0:0] ap_CS_fsm_state26;
reg   [31:0] grp_fu_146_p0;
wire   [31:0] grp_fu_151_p0;
wire   [0:0] ap_CS_fsm_state37;
wire   [51:0] tmp_315_fu_175_p1;
wire   [10:0] tmp_177_fu_249_p4;
wire   [63:0] tmp_192_i_to_int_fu_264_p1;
wire   [10:0] tmp_175_fu_267_p4;
wire   [51:0] tmp_317_fu_277_p1;
wire   [0:0] notrhs_fu_287_p2;
wire   [0:0] notlhs_fu_281_p2;
wire   [0:0] tmp_178_fu_293_p2;
wire   [0:0] tmp_179_fu_299_p2;
wire   [0:0] tmp_180_fu_303_p2;
wire   [0:0] tmp_181_fu_142_p2;
wire   [14:0] tmp_319_fu_315_p1;
wire   [63:0] p_Val2_s_fu_324_p1;
wire   [63:0] p_Result_s_fu_332_p3;
reg   [75:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 76'b1;
#0 ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start = 1'b0;
end

sin_cos_range_redux_s grp_sin_cos_range_redux_s_fu_119(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_cos_range_redux_s_fu_119_ap_start),
    .ap_done(grp_sin_cos_range_redux_s_fu_119_ap_done),
    .ap_idle(grp_sin_cos_range_redux_s_fu_119_ap_idle),
    .ap_ready(grp_sin_cos_range_redux_s_fu_119_ap_ready),
    .t_in(reg_165),
    .ap_return(grp_sin_cos_range_redux_s_fu_119_ap_return)
);

s_compute_acoustijbC #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
s_compute_acoustijbC_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_187_i_reg_426),
    .din1(tmp_190_i_reg_431),
    .ce(1'b1),
    .dout(grp_fu_128_p2)
);

s_compute_acoustikbM #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
s_compute_acoustikbM_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_132_p0),
    .din1(grp_fu_132_p1),
    .ce(1'b1),
    .dout(grp_fu_132_p2)
);

s_compute_acoustikbM #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
s_compute_acoustikbM_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_189_i_reg_420),
    .din1(tmp_189_i_reg_420),
    .ce(1'b1),
    .dout(grp_fu_138_p2)
);

s_compute_acoustilbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 1 ))
s_compute_acoustilbW_U15(
    .din0(tmp_192_i_reg_441),
    .din1(reg_159),
    .opcode(ap_const_lv5_5),
    .dout(tmp_181_fu_142_p2)
);

s_compute_acoustimb6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
s_compute_acoustimb6_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_146_p0),
    .ce(1'b1),
    .dout(grp_fu_146_p1)
);

s_compute_acoustimb6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
s_compute_acoustimb6_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_151_p0),
    .ce(1'b1),
    .dout(grp_fu_151_p1)
);

s_compute_acoustincg #(
    .ID( 1 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
s_compute_acoustincg_U18(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_const_lv64_0),
    .din1(tmp_191_i_reg_436),
    .ce(1'b1),
    .dout(grp_fu_154_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state68) & ~(1'b0 == tmp_182_fu_309_p2))) begin
            ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sin_cos_range_redux_s_fu_119_ap_ready)) begin
            ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) & (tmp_129_fu_215_p2 == 1'b0))) begin
        phi_mul_reg_96 <= next_mul_reg_378;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        phi_mul_reg_96 <= ap_const_lv64_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) & (tmp_129_fu_215_p2 == 1'b0))) begin
        x_assign_reg_84 <= i_reg_386;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        x_assign_reg_84 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) & ~(1'b0 == tmp_127_fu_199_p2))) begin
        y_assign_reg_107 <= ap_const_lv32_0;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        y_assign_reg_107 <= j_reg_394;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        i_reg_386 <= i_fu_205_p2;
        next_mul_reg_378 <= next_mul_fu_189_p2;
        tmp_316_reg_373 <= tmp_316_fu_185_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        j_reg_394 <= j_fu_221_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) & ~(tmp_129_fu_215_p2 == 1'b0))) begin
        notlhs1_reg_409 <= notlhs1_fu_258_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        notrhs2_reg_368 <= notrhs2_fu_179_p2;
        tmp_193_i_to_int_reg_363 <= tmp_193_i_to_int_fu_171_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17))) begin
        reg_159 <= grp_fu_146_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_165 <= grp_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state75)) begin
        tmp_130_reg_466 <= grp_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        tmp_182_reg_447 <= tmp_182_fu_309_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        tmp_186_i_reg_414 <= grp_fu_146_p1;
        tmp_189_i_reg_420 <= grp_fu_151_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        tmp_187_i_reg_426 <= grp_fu_132_p2;
        tmp_190_i_reg_431 <= grp_fu_138_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        tmp_191_i_reg_436 <= grp_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state67)) begin
        tmp_192_i_reg_441 <= grp_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state68) & ~(1'b0 == tmp_182_fu_309_p2))) begin
        tmp_252_reg_451 <= tmp_252_fu_319_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state69) & ~(1'b0 == grp_sin_cos_range_redux_s_fu_119_ap_done))) begin
        tmp_318_reg_456 <= tmp_318_fu_328_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state19) & (1'b0 == tmp_127_fu_199_p2)))) begin
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
    if (((1'b1 == ap_CS_fsm_state19) & (1'b0 == tmp_127_fu_199_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        grp_fu_132_p0 = ret_i_i_i_i_i_fu_339_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_132_p0 = tmp_186_i_reg_414;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_132_p0 = reg_165;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_132_p0 = reg_159;
    end else begin
        grp_fu_132_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        grp_fu_132_p1 = amp;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_132_p1 = tmp_186_i_reg_414;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_132_p1 = ap_const_lv64_3FD0000000000000;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_132_p1 = ap_const_lv64_400921FB54442D18;
    end else begin
        grp_fu_132_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_146_p0 = tmp_i_fu_231_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_146_p0 = radius;
    end else if ((ap_CS_fsm_state1 == 1'b1)) begin
        grp_fu_146_p0 = step;
    end else begin
        grp_fu_146_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state76)) begin
        uc_ce0 = 1'b1;
    end else begin
        uc_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state76) & ~(1'b0 == tmp_182_reg_447))) begin
        uc_we0 = 1'b1;
    end else begin
        uc_we0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if ((1'b0 == tmp_127_fu_199_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            if ((tmp_129_fu_215_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            if ((1'b0 == tmp_182_fu_309_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state69;
            end
        end
        ap_ST_fsm_state69 : begin
            if (~(1'b0 == grp_sin_cos_range_redux_s_fu_119_ap_done)) begin
                ap_NS_fsm = ap_ST_fsm_state70;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state69;
            end
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state12 = ap_CS_fsm[ap_const_lv32_B];

assign ap_CS_fsm_state13 = ap_CS_fsm[ap_const_lv32_C];

assign ap_CS_fsm_state17 = ap_CS_fsm[ap_const_lv32_10];

assign ap_CS_fsm_state18 = ap_CS_fsm[ap_const_lv32_11];

assign ap_CS_fsm_state19 = ap_CS_fsm[ap_const_lv32_12];

assign ap_CS_fsm_state20 = ap_CS_fsm[ap_const_lv32_13];

assign ap_CS_fsm_state25 = ap_CS_fsm[ap_const_lv32_18];

assign ap_CS_fsm_state26 = ap_CS_fsm[ap_const_lv32_19];

assign ap_CS_fsm_state31 = ap_CS_fsm[ap_const_lv32_1E];

assign ap_CS_fsm_state32 = ap_CS_fsm[ap_const_lv32_1F];

assign ap_CS_fsm_state36 = ap_CS_fsm[ap_const_lv32_23];

assign ap_CS_fsm_state37 = ap_CS_fsm[ap_const_lv32_24];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign ap_CS_fsm_state67 = ap_CS_fsm[ap_const_lv32_42];

assign ap_CS_fsm_state68 = ap_CS_fsm[ap_const_lv32_43];

assign ap_CS_fsm_state69 = ap_CS_fsm[ap_const_lv32_44];

assign ap_CS_fsm_state7 = ap_CS_fsm[ap_const_lv32_6];

assign ap_CS_fsm_state70 = ap_CS_fsm[ap_const_lv32_45];

assign ap_CS_fsm_state75 = ap_CS_fsm[ap_const_lv32_4A];

assign ap_CS_fsm_state76 = ap_CS_fsm[ap_const_lv32_4B];

assign grp_fu_151_p0 = (scenario_source_y - y_assign_reg_107);

assign grp_sin_cos_range_redux_s_fu_119_ap_start = ap_reg_grp_sin_cos_range_redux_s_fu_119_ap_start;

assign i_fu_205_p2 = (ap_const_lv32_1 + x_assign_reg_84);

assign j_fu_221_p2 = (y_assign_reg_107 + ap_const_lv32_1);

assign next_mul_fu_189_p2 = (ap_const_lv64_64 + phi_mul_reg_96);

assign notlhs1_fu_258_p2 = ((tmp_177_fu_249_p4 != ap_const_lv11_7FF) ? 1'b1 : 1'b0);

assign notlhs_fu_281_p2 = ((tmp_175_fu_267_p4 != ap_const_lv11_7FF) ? 1'b1 : 1'b0);

assign notrhs2_fu_179_p2 = ((tmp_315_fu_175_p1 == ap_const_lv52_0) ? 1'b1 : 1'b0);

assign notrhs_fu_287_p2 = ((tmp_317_fu_277_p1 == ap_const_lv52_0) ? 1'b1 : 1'b0);

assign p_Result_s_fu_332_p3 = {{1'b0}, {tmp_318_reg_456}};

assign p_Val2_s_fu_324_p1 = grp_sin_cos_range_redux_s_fu_119_ap_return;

assign ret_i_i_i_i_i_fu_339_p1 = p_Result_s_fu_332_p3;

assign tmp_127_fu_199_p2 = (($signed(x_assign_reg_84) < $signed(ny)) ? 1'b1 : 1'b0);

assign tmp_129_fu_215_p2 = (($signed(y_assign_reg_107) < $signed(nx)) ? 1'b1 : 1'b0);

assign tmp_175_fu_267_p4 = {{tmp_192_i_to_int_fu_264_p1[ap_const_lv32_3E : ap_const_lv32_34]}};

assign tmp_177_fu_249_p4 = {{tmp_193_i_to_int_reg_363[ap_const_lv32_3E : ap_const_lv32_34]}};

assign tmp_178_fu_293_p2 = (notrhs_fu_287_p2 | notlhs_fu_281_p2);

assign tmp_179_fu_299_p2 = (notrhs2_reg_368 | notlhs1_reg_409);

assign tmp_180_fu_303_p2 = (tmp_178_fu_293_p2 & tmp_179_fu_299_p2);

assign tmp_182_fu_309_p2 = (tmp_180_fu_303_p2 & tmp_181_fu_142_p2);

assign tmp_192_i_to_int_fu_264_p1 = tmp_192_i_reg_441;

assign tmp_193_i_to_int_fu_171_p1 = reg_159;

assign tmp_252_fu_319_p2 = (tmp_316_reg_373 + tmp_319_fu_315_p1);

assign tmp_253_cast_fu_344_p1 = tmp_252_reg_451;

assign tmp_315_fu_175_p1 = tmp_193_i_to_int_fu_171_p1[51:0];

assign tmp_316_fu_185_p1 = phi_mul_reg_96[14:0];

assign tmp_317_fu_277_p1 = tmp_192_i_to_int_fu_264_p1[51:0];

assign tmp_318_fu_328_p1 = p_Val2_s_fu_324_p1[62:0];

assign tmp_319_fu_315_p1 = y_assign_reg_107[14:0];

assign tmp_i_fu_231_p2 = (scenario_source_x - x_assign_reg_84);

assign uc_address0 = tmp_253_cast_fu_344_p1;

assign uc_d0 = tmp_130_reg_466;

endmodule //pulse_source
