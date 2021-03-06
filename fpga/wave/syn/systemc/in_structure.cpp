// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "in_structure.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic in_structure::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic in_structure::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> in_structure::ap_ST_fsm_state1 = "1";
const sc_lv<6> in_structure::ap_ST_fsm_state2 = "10";
const sc_lv<6> in_structure::ap_ST_fsm_state3 = "100";
const sc_lv<6> in_structure::ap_ST_fsm_state4 = "1000";
const sc_lv<6> in_structure::ap_ST_fsm_state5 = "10000";
const sc_lv<6> in_structure::ap_ST_fsm_state6 = "100000";
const sc_lv<32> in_structure::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> in_structure::ap_const_lv1_1 = "1";
const sc_lv<32> in_structure::ap_const_lv32_1 = "1";
const sc_lv<1> in_structure::ap_const_lv1_0 = "0";
const sc_lv<32> in_structure::ap_const_lv32_2 = "10";
const sc_lv<32> in_structure::ap_const_lv32_3 = "11";
const sc_lv<32> in_structure::ap_const_lv32_4 = "100";
const sc_lv<31> in_structure::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<32> in_structure::ap_const_lv32_5 = "101";
const sc_lv<31> in_structure::ap_const_lv31_1 = "1";
const sc_lv<3> in_structure::ap_const_lv3_0 = "000";
const sc_lv<34> in_structure::ap_const_lv34_6 = "110";
const sc_lv<30> in_structure::ap_const_lv30_0 = "000000000000000000000000000000";
const sc_lv<34> in_structure::ap_const_lv34_1 = "1";
const sc_lv<34> in_structure::ap_const_lv34_3 = "11";

