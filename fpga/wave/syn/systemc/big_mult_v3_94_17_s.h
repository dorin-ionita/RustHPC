// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _big_mult_v3_94_17_s_HH_
#define _big_mult_v3_94_17_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "s_compute_acoustig8j.h"
#include "big_mult_v3_94_17eOg.h"
#include "big_mult_v3_94_17fYi.h"

namespace ap_rtl {

struct big_mult_v3_94_17_s : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<78> > a_V;
    sc_out< sc_lv<188> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    big_mult_v3_94_17_s(sc_module_name name);
    SC_HAS_PROCESS(big_mult_v3_94_17_s);

    ~big_mult_v3_94_17_s();

    sc_trace_file* mVcdFile;

    big_mult_v3_94_17eOg* pp_V_U;
    big_mult_v3_94_17fYi* pps_V_U;
    s_compute_acoustig8j<1,6,34,34,34>* s_compute_acoustig8j_U5;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<94> > a_V_cast_fu_221_p1;
    sc_signal< sc_lv<94> > a_V_cast_reg_838;
    sc_signal< sc_lv<3> > i_11_fu_231_p2;
    sc_signal< sc_lv<3> > i_11_reg_852;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > tmp_292_fu_267_p2;
    sc_signal< sc_lv<7> > tmp_292_reg_857;
    sc_signal< sc_lv<1> > exitcond3_fu_225_p2;
    sc_signal< sc_lv<7> > Lo_assign_fu_273_p4;
    sc_signal< sc_lv<7> > Lo_assign_reg_862;
    sc_signal< sc_lv<7> > Ui_2_fu_289_p3;
    sc_signal< sc_lv<7> > Ui_2_reg_871;
    sc_signal< sc_lv<3> > j_6_fu_303_p2;
    sc_signal< sc_lv<3> > j_6_reg_881;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > Lo_assign_1_fu_315_p4;
    sc_signal< sc_lv<7> > Lo_assign_1_reg_886;
    sc_signal< sc_lv<1> > exitcond5_fu_297_p2;
    sc_signal< sc_lv<7> > Uj_fu_331_p3;
    sc_signal< sc_lv<7> > Uj_reg_895;
    sc_signal< sc_lv<7> > tmp_293_fu_343_p2;
    sc_signal< sc_lv<7> > tmp_293_reg_902;
    sc_signal< sc_lv<34> > tmp_385_fu_428_p1;
    sc_signal< sc_lv<34> > tmp_385_reg_907;
    sc_signal< sc_lv<34> > tmp_386_fu_504_p1;
    sc_signal< sc_lv<34> > tmp_386_reg_912;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<34> > grp_fu_508_p2;
    sc_signal< sc_lv<34> > tmp_192_reg_917;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<5> > i_1_cast_fu_521_p1;
    sc_signal< sc_lv<5> > i_1_cast_reg_922;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > exitcond4_fu_525_p2;
    sc_signal< sc_lv<4> > pps_V_addr_6_reg_935;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<3> > j_7_fu_576_p2;
    sc_signal< sc_lv<3> > j_7_reg_943;
    sc_signal< sc_lv<1> > ap_CS_fsm_state15;
    sc_signal< sc_lv<1> > or_cond_fu_605_p2;
    sc_signal< sc_lv<1> > or_cond_reg_948;
    sc_signal< sc_lv<1> > exitcond6_fu_570_p2;
    sc_signal< sc_lv<4> > i_13_fu_656_p2;
    sc_signal< sc_lv<4> > i_12_fu_679_p2;
    sc_signal< sc_lv<4> > i_12_reg_965;
    sc_signal< sc_lv<1> > ap_CS_fsm_state17;
    sc_signal< sc_lv<8> > Li_fu_685_p3;
    sc_signal< sc_lv<8> > Li_reg_970;
    sc_signal< sc_lv<1> > exitcond_fu_673_p2;
    sc_signal< sc_lv<8> > Hi_assign_fu_705_p3;
    sc_signal< sc_lv<8> > Hi_assign_reg_979;
    sc_signal< sc_lv<188> > p_Result_s_fu_832_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state18;
    sc_signal< sc_lv<6> > pp_V_address0;
    sc_signal< sc_logic > pp_V_ce0;
    sc_signal< sc_logic > pp_V_we0;
    sc_signal< sc_lv<34> > pp_V_q0;
    sc_signal< sc_lv<4> > pps_V_address0;
    sc_signal< sc_logic > pps_V_ce0;
    sc_signal< sc_logic > pps_V_we0;
    sc_signal< sc_lv<48> > pps_V_d0;
    sc_signal< sc_lv<48> > pps_V_q0;
    sc_signal< sc_lv<3> > i_reg_153;
    sc_signal< sc_lv<3> > j_reg_164;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<4> > i_1_reg_175;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<3> > j_1_reg_187;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<188> > p_Val2_34_reg_198;
    sc_signal< sc_lv<4> > i_2_reg_210;
    sc_signal< sc_lv<64> > tmp_299_cast_fu_512_p1;
    sc_signal< sc_lv<64> > tmp_186_fu_537_p1;
    sc_signal< sc_lv<64> > tmp_184_fu_542_p1;
    sc_signal< sc_lv<64> > tmp_303_cast_fu_651_p1;
    sc_signal< sc_lv<64> > tmp_194_fu_713_p1;
    sc_signal< sc_lv<48> > tmp_fu_516_p1;
    sc_signal< sc_lv<48> > r_V_8_fu_557_p1;
    sc_signal< sc_lv<48> > tmp_200_fu_666_p2;
    sc_signal< sc_lv<6> > tmp_290_fu_243_p3;
    sc_signal< sc_lv<4> > tmp_291_fu_255_p3;
    sc_signal< sc_lv<7> > p_shl_cast_fu_251_p1;
    sc_signal< sc_lv<7> > p_shl1_cast_fu_263_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_237_p2;
    sc_signal< sc_lv<7> > tmp_183_fu_283_p2;
    sc_signal< sc_lv<1> > tmp_187_fu_309_p2;
    sc_signal< sc_lv<7> > tmp_188_fu_325_p2;
    sc_signal< sc_lv<7> > tmp_189_cast_fu_339_p1;
    sc_signal< sc_lv<1> > tmp_358_fu_348_p2;
    sc_signal< sc_lv<7> > tmp_360_fu_361_p2;
    sc_signal< sc_lv<7> > tmp_362_fu_370_p2;
    sc_signal< sc_lv<94> > tmp_359_fu_352_p4;
    sc_signal< sc_lv<7> > tmp_361_fu_365_p2;
    sc_signal< sc_lv<7> > tmp_363_fu_374_p3;
    sc_signal< sc_lv<7> > tmp_365_fu_389_p3;
    sc_signal< sc_lv<7> > tmp_366_fu_396_p2;
    sc_signal< sc_lv<94> > tmp_364_fu_382_p3;
    sc_signal< sc_lv<94> > tmp_367_fu_402_p1;
    sc_signal< sc_lv<94> > tmp_368_fu_406_p1;
    sc_signal< sc_lv<94> > tmp_369_fu_410_p2;
    sc_signal< sc_lv<94> > tmp_370_fu_416_p2;
    sc_signal< sc_lv<94> > p_Result_16_fu_422_p2;
    sc_signal< sc_lv<1> > tmp_372_fu_432_p2;
    sc_signal< sc_lv<7> > tmp_373_fu_436_p2;
    sc_signal< sc_lv<7> > tmp_375_fu_445_p2;
    sc_signal< sc_lv<7> > tmp_374_fu_440_p2;
    sc_signal< sc_lv<7> > tmp_376_fu_449_p3;
    sc_signal< sc_lv<7> > tmp_378_fu_465_p3;
    sc_signal< sc_lv<7> > tmp_379_fu_472_p2;
    sc_signal< sc_lv<94> > tmp_377_fu_457_p3;
    sc_signal< sc_lv<94> > tmp_380_fu_478_p1;
    sc_signal< sc_lv<94> > tmp_381_fu_482_p1;
    sc_signal< sc_lv<94> > tmp_382_fu_486_p2;
    sc_signal< sc_lv<94> > tmp_383_fu_492_p2;
    sc_signal< sc_lv<94> > p_Result_17_fu_498_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > tmp_185_fu_531_p2;
    sc_signal< sc_lv<31> > r_V_fu_547_p4;
    sc_signal< sc_lv<4> > j_1_cast3_cast_fu_566_p1;
    sc_signal< sc_lv<1> > ult_fu_582_p2;
    sc_signal< sc_lv<5> > j_1_cast3_fu_562_p1;
    sc_signal< sc_lv<5> > tmp_196_fu_594_p2;
    sc_signal< sc_lv<1> > rev5_fu_588_p2;
    sc_signal< sc_lv<1> > tmp_197_fu_599_p2;
    sc_signal< sc_lv<6> > tmp_294_fu_615_p3;
    sc_signal< sc_lv<4> > tmp_295_fu_627_p3;
    sc_signal< sc_lv<7> > p_shl2_cast_fu_623_p1;
    sc_signal< sc_lv<7> > p_shl3_cast_fu_635_p1;
    sc_signal< sc_lv<7> > tmp_296_fu_639_p2;
    sc_signal< sc_lv<7> > tmp_198_cast_fu_611_p1;
    sc_signal< sc_lv<7> > tmp_297_fu_645_p2;
    sc_signal< sc_lv<48> > tmp_199_fu_662_p1;
    sc_signal< sc_lv<8> > Ui_fu_693_p2;
    sc_signal< sc_lv<1> > tmp_193_fu_699_p2;
    sc_signal< sc_lv<17> > tmp_387_fu_718_p1;
    sc_signal< sc_lv<1> > tmp_388_fu_726_p2;
    sc_signal< sc_lv<8> > tmp_389_fu_730_p2;
    sc_signal< sc_lv<8> > tmp_390_fu_735_p3;
    sc_signal< sc_lv<8> > tmp_392_fu_747_p3;
    sc_signal< sc_lv<8> > tmp_391_fu_741_p3;
    sc_signal< sc_lv<8> > tmp_393_fu_754_p2;
    sc_signal< sc_lv<188> > loc_V_fu_722_p1;
    sc_signal< sc_lv<188> > tmp_394_fu_760_p1;
    sc_signal< sc_lv<188> > tmp_397_fu_772_p2;
    sc_signal< sc_lv<188> > tmp_398_fu_778_p4;
    sc_signal< sc_lv<188> > tmp_395_fu_764_p1;
    sc_signal< sc_lv<188> > tmp_396_fu_768_p1;
    sc_signal< sc_lv<188> > tmp_400_fu_796_p2;
    sc_signal< sc_lv<188> > tmp_401_fu_802_p2;
    sc_signal< sc_lv<188> > p_demorgan_fu_808_p2;
    sc_signal< sc_lv<188> > tmp_402_fu_814_p2;
    sc_signal< sc_lv<188> > tmp_399_fu_788_p3;
    sc_signal< sc_lv<188> > tmp_403_fu_820_p2;
    sc_signal< sc_lv<188> > tmp_404_fu_826_p2;
    sc_signal< sc_lv<188> > ap_return_preg;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_state2;
    static const sc_lv<18> ap_ST_fsm_state3;
    static const sc_lv<18> ap_ST_fsm_state4;
    static const sc_lv<18> ap_ST_fsm_state5;
    static const sc_lv<18> ap_ST_fsm_state6;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_state9;
    static const sc_lv<18> ap_ST_fsm_state10;
    static const sc_lv<18> ap_ST_fsm_state11;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_state13;
    static const sc_lv<18> ap_ST_fsm_state14;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_state16;
    static const sc_lv<18> ap_ST_fsm_state17;
    static const sc_lv<18> ap_ST_fsm_state18;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<7> ap_const_lv7_10;
    static const sc_lv<7> ap_const_lv7_5D;
    static const sc_lv<32> ap_const_lv32_5D;
    static const sc_lv<94> ap_const_lv94_3FFFFFFFFFFFFFFFFFFFFFFF;
    static const sc_lv<94> ap_const_lv94_23232C431684455BF0930000;
    static const sc_lv<94> ap_const_lv94_3243F6A8885A308D3131;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<5> ap_const_lv5_6;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_BB;
    static const sc_lv<32> ap_const_lv32_BB;
    static const sc_lv<188> ap_const_lv188_lc_3;
    static const sc_lv<188> ap_const_lv188_lc_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_fu_705_p3();
    void thread_Li_fu_685_p3();
    void thread_Lo_assign_1_fu_315_p4();
    void thread_Lo_assign_fu_273_p4();
    void thread_Ui_2_fu_289_p3();
    void thread_Ui_fu_693_p2();
    void thread_Uj_fu_331_p3();
    void thread_a_V_cast_fu_221_p1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_exitcond3_fu_225_p2();
    void thread_exitcond4_fu_525_p2();
    void thread_exitcond5_fu_297_p2();
    void thread_exitcond6_fu_570_p2();
    void thread_exitcond_fu_673_p2();
    void thread_i_11_fu_231_p2();
    void thread_i_12_fu_679_p2();
    void thread_i_13_fu_656_p2();
    void thread_i_1_cast_fu_521_p1();
    void thread_j_1_cast3_cast_fu_566_p1();
    void thread_j_1_cast3_fu_562_p1();
    void thread_j_6_fu_303_p2();
    void thread_j_7_fu_576_p2();
    void thread_loc_V_fu_722_p1();
    void thread_or_cond_fu_605_p2();
    void thread_p_Result_16_fu_422_p2();
    void thread_p_Result_17_fu_498_p2();
    void thread_p_Result_s_fu_832_p2();
    void thread_p_demorgan_fu_808_p2();
    void thread_p_shl1_cast_fu_263_p1();
    void thread_p_shl2_cast_fu_623_p1();
    void thread_p_shl3_cast_fu_635_p1();
    void thread_p_shl_cast_fu_251_p1();
    void thread_pp_V_address0();
    void thread_pp_V_ce0();
    void thread_pp_V_we0();
    void thread_pps_V_address0();
    void thread_pps_V_ce0();
    void thread_pps_V_d0();
    void thread_pps_V_we0();
    void thread_r_V_8_fu_557_p1();
    void thread_r_V_fu_547_p4();
    void thread_rev5_fu_588_p2();
    void thread_tmp_183_fu_283_p2();
    void thread_tmp_184_fu_542_p1();
    void thread_tmp_185_fu_531_p2();
    void thread_tmp_186_fu_537_p1();
    void thread_tmp_187_fu_309_p2();
    void thread_tmp_188_fu_325_p2();
    void thread_tmp_189_cast_fu_339_p1();
    void thread_tmp_193_fu_699_p2();
    void thread_tmp_194_fu_713_p1();
    void thread_tmp_196_fu_594_p2();
    void thread_tmp_197_fu_599_p2();
    void thread_tmp_198_cast_fu_611_p1();
    void thread_tmp_199_fu_662_p1();
    void thread_tmp_200_fu_666_p2();
    void thread_tmp_290_fu_243_p3();
    void thread_tmp_291_fu_255_p3();
    void thread_tmp_292_fu_267_p2();
    void thread_tmp_293_fu_343_p2();
    void thread_tmp_294_fu_615_p3();
    void thread_tmp_295_fu_627_p3();
    void thread_tmp_296_fu_639_p2();
    void thread_tmp_297_fu_645_p2();
    void thread_tmp_299_cast_fu_512_p1();
    void thread_tmp_303_cast_fu_651_p1();
    void thread_tmp_358_fu_348_p2();
    void thread_tmp_359_fu_352_p4();
    void thread_tmp_360_fu_361_p2();
    void thread_tmp_361_fu_365_p2();
    void thread_tmp_362_fu_370_p2();
    void thread_tmp_363_fu_374_p3();
    void thread_tmp_364_fu_382_p3();
    void thread_tmp_365_fu_389_p3();
    void thread_tmp_366_fu_396_p2();
    void thread_tmp_367_fu_402_p1();
    void thread_tmp_368_fu_406_p1();
    void thread_tmp_369_fu_410_p2();
    void thread_tmp_370_fu_416_p2();
    void thread_tmp_372_fu_432_p2();
    void thread_tmp_373_fu_436_p2();
    void thread_tmp_374_fu_440_p2();
    void thread_tmp_375_fu_445_p2();
    void thread_tmp_376_fu_449_p3();
    void thread_tmp_377_fu_457_p3();
    void thread_tmp_378_fu_465_p3();
    void thread_tmp_379_fu_472_p2();
    void thread_tmp_380_fu_478_p1();
    void thread_tmp_381_fu_482_p1();
    void thread_tmp_382_fu_486_p2();
    void thread_tmp_383_fu_492_p2();
    void thread_tmp_385_fu_428_p1();
    void thread_tmp_386_fu_504_p1();
    void thread_tmp_387_fu_718_p1();
    void thread_tmp_388_fu_726_p2();
    void thread_tmp_389_fu_730_p2();
    void thread_tmp_390_fu_735_p3();
    void thread_tmp_391_fu_741_p3();
    void thread_tmp_392_fu_747_p3();
    void thread_tmp_393_fu_754_p2();
    void thread_tmp_394_fu_760_p1();
    void thread_tmp_395_fu_764_p1();
    void thread_tmp_396_fu_768_p1();
    void thread_tmp_397_fu_772_p2();
    void thread_tmp_398_fu_778_p4();
    void thread_tmp_399_fu_788_p3();
    void thread_tmp_400_fu_796_p2();
    void thread_tmp_401_fu_802_p2();
    void thread_tmp_402_fu_814_p2();
    void thread_tmp_403_fu_820_p2();
    void thread_tmp_404_fu_826_p2();
    void thread_tmp_fu_516_p1();
    void thread_tmp_s_fu_237_p2();
    void thread_ult_fu_582_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