in_structure::in_structure(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_163_fu_194_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_163_fu_194_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_163_fu_194_p2 );
    sensitive << ( p_0_phi_fu_94_p4 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_i_8_fu_115_p2);
    sensitive << ( i_reg_79 );

    SC_METHOD(thread_i_cast_fu_106_p1);
    sensitive << ( i_reg_79 );

    SC_METHOD(thread_p_0_phi_fu_94_p4);
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_163_fu_194_p2 );
    sensitive << ( p_0_reg_90 );

    SC_METHOD(thread_scenario_structure_c_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( scenario_structure_c_34_reg_230 );
    sensitive << ( scenario_structure_c_35_reg_235 );
    sensitive << ( scenario_structure_c_36_reg_240 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_283_fu_129_p1 );

    SC_METHOD(thread_scenario_structure_c_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tmp_160_fu_179_p2);
    sensitive << ( x );
    sensitive << ( scenario_structure_c_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_161_fu_184_p2);
    sensitive << ( x );
    sensitive << ( scenario_structure_c_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_162_fu_189_p2);
    sensitive << ( y );
    sensitive << ( scenario_structure_c_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tmp_163_fu_194_p2);
    sensitive << ( y );
    sensitive << ( scenario_structure_c_q0 );
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_tmp_283_fu_129_p1);
    sensitive << ( tmp_s_fu_121_p3 );

    SC_METHOD(thread_tmp_284_fu_134_p2);
    sensitive << ( tmp_s_fu_121_p3 );

    SC_METHOD(thread_tmp_285_fu_140_p3);
    sensitive << ( tmp_284_fu_134_p2 );

    SC_METHOD(thread_tmp_286_fu_149_p2);
    sensitive << ( tmp_s_fu_121_p3 );

    SC_METHOD(thread_tmp_287_fu_155_p3);
    sensitive << ( tmp_286_fu_149_p2 );

    SC_METHOD(thread_tmp_288_fu_164_p2);
    sensitive << ( tmp_s_fu_121_p3 );

    SC_METHOD(thread_tmp_289_fu_170_p3);
    sensitive << ( tmp_288_fu_164_p2 );

    SC_METHOD(thread_tmp_fu_110_p2);
    sensitive << ( scenario_nr_struct );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_cast_fu_106_p1 );

    SC_METHOD(thread_tmp_s_fu_121_p3);
    sensitive << ( i_reg_79 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_fu_110_p2 );
    sensitive << ( tmp_reg_216 );
    sensitive << ( tmp_160_fu_179_p2 );
    sensitive << ( tmp_160_reg_245 );
    sensitive << ( tmp_161_fu_184_p2 );
    sensitive << ( tmp_161_reg_249 );
    sensitive << ( tmp_162_reg_253 );
    sensitive << ( tmp_163_fu_194_p2 );

    ap_CS_fsm = "000001";
    ap_return_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "in_structure_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x, "(port)x");
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, scenario_nr_struct, "(port)scenario_nr_struct");
    sc_trace(mVcdFile, scenario_structure_c_address0, "(port)scenario_structure_c_address0");
    sc_trace(mVcdFile, scenario_structure_c_ce0, "(port)scenario_structure_c_ce0");
    sc_trace(mVcdFile, scenario_structure_c_q0, "(port)scenario_structure_c_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_fu_110_p2, "tmp_fu_110_p2");
    sc_trace(mVcdFile, tmp_reg_216, "tmp_reg_216");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_8_fu_115_p2, "i_8_fu_115_p2");
    sc_trace(mVcdFile, i_8_reg_220, "i_8_reg_220");
    sc_trace(mVcdFile, scenario_structure_c_34_reg_230, "scenario_structure_c_34_reg_230");
    sc_trace(mVcdFile, scenario_structure_c_35_reg_235, "scenario_structure_c_35_reg_235");
    sc_trace(mVcdFile, scenario_structure_c_36_reg_240, "scenario_structure_c_36_reg_240");
    sc_trace(mVcdFile, tmp_160_fu_179_p2, "tmp_160_fu_179_p2");
    sc_trace(mVcdFile, tmp_160_reg_245, "tmp_160_reg_245");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_161_fu_184_p2, "tmp_161_fu_184_p2");
    sc_trace(mVcdFile, tmp_161_reg_249, "tmp_161_reg_249");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_162_fu_189_p2, "tmp_162_fu_189_p2");
    sc_trace(mVcdFile, tmp_162_reg_253, "tmp_162_reg_253");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, i_reg_79, "i_reg_79");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_163_fu_194_p2, "tmp_163_fu_194_p2");
    sc_trace(mVcdFile, p_0_phi_fu_94_p4, "p_0_phi_fu_94_p4");
    sc_trace(mVcdFile, p_0_reg_90, "p_0_reg_90");
    sc_trace(mVcdFile, tmp_283_fu_129_p1, "tmp_283_fu_129_p1");
    sc_trace(mVcdFile, tmp_285_fu_140_p3, "tmp_285_fu_140_p3");
    sc_trace(mVcdFile, tmp_287_fu_155_p3, "tmp_287_fu_155_p3");
    sc_trace(mVcdFile, tmp_289_fu_170_p3, "tmp_289_fu_170_p3");
    sc_trace(mVcdFile, i_cast_fu_106_p1, "i_cast_fu_106_p1");
    sc_trace(mVcdFile, tmp_s_fu_121_p3, "tmp_s_fu_121_p3");
    sc_trace(mVcdFile, tmp_284_fu_134_p2, "tmp_284_fu_134_p2");
    sc_trace(mVcdFile, tmp_286_fu_149_p2, "tmp_286_fu_149_p2");
    sc_trace(mVcdFile, tmp_288_fu_164_p2, "tmp_288_fu_164_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

in_structure::~in_structure() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void in_structure::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
             (esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) || 
              (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
               !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
               !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
               !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read()))))) {
            ap_return_preg = p_0_phi_fu_94_p4.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
         ((!esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read())) || 
          (!esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read())) || 
          (!esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read())) || 
          (!esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()))))) {
        i_reg_79 = i_8_reg_220.read();
    } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_79 = ap_const_lv31_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
         !esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read()))) {
        p_0_reg_90 = ap_const_lv1_1;
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_110_p2.read(), ap_const_lv1_0))) {
        p_0_reg_90 = ap_const_lv1_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        i_8_reg_220 = i_8_fu_115_p2.read();
        tmp_reg_216 = tmp_fu_110_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && !esl_seteq<1,1,1>(tmp_fu_110_p2.read(), ap_const_lv1_0))) {
        scenario_structure_c_34_reg_230 =  (sc_lv<7>) (tmp_285_fu_140_p3.read());
        scenario_structure_c_35_reg_235 =  (sc_lv<7>) (tmp_287_fu_155_p3.read());
        scenario_structure_c_36_reg_240 =  (sc_lv<7>) (tmp_289_fu_170_p3.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        tmp_160_reg_245 = tmp_160_fu_179_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read()))) {
        tmp_161_reg_249 = tmp_161_fu_184_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()))) {
        tmp_162_reg_253 = tmp_162_fu_189_p2.read();
    }
}

void in_structure::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read().range(0, 0);
}

void in_structure::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read().range(1, 1);
}

void in_structure::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read().range(2, 2);
}

void in_structure::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read().range(3, 3);
}

void in_structure::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read().range(4, 4);
}

void in_structure::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read().range(5, 5);
}

void in_structure::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
          (esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) || 
           (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
            !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
            !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
            !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read())))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void in_structure::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void in_structure::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
         (esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) || 
          (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void in_structure::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
         (esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) || 
          (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read()))))) {
        ap_return = p_0_phi_fu_94_p4.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void in_structure::thread_i_8_fu_115_p2() {
    i_8_fu_115_p2 = (!i_reg_79.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(i_reg_79.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void in_structure::thread_i_cast_fu_106_p1() {
    i_cast_fu_106_p1 = esl_zext<32,31>(i_reg_79.read());
}

void in_structure::thread_p_0_phi_fu_94_p4() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state6.read()) && 
         !esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read()))) {
        p_0_phi_fu_94_p4 = ap_const_lv1_1;
    } else {
        p_0_phi_fu_94_p4 = p_0_reg_90.read();
    }
}

void in_structure::thread_scenario_structure_c_address0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read()))) {
        scenario_structure_c_address0 = scenario_structure_c_36_reg_240.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read()))) {
        scenario_structure_c_address0 = scenario_structure_c_35_reg_235.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        scenario_structure_c_address0 = scenario_structure_c_34_reg_230.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        scenario_structure_c_address0 =  (sc_lv<7>) (tmp_283_fu_129_p1.read());
    } else {
        scenario_structure_c_address0 = "XXXXXXX";
    }
}

void in_structure::thread_scenario_structure_c_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state5.read())))) {
        scenario_structure_c_ce0 = ap_const_logic_1;
    } else {
        scenario_structure_c_ce0 = ap_const_logic_0;
    }
}

void in_structure::thread_tmp_160_fu_179_p2() {
    tmp_160_fu_179_p2 = (!scenario_structure_c_q0.read().is_01() || !x.read().is_01())? sc_lv<1>(): (sc_bigint<32>(scenario_structure_c_q0.read()) < sc_bigint<32>(x.read()));
}

void in_structure::thread_tmp_161_fu_184_p2() {
    tmp_161_fu_184_p2 = (!scenario_structure_c_q0.read().is_01() || !x.read().is_01())? sc_lv<1>(): (sc_bigint<32>(scenario_structure_c_q0.read()) > sc_bigint<32>(x.read()));
}

void in_structure::thread_tmp_162_fu_189_p2() {
    tmp_162_fu_189_p2 = (!scenario_structure_c_q0.read().is_01() || !y.read().is_01())? sc_lv<1>(): (sc_bigint<32>(scenario_structure_c_q0.read()) < sc_bigint<32>(y.read()));
}

void in_structure::thread_tmp_163_fu_194_p2() {
    tmp_163_fu_194_p2 = (!scenario_structure_c_q0.read().is_01() || !y.read().is_01())? sc_lv<1>(): (sc_bigint<32>(scenario_structure_c_q0.read()) > sc_bigint<32>(y.read()));
}

void in_structure::thread_tmp_283_fu_129_p1() {
    tmp_283_fu_129_p1 = esl_zext<64,34>(tmp_s_fu_121_p3.read());
}

void in_structure::thread_tmp_284_fu_134_p2() {
    tmp_284_fu_134_p2 = (tmp_s_fu_121_p3.read() | ap_const_lv34_6);
}

void in_structure::thread_tmp_285_fu_140_p3() {
    tmp_285_fu_140_p3 = esl_concat<30,34>(ap_const_lv30_0, tmp_284_fu_134_p2.read());
}

void in_structure::thread_tmp_286_fu_149_p2() {
    tmp_286_fu_149_p2 = (tmp_s_fu_121_p3.read() | ap_const_lv34_1);
}

void in_structure::thread_tmp_287_fu_155_p3() {
    tmp_287_fu_155_p3 = esl_concat<30,34>(ap_const_lv30_0, tmp_286_fu_149_p2.read());
}

void in_structure::thread_tmp_288_fu_164_p2() {
    tmp_288_fu_164_p2 = (tmp_s_fu_121_p3.read() | ap_const_lv34_3);
}

void in_structure::thread_tmp_289_fu_170_p3() {
    tmp_289_fu_170_p3 = esl_concat<30,34>(ap_const_lv30_0, tmp_288_fu_164_p2.read());
}

void in_structure::thread_tmp_fu_110_p2() {
    tmp_fu_110_p2 = (!i_cast_fu_106_p1.read().is_01() || !scenario_nr_struct.read().is_01())? sc_lv<1>(): (sc_bigint<32>(i_cast_fu_106_p1.read()) < sc_bigint<32>(scenario_nr_struct.read()));
}

void in_structure::thread_tmp_s_fu_121_p3() {
    tmp_s_fu_121_p3 = esl_concat<31,3>(i_reg_79.read(), ap_const_lv3_0);
}

void in_structure::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(tmp_fu_110_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_fu_179_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_fu_184_p2.read())) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(tmp_reg_216.read(), ap_const_lv1_0) || (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_163_fu_194_p2.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_160_reg_245.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_161_reg_249.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_162_reg_253.read())))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}

