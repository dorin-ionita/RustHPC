; ModuleID = '/home/dorin/wave2/wave/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scn_index = common global i32 0, align 4
@scenario_structure_c = common global [80 x i32] zeroinitializer
@scenario_source_y = common global i32 0
@scenario_source_x = common global i32 0
@scenario_source_radi = common global i32 0
@scenario_source_p_am = common global double 0.000000e+00
@scenario_ny = common global i32 0
@scenario_nx = common global i32 0
@scenario_nr_struct = common global i32 0
@scenario_TIME_STEP = common global double 0.000000e+00
@scenario_SAVE_TIME = common global i32 0
@scenario_MAX_TIME = common global double 0.000000e+00
@scenario_H = common global double 0.000000e+00
@s_compute_acoustics_s = internal unnamed_addr constant [20 x i8] c"s_compute_acoustics\00"
@ny = common global i32 0, align 4
@nx = common global i32 0, align 4
@num_scenarios = global i32 1, align 4
@memset_uc_str = internal unnamed_addr constant [10 x i8] c"memset_uc\00"
@memset_ub_str = internal unnamed_addr constant [10 x i8] c"memset_ub\00"
@memset_ua_str = internal unnamed_addr constant [10 x i8] c"memset_ua\00"
@memcpy_OC_result_OC_s = internal unnamed_addr constant [21 x i8] c"memcpy.result.uc.gep\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1947]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@hls_KD_KD_cordic_KD_2 = internal unnamed_addr constant [142 x i8] c"hls::cordic::addsub<0, 0, ap_fixed<79, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<79, 3, (ap_q_mode)0, (ap_o_mode)3, 0>, ap_uint<1> >.region\00"
@hls_KD_KD_cordic_KD_1 = internal unnamed_addr constant [142 x i8] c"hls::cordic::addsub<0, 0, ap_fixed<79, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<79, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_uint<1> >.region\00"
@hls_KD_KD_cordic_KD = internal unnamed_addr constant [135 x i8] c"hls::cordic::addsub<0, 0, ap_fixed<79, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<79, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, bool>.region\00"
@hls_ref_4oPi_table_s = internal unnamed_addr constant [10 x i256] [i256 54157620742477409023451113735280473968, i256 18428883373056725475459024596439793651824491331936921676307065986443608256856, i256 24807674335876916025220943881364037032235655785459805678820732050680979940487, i256 49657426946285911516143862683954524439453209068679387659996083095802691375393, i256 28735081197238912263918043037224889742977788576962938114602108821422673809021, i256 26416323975267701614615373657884463778488778810471912373752054288695768999427, i256 17698671906220588896986889117163936587274426108877982769218980569827710780013, i256 -1901538881817016750063614551403249245877822812259027945582885686676516406178, i256 -19983814332022614214602673062907395704690615285876555462202267809922793908414, i256 -22047059367766959504004315379289636692054249736610881819683959797952897282681]
@hls_cordic_ctab_tab = internal unnamed_addr constant [128 x i126] [i126 -18256305226174194124613628535325128908, i126 39442776452007029438581988151662170528, i126 20840479833484141535907734465581556094, i126 10578952970703094087978879161197675639, i126 5310005101453174985675347574176397365, i126 2657591115466887314119419599185582276, i126 1329119838776566165767415771090515808, i126 664600476781209930782809735563259991, i126 332305308760902745757206114308150239, i126 166153288198498015084967484089993543, i126 83076723327184848864159991914295098, i126 41538371567105655170464436460279954, i126 20769187021492645509723191025817333, i126 10384593665488820748005411471848144, i126 5192296852087223271663992833358155, i126 2596148428461463268305855343910053, i126 1298074214532963088845478733246034, i126 649037107304260476279099458567081, i126 324518553656852604622213216067037, i126 162259276829016598121458871234286, i126 81129638414582086037024072497015, i126 40564819207300266390548884732859, i126 20282409603651286116779049016797, i126 10141204801825787173577600358126, i126 5070602400912911601187309660855, i126 2535301200456458052393468515669, i126 1267650600228229307671710968490, i126 633825300114114689020227573077, i126 316912650057057348908160297642, i126 158456325028528675003835962709, i126 79228162514264337570637458090, i126 39614081257132168793908663637, i126 19807040628566084398028073642, i126 9903520314283042199148254549, i126 4951760157141521099590904490, i126 2475880078570760549797549397, i126 1237940039285380274899036842, i126 618970019642690137449551189, i126 309485009821345068724779690, i126 154742504910672534362390357, i126 77371252455336267181195242, i126 38685626227668133590597629, i126 19342813113834066795298815, i126 9671406556917033397649407, i126 4835703278458516698824703, i126 2417851639229258349412351, i126 1208925819614629174706175, i126 604462909807314587353087, i126 302231454903657293676543, i126 151115727451828646838271, i126 75557863725914323419135, i126 37778931862957161709567, i126 18889465931478580854783, i126 9444732965739290427391, i126 4722366482869645213695, i126 2361183241434822606847, i126 1180591620717411303423, i126 590295810358705651711, i126 295147905179352825855, i126 147573952589676412927, i126 73786976294838206463, i126 36893488147419103231, i126 18446744073709551615, i126 9223372036854775807, i126 4611686018427387903, i126 2305843009213693951, i126 1152921504606846975, i126 576460752303423487, i126 288230376151711743, i126 144115188075855871, i126 72057594037927935, i126 36028797018963967, i126 18014398509481983, i126 9007199254740991, i126 4503599627370495, i126 2251799813685247, i126 1125899906842623, i126 562949953421311, i126 281474976710655, i126 140737488355327, i126 70368744177663, i126 35184372088831, i126 17592186044415, i126 8796093022207, i126 4398046511103, i126 2199023255551, i126 1099511627775, i126 549755813887, i126 274877906943, i126 137438953471, i126 68719476735, i126 34359738367, i126 17179869183, i126 8589934591, i126 4294967295, i126 2147483647, i126 1073741823, i126 536870911, i126 268435455, i126 134217727, i126 67108863, i126 33554431, i126 16777215, i126 8388607, i126 4194303, i126 2097151, i126 1048575, i126 524287, i126 262143, i126 131071, i126 65535, i126 32767, i126 16383, i126 8191, i126 4095, i126 2047, i126 1023, i126 511, i126 255, i126 127, i126 63, i126 31, i126 15, i126 7, i126 3, i126 1, i126 0, i126 0]
@gain = common global double 0.000000e+00, align 8
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@TIME_STEP = common global double 0.000000e+00, align 8
@SAVE_TIME = common global i32 0, align 4
@MAX_TIME = common global double 0.000000e+00, align 8
@H = common global double 0.000000e+00, align 8
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str1804 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define internal fastcc double @sin_cos_range_redux_(double %t_in) readnone {
_ZrsILi78ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit:
  %t_in_read = call double @_ssdm_op_Read.ap_auto.double(double %t_in)
  %p_Val2_3 = bitcast double %t_in_read to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_3, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_3, i32 52, i32 62)
  %loc_V_1 = trunc i64 %p_Val2_3 to i52
  %tmp_i_cast = zext i11 %loc_V to i12
  %exp = add i12 -1023, %tmp_i_cast
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %exp, i32 11)
  br i1 %tmp_3, label %0, label %_ZlsILi53ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i

_ZlsILi53ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i: ; preds = %_ZrsILi78ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %r_V_5 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1)
  %addr_V = add i12 -947, %tmp_i_cast
  %p_Result_i_i = call i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12 %addr_V, i32 7, i32 10)
  %tmp_i_i = zext i4 %p_Result_i_i to i64
  %hls_ref_4oPi_table_s = getelementptr [10 x i256]* @hls_ref_4oPi_table_s, i64 0, i64 %tmp_i_i
  %table_256_V = load i256* %hls_ref_4oPi_table_s, align 32
  %tmp_4 = trunc i12 %addr_V to i7
  %tmp_199_i_i = zext i7 %tmp_4 to i256
  %r_V_6 = shl i256 %table_256_V, %tmp_199_i_i
  %ret_V_5 = call i125 @_ssdm_op_PartSelect.i125.i256.i32.i32(i256 %r_V_6, i32 131, i32 255)
  %p_Val2_11 = call fastcc i178 @big_mult_v3small(i125 %ret_V_5, i53 %r_V_5)
  %h_fract_V = call i78 @_ssdm_op_PartSelect.i78.i178.i32.i32(i178 %p_Val2_11, i32 44, i32 121)
  %p_Val2_9 = call i3 @_ssdm_op_PartSelect.i3.i178.i32.i32(i178 %p_Val2_11, i32 122, i32 124)
  %m_m_V = call fastcc i188 @"big_mult_v3<94, 17>"(i78 %h_fract_V)
  %prod_adj_V = call i79 @_ssdm_op_PartSelect.i79.i188.i32.i32(i188 %m_m_V, i32 77, i32 155)
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i178.i32(i178 %p_Val2_11, i32 122)
  %tmp_185_i = sub i79 -129718850602772264754589, %prod_adj_V
  %tmp_133_i = call i78 @_ssdm_op_PartSelect.i78.i188.i32.i32(i188 %m_m_V, i32 78, i32 155)
  %tmp_134_i = call i78 @_ssdm_op_PartSelect.i78.i79.i32.i32(i79 %tmp_185_i, i32 1, i32 78)
  %tmp_135_i = select i1 %tmp_5, i78 %tmp_134_i, i78 %tmp_133_i
  br label %"range_redux_payne_hanek<16, 78, double>.exit"

; <label>:0                                       ; preds = %_ZrsILi78ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %r_V = call i78 @_ssdm_op_BitConcatenate.i78.i1.i52.i25(i1 true, i52 %loc_V_1, i25 0)
  %op2_assign = sub i12 1022, %tmp_i_cast
  %op2_assign_i_cast = sext i12 %op2_assign to i32
  %tmp_222_i_i = zext i32 %op2_assign_i_cast to i78
  %tmp_223_i_i = lshr i78 %r_V, %tmp_222_i_i
  br label %"range_redux_payne_hanek<16, 78, double>.exit"

"range_redux_payne_hanek<16, 78, double>.exit":   ; preds = %0, %_ZlsILi53ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i
  %k_V = phi i3 [ %p_Val2_9, %_ZlsILi53ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i ], [ 0, %0 ]
  %dout_V = phi i78 [ %tmp_135_i, %_ZlsILi53ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i ], [ %tmp_223_i_i, %0 ]
  %r_V_7 = call i76 @_ssdm_op_PartSelect.i76.i78.i32.i32(i78 %dout_V, i32 2, i32 77)
  %loc_V_2 = zext i76 %r_V_7 to i79
  br label %1

; <label>:1                                       ; preds = %"operator>>.exit100.i", %"range_redux_payne_hanek<16, 78, double>.exit"
  %p_Val2_7 = phi i79 [ %loc_V_2, %"range_redux_payne_hanek<16, 78, double>.exit" ], [ %tz_V, %"operator>>.exit100.i" ]
  %p_Val2_6 = phi i79 [ 0, %"range_redux_payne_hanek<16, 78, double>.exit" ], [ %ty_V, %"operator>>.exit100.i" ]
  %p_Val2_5 = phi i79 [ 45882734510562557198175, %"range_redux_payne_hanek<16, 78, double>.exit" ], [ %tx_V, %"operator>>.exit100.i" ]
  %sh_assign = phi i7 [ 0, %"range_redux_payne_hanek<16, 78, double>.exit" ], [ %k, %"operator>>.exit100.i" ]
  %exitcond_i = icmp eq i7 %sh_assign, -50
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 78, i64 78, i64 78)
  %k = add i7 %sh_assign, 1
  br i1 %exitcond_i, label %"cordic_circ_v1<78, 0, 0, 0, 79, 3, 79, 3>.exit_ifconv", label %"operator>>.exit100.i"

"operator>>.exit100.i":                           ; preds = %1
  %d_V = call i1 @_ssdm_op_BitSelect.i1.i79.i32(i79 %p_Val2_7, i32 77)
  %tmp_s = zext i7 %sh_assign to i79
  %y_s_V = ashr i79 %p_Val2_6, %tmp_s
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([142 x i8]* @hls_KD_KD_cordic_KD_1)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i = sub i79 0, %y_s_V
  %p_Val2_23 = select i1 %d_V, i79 %y_s_V, i79 %p_Val2_i
  %tx_V = add i79 %p_Val2_5, %p_Val2_23
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([142 x i8]* @hls_KD_KD_cordic_KD_1, i32 %rbegin)
  %x_s_V = ashr i79 %p_Val2_5, %tmp_s
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([135 x i8]* @hls_KD_KD_cordic_KD)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i3 = sub i79 0, %x_s_V
  %p_Val2_24 = select i1 %d_V, i79 %p_Val2_i3, i79 %x_s_V
  %ty_V = add i79 %p_Val2_6, %p_Val2_24
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([135 x i8]* @hls_KD_KD_cordic_KD, i32 %rbegin1)
  %tmp_28 = zext i7 %sh_assign to i64
  %hls_cordic_ctab_tab = getelementptr [128 x i126]* @hls_cordic_ctab_tab, i64 0, i64 %tmp_28
  %p_Val2_25 = load i126* %hls_cordic_ctab_tab, align 16
  %p_Val2_17_cast = call i76 @_ssdm_op_PartSelect.i76.i126.i32.i32(i126 %p_Val2_25, i32 50, i32 125)
  %tmp_43 = call i1 @_ssdm_op_BitSelect.i1.i126.i32(i126 %p_Val2_25, i32 49)
  %tmp_188_cast = zext i1 %tmp_43 to i76
  %p_Val2_27 = add i76 %tmp_188_cast, %p_Val2_17_cast
  %p_Val2_18_cast = zext i76 %p_Val2_27 to i77
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([142 x i8]* @hls_KD_KD_cordic_KD_2)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i9 = sub i77 0, %p_Val2_18_cast
  %p_Val2_s = select i1 %d_V, i77 %p_Val2_18_cast, i77 %p_Val2_i9
  %p_Val2_cast = sext i77 %p_Val2_s to i79
  %tz_V = add i79 %p_Val2_7, %p_Val2_cast
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([142 x i8]* @hls_KD_KD_cordic_KD_2, i32 %rbegin7)
  br label %1

"cordic_circ_v1<78, 0, 0, 0, 79, 3, 79, 3>.exit_ifconv": ; preds = %1
  %tmp = icmp eq i76 %r_V_7, 0
  %tmp_7 = trunc i79 %p_Val2_6 to i77
  %r_V_8 = call i78 @_ssdm_op_BitConcatenate.i78.i77.i1(i77 %tmp_7, i1 false)
  %tmp_8 = trunc i79 %p_Val2_5 to i77
  %r_V_9 = call i78 @_ssdm_op_BitConcatenate.i78.i77.i1(i77 %tmp_8, i1 false)
  %p_Val2_13 = select i1 %tmp, i78 0, i78 %r_V_8
  %p_Val2_16 = select i1 %tmp, i78 -151115727451828646838272, i78 %r_V_9
  %p_Result_i1 = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_13, i32 62, i32 77)
  %p_Result_2 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_i1, i16 -32768)
  %p_Result_4_i = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_13, i32 46, i32 61)
  %p_Result_3 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_4_i, i16 -32768)
  %p_Result_6_i = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_13, i32 30, i32 45)
  %p_Result_4 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_6_i, i16 -32768)
  %p_Result_8_i = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_13, i32 14, i32 29)
  %p_Result_5 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_8_i, i16 -32768)
  %c1 = call i32 @llvm.ctlz.i32(i32 %p_Result_2, i1 true)
  %c2 = call i32 @llvm.ctlz.i32(i32 %p_Result_3, i1 true)
  %c3 = call i32 @llvm.ctlz.i32(i32 %p_Result_4, i1 true)
  %c4 = call i32 @llvm.ctlz.i32(i32 %p_Result_5, i1 true)
  %tmp_i1 = zext i32 %c1 to i78
  %tmp_i1_35 = shl i78 %p_Val2_13, %tmp_i1
  %tmp_197_i = icmp eq i32 %c1, 16
  %tmp_9 = trunc i32 %c2 to i11
  %shift = add nsw i32 %c2, 16
  %tmp_198_i = zext i32 %c2 to i78
  %tmp_199_i = shl i78 %tmp_i1_35, %tmp_198_i
  %tmp_200_i = icmp eq i32 %c2, 16
  %shift_1 = add nsw i32 %c3, %shift
  %tmp_201_i = zext i32 %c3 to i78
  %tmp_202_i = shl i78 %tmp_199_i, %tmp_201_i
  %tmp_203_i = icmp eq i32 %c3, 16
  %shift_2 = add nsw i32 %c4, %shift_1
  %tmp_204_i = zext i32 %c4 to i78
  %tmp_205_i = shl i78 %tmp_202_i, %tmp_204_i
  %tmp5 = and i1 %tmp_200_i, %tmp_203_i
  %sel_tmp1_i = and i1 %tmp5, %tmp_197_i
  %sel_tmp5_i = xor i1 %tmp_200_i, true
  %sel_tmp6_i = and i1 %tmp_197_i, %sel_tmp5_i
  %tmp_6 = add i11 %tmp_9, 16
  %tmp_12 = trunc i32 %shift_2 to i11
  %tmp_15 = trunc i32 %shift_1 to i11
  %tmp_17 = select i1 %sel_tmp1_i, i11 %tmp_12, i11 %tmp_15
  %tmp_18 = trunc i32 %c1 to i11
  %tmp_19 = select i1 %tmp_197_i, i11 %tmp_17, i11 %tmp_18
  %tmp_1 = select i1 %sel_tmp6_i, i11 %tmp_6, i11 %tmp_19
  %tmp_2 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_199_i, i32 25, i32 76)
  %tmp_22 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_205_i, i32 25, i32 76)
  %tmp_31 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_202_i, i32 25, i32 76)
  %tmp_32 = select i1 %sel_tmp1_i, i52 %tmp_22, i52 %tmp_31
  %tmp_10 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_i1_35, i32 25, i32 76)
  %tmp_11 = select i1 %tmp_197_i, i52 %tmp_32, i52 %tmp_10
  %loc_V_3 = select i1 %sel_tmp6_i, i52 %tmp_2, i52 %tmp_11
  %tmp_206_i = icmp eq i78 %p_Val2_13, 0
  %phitmp_i = sub i11 1023, %tmp_1
  %out_exp_V = select i1 %tmp_206_i, i11 0, i11 %phitmp_i
  %p_Result_6 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 false, i11 %out_exp_V, i52 %loc_V_3)
  %tmp_s_out = bitcast i64 %p_Result_6 to double
  %p_Result_i2 = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_16, i32 62, i32 77)
  %p_Result_7 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_i2, i16 -32768)
  %p_Result_4_i1 = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_16, i32 46, i32 61)
  %p_Result_8 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_4_i1, i16 -32768)
  %p_Result_6_i1 = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_16, i32 30, i32 45)
  %p_Result_9 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_6_i1, i16 -32768)
  %p_Result_8_i1 = call i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78 %p_Val2_16, i32 14, i32 29)
  %p_Result_10 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %p_Result_8_i1, i16 -32768)
  %c1_1 = call i32 @llvm.ctlz.i32(i32 %p_Result_7, i1 true)
  %c2_1 = call i32 @llvm.ctlz.i32(i32 %p_Result_8, i1 true)
  %c3_1 = call i32 @llvm.ctlz.i32(i32 %p_Result_9, i1 true)
  %c4_1 = call i32 @llvm.ctlz.i32(i32 %p_Result_10, i1 true)
  %tmp_i = zext i32 %c1_1 to i78
  %tmp_i2 = shl i78 %p_Val2_16, %tmp_i
  %tmp_197_i1 = icmp eq i32 %c1_1, 16
  %tmp_33 = trunc i32 %c2_1 to i11
  %shift_5 = add nsw i32 %c2_1, 16
  %tmp_198_i1 = zext i32 %c2_1 to i78
  %tmp_199_i1 = shl i78 %tmp_i2, %tmp_198_i1
  %tmp_200_i1 = icmp eq i32 %c2_1, 16
  %shift_6 = add nsw i32 %c3_1, %shift_5
  %tmp_201_i1 = zext i32 %c3_1 to i78
  %tmp_202_i1 = shl i78 %tmp_199_i1, %tmp_201_i1
  %tmp_203_i1 = icmp eq i32 %c3_1, 16
  %shift_7 = add nsw i32 %c4_1, %shift_6
  %tmp_204_i1 = zext i32 %c4_1 to i78
  %tmp_205_i1 = shl i78 %tmp_202_i1, %tmp_204_i1
  %tmp15 = and i1 %tmp_200_i1, %tmp_203_i1
  %sel_tmp1_i1 = and i1 %tmp15, %tmp_197_i1
  %sel_tmp5_i1 = xor i1 %tmp_200_i1, true
  %sel_tmp6_i1 = and i1 %tmp_197_i1, %sel_tmp5_i1
  %tmp_13 = add i11 %tmp_33, 16
  %tmp_34 = trunc i32 %shift_7 to i11
  %tmp_35 = trunc i32 %shift_6 to i11
  %tmp_36 = select i1 %sel_tmp1_i1, i11 %tmp_34, i11 %tmp_35
  %tmp_37 = trunc i32 %c1_1 to i11
  %tmp_38 = select i1 %tmp_197_i1, i11 %tmp_36, i11 %tmp_37
  %tmp_14 = select i1 %sel_tmp6_i1, i11 %tmp_13, i11 %tmp_38
  %tmp_16 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_199_i1, i32 25, i32 76)
  %tmp_39 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_205_i1, i32 25, i32 76)
  %tmp_40 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_202_i1, i32 25, i32 76)
  %tmp_41 = select i1 %sel_tmp1_i1, i52 %tmp_39, i52 %tmp_40
  %tmp_20 = call i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78 %tmp_i2, i32 25, i32 76)
  %tmp_21 = select i1 %tmp_197_i1, i52 %tmp_41, i52 %tmp_20
  %loc_V_4 = select i1 %sel_tmp6_i1, i52 %tmp_16, i52 %tmp_21
  %tmp_206_i1 = icmp eq i78 %p_Val2_16, 0
  %phitmp_i1 = sub i11 1023, %tmp_14
  %out_exp_V_1 = select i1 %tmp_206_i1, i11 0, i11 %phitmp_i1
  %p_Result_11 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 false, i11 %out_exp_V_1, i52 %loc_V_4)
  %tmp_c_out = bitcast i64 %p_Result_11 to double
  %tmp_23 = xor i3 %k_V, -1
  %sel = select i1 %p_Result_s, i3 %tmp_23, i3 %k_V
  %tmp_246_neg = xor i64 %p_Result_6, -9223372036854775808
  %tmp_24 = bitcast i64 %tmp_246_neg to double
  %tmp_245_neg = xor i64 %p_Result_11, -9223372036854775808
  %tmp_25 = bitcast i64 %tmp_245_neg to double
  %sel_tmp = icmp eq i3 %sel, -1
  %sel_tmp1 = select i1 %sel_tmp, double %tmp_24, double %tmp_s_out
  %sel_tmp2 = icmp eq i3 %sel, -2
  %sel_tmp3 = select i1 %sel_tmp2, double %tmp_25, double %sel_tmp1
  %sel_tmp4 = icmp eq i3 %sel, -3
  %sel_tmp5 = select i1 %sel_tmp4, double %tmp_25, double %sel_tmp3
  %sel_tmp6 = icmp eq i3 %sel, -4
  %sel_tmp7 = select i1 %sel_tmp6, double %tmp_24, double %sel_tmp5
  %sel_tmp8 = icmp eq i3 %sel, 2
  %sel_tmp9 = select i1 %sel_tmp8, double %tmp_c_out, double %sel_tmp7
  %sel_tmp10 = icmp eq i3 %sel, 1
  %s_out = select i1 %sel_tmp10, double %tmp_c_out, double %sel_tmp9
  %tmp_26 = icmp eq i11 %loc_V, -1
  %tmp_27 = icmp ult i11 %loc_V, 999
  %t_in_s_out = select i1 %tmp_27, double %t_in_read, double %s_out
  %s_out_write_assign = select i1 %tmp_26, double 0x7FFFFFFFFFFFFFFF, double %t_in_s_out
  ret double %s_out_write_assign
}

define void @s_compute_acoustics(double* %result) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double* %result) nounwind, !map !1333
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @s_compute_acoustics_s) nounwind
  %ua = alloca [10000 x double], align 8
  %ub = alloca [10000 x double], align 8
  %uc = alloca [10000 x double], align 8
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [12 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(double* %result, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  store i32 100, i32* @ny, align 4
  store i32 100, i32* @nx, align 4
  br label %meminst

meminst:                                          ; preds = %meminst45, %0
  %invdar = phi i7 [ 0, %0 ], [ %indvarinc, %meminst45 ]
  %phi_mul = phi i14 [ 0, %0 ], [ %next_mul, %meminst45 ]
  %next_mul = add i14 %phi_mul, 100
  %indvarinc = add i7 %invdar, 1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br label %meminst46

meminst46:                                        ; preds = %meminst46, %meminst
  %invdar1 = phi i7 [ 0, %meminst ], [ %indvarinc1, %meminst46 ]
  %indvarinc1 = add i7 %invdar1, 1
  %tmp_1_cast = zext i7 %invdar1 to i14
  %tmp_29 = add i14 %phi_mul, %tmp_1_cast
  %tmp_39_cast = zext i14 %tmp_29 to i64
  %ua_addr = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_39_cast
  store double 0.000000e+00, double* %ua_addr, align 8
  %tmp_2 = icmp eq i7 %invdar1, -29
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_ua_str) nounwind
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br i1 %tmp_2, label %meminst45, label %meminst46

meminst45:                                        ; preds = %meminst46
  %tmp_3 = icmp eq i7 %invdar, -29
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_ua_str) nounwind
  br i1 %tmp_3, label %meminst49.preheader, label %meminst

meminst49.preheader:                              ; preds = %meminst45
  br label %meminst49

meminst49:                                        ; preds = %meminst49.preheader, %meminst4952
  %invdar2 = phi i7 [ %indvarinc2, %meminst4952 ], [ 0, %meminst49.preheader ]
  %phi_mul5 = phi i14 [ %next_mul6, %meminst4952 ], [ 0, %meminst49.preheader ]
  %next_mul6 = add i14 %phi_mul5, 100
  %indvarinc2 = add i7 %invdar2, 1
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br label %meminst53

meminst53:                                        ; preds = %meminst53, %meminst49
  %invdar3 = phi i7 [ 0, %meminst49 ], [ %indvarinc3, %meminst53 ]
  %indvarinc3 = add i7 %invdar3, 1
  %tmp_5_cast = zext i7 %invdar3 to i14
  %tmp_32 = add i14 %phi_mul5, %tmp_5_cast
  %tmp_54_cast = zext i14 %tmp_32 to i64
  %ub_addr = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_54_cast
  store double 0.000000e+00, double* %ub_addr, align 8
  %tmp_6 = icmp eq i7 %invdar3, -29
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_ub_str) nounwind
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br i1 %tmp_6, label %meminst4952, label %meminst53

meminst4952:                                      ; preds = %meminst53
  %tmp_7 = icmp eq i7 %invdar2, -29
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_ub_str) nounwind
  br i1 %tmp_7, label %meminst56.preheader, label %meminst49

meminst56.preheader:                              ; preds = %meminst4952
  br label %meminst56

meminst56:                                        ; preds = %meminst56.preheader, %meminst5659
  %invdar4 = phi i7 [ %indvarinc4, %meminst5659 ], [ 0, %meminst56.preheader ]
  %phi_mul7 = phi i14 [ %next_mul8, %meminst5659 ], [ 0, %meminst56.preheader ]
  %next_mul8 = add i14 %phi_mul7, 100
  %indvarinc4 = add i7 %invdar4, 1
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br label %meminst60

meminst60:                                        ; preds = %meminst60, %meminst56
  %invdar5 = phi i7 [ 0, %meminst56 ], [ %indvarinc5, %meminst60 ]
  %indvarinc5 = add i7 %invdar5, 1
  %tmp_9_cast = zext i7 %invdar5 to i14
  %tmp_35 = add i14 %phi_mul7, %tmp_9_cast
  %tmp_94_cast = zext i14 %tmp_35 to i64
  %uc_addr = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_94_cast
  store double 0.000000e+00, double* %uc_addr, align 8
  %tmp_s = icmp eq i7 %invdar5, -29
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_uc_str) nounwind
  %empty_45 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  br i1 %tmp_s, label %meminst5659, label %meminst60

meminst5659:                                      ; preds = %meminst60
  %tmp_10 = icmp eq i7 %invdar4, -29
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memset_uc_str) nounwind
  br i1 %tmp_10, label %1, label %meminst56

; <label>:1                                       ; preds = %meminst5659
  %source_active_assign = alloca i32
  store i32 100, i32* @scenario_nx, align 8
  store i32 100, i32* @scenario_ny, align 4
  store double 2.000000e-01, double* @scenario_H, align 8
  store double 3.000000e+01, double* @scenario_MAX_TIME, align 8
  store double 5.000000e-02, double* @scenario_TIME_STEP, align 8
  store i32 0, i32* @scenario_source_x, align 8
  store i32 0, i32* @scenario_source_y, align 4
  store double 2.000000e+02, double* @scenario_source_p_am, align 8
  store i32 0, i32* @scenario_nr_struct, align 4
  %radius = load i32* @scenario_source_radi, align 8
  %tmp_179_i3 = sitofp i32 %radius to double
  %tmp_179_i21_to_int = bitcast double %tmp_179_i3 to i64
  %tmp = trunc i64 %tmp_179_i21_to_int to i52
  %notrhs8 = icmp eq i52 %tmp, 0
  store i32 1, i32* %source_active_assign
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %1
  %step = phi i32 [ 0, %1 ], [ %step_1, %.loopexit.backedge ]
  %MAX_TIME_load = load double* @MAX_TIME, align 8
  %TIME_STEP_load = load double* @TIME_STEP, align 8
  %x_assign = fdiv double %MAX_TIME_load, %TIME_STEP_load
  %p_Val2_s = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_5 = trunc i64 %p_Val2_s to i52
  %p_Result_12 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_5) nounwind
  %tmp_i_i = zext i53 %p_Result_12 to i136
  %tmp_i_i_i_cast = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_47 = sub i11 1023, %loc_V
  %tmp_i_i_cast = sext i11 %tmp_i_i_47 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_239_i_i = zext i32 %sh_assign_1_cast to i136
  %tmp_239_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_240_i_i = lshr i53 %p_Result_12, %tmp_239_i_i_cast
  %tmp_241_i_i = shl i136 %tmp_i_i, %tmp_239_i_i
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_240_i_i, i32 52)
  %tmp_38 = zext i1 %tmp_50 to i32
  %tmp_39 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_241_i_i, i32 52, i32 83)
  %p_Val2_30 = select i1 %isNeg, i32 %tmp_38, i32 %tmp_39
  %p_Val2_i_i = sub i32 0, %p_Val2_30
  %p_Val2_32 = select i1 %p_Result_s, i32 %p_Val2_i_i, i32 %p_Val2_30
  %tmp_11 = icmp slt i32 %step, %p_Val2_32
  %step_1 = add nsw i32 1, %step
  br i1 %tmp_11, label %2, label %burst.wr.header.preheader

burst.wr.header.preheader:                        ; preds = %.loopexit
  %result_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.doubleP(double* %result, i32 10000) nounwind
  br label %burst.wr.header

; <label>:2                                       ; preds = %.loopexit
  %tmp_13 = srem i32 %step, 3
  %tmp_54 = trunc i32 %tmp_13 to i3
  %tmp_14 = icmp eq i3 %tmp_54, 0
  br i1 %tmp_14, label %3, label %26

; <label>:3                                       ; preds = %2
  %tmp_56 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_32, i32 31)
  %p_neg = sub i32 0, %p_Val2_32
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31)
  %tmp_41 = zext i31 %p_lshr to i32
  %p_neg_t = sub i32 0, %tmp_41
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_Val2_32, i32 1, i32 31)
  %tmp_42 = zext i31 %p_lshr_f to i32
  %tmp_15 = select i1 %tmp_56, i32 %p_neg_t, i32 %tmp_42
  %tmp_16 = icmp slt i32 %step, %tmp_15
  br i1 %tmp_16, label %4, label %5

; <label>:4                                       ; preds = %3
  %scenario_source_p_am = load double* @scenario_source_p_am, align 8
  call fastcc void @pulse_source(i32 %radius, i32 %step, double %scenario_source_p_am, [10000 x double]* %uc) nounwind
  br label %.loopexit13

; <label>:5                                       ; preds = %3
  %source_active_assign_1 = load i32* %source_active_assign
  %tmp_44 = icmp eq i32 %source_active_assign_1, 0
  br i1 %tmp_44, label %.loopexit13, label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %5
  br label %.preheader12

.preheader12.loopexit:                            ; preds = %.preheader11
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12.loopexit
  %x_assign_4 = phi i32 [ %i, %.preheader12.loopexit ], [ 0, %.preheader12.preheader ]
  %phi_mul9 = phi i64 [ %next_mul1, %.preheader12.loopexit ], [ 0, %.preheader12.preheader ]
  %tmp_94 = trunc i64 %phi_mul9 to i15
  %next_mul1 = add i64 100, %phi_mul9
  %ny_load = load i32* @ny, align 4
  %tmp_28 = icmp slt i32 %x_assign_4, %ny_load
  %i = add nsw i32 1, %x_assign_4
  br i1 %tmp_28, label %.preheader11.preheader, label %.loopexit13.loopexit

.preheader11.preheader:                           ; preds = %.preheader12
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader, %._crit_edge
  %y_assign_3 = phi i32 [ %j, %._crit_edge ], [ 0, %.preheader11.preheader ]
  %nx_load = load i32* @nx, align 4
  %tmp_31 = icmp slt i32 %y_assign_3, %nx_load
  %j = add nsw i32 %y_assign_3, 1
  br i1 %tmp_31, label %6, label %.preheader12.loopexit

; <label>:6                                       ; preds = %.preheader11
  %scenario_source_x_lo = load i32* @scenario_source_x, align 8
  %tmp_i = sub nsw i32 %scenario_source_x_lo, %x_assign_4
  %tmp_172_i = sitofp i32 %tmp_i to double
  %tmp_173_i = fmul double %tmp_172_i, %tmp_172_i
  %scenario_source_y_lo = load i32* @scenario_source_y, align 4
  %tmp_174_i = sub nsw i32 %scenario_source_y_lo, %y_assign_3
  %tmp_175_i = sitofp i32 %tmp_174_i to double
  %tmp_176_i = fmul double %tmp_175_i, %tmp_175_i
  %tmp_177_i = fadd double %tmp_173_i, %tmp_176_i
  %tmp_178_i = call double @llvm.sqrt.f64(double %tmp_177_i) nounwind
  %tmp_178_i_to_int = bitcast double %tmp_178_i to i64
  %tmp_34 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i_to_int, i32 52, i32 62)
  %tmp_106 = trunc i64 %tmp_178_i_to_int to i52
  %tmp_37 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs1 = icmp ne i11 %tmp_34, -1
  %notrhs1 = icmp eq i52 %tmp_106, 0
  %tmp_45 = or i1 %notrhs1, %notlhs1
  %notlhs2 = icmp ne i11 %tmp_37, -1
  %tmp_52 = or i1 %notrhs8, %notlhs2
  %tmp_62 = and i1 %tmp_45, %tmp_52
  %tmp_69 = fcmp ole double %tmp_178_i, %tmp_179_i3
  %tmp_77 = and i1 %tmp_62, %tmp_69
  br i1 %tmp_77, label %7, label %._crit_edge

; <label>:7                                       ; preds = %6
  %tmp_110 = trunc i32 %y_assign_3 to i15
  %tmp_113 = add i15 %tmp_94, %tmp_110
  %tmp_134_cast = zext i15 %tmp_113 to i64
  %ua_addr_1 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_134_cast
  %ub_addr_1 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_134_cast
  %uc_addr_2 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_134_cast
  store double 0.000000e+00, double* %ua_addr_1, align 8
  store double 0.000000e+00, double* %ub_addr_1, align 8
  store double 0.000000e+00, double* %uc_addr_2, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %7
  br label %.preheader11

.loopexit13.loopexit:                             ; preds = %.preheader12
  store i32 0, i32* %source_active_assign
  br label %.loopexit13

.loopexit13:                                      ; preds = %.loopexit13.loopexit, %5, %4
  %source_active_assign_2 = load i32* %source_active_assign
  %tmp_i5 = icmp ne i32 %source_active_assign_2, 0
  br label %.loopexit490

.loopexit490.loopexit:                            ; preds = %.preheader9
  br label %.loopexit490

.loopexit490:                                     ; preds = %.loopexit490.loopexit, %.loopexit13
  %x_assign_7 = phi i32 [ 0, %.loopexit13 ], [ %i_1, %.loopexit490.loopexit ]
  %phi_mul3 = phi i64 [ 0, %.loopexit13 ], [ %next_mul4, %.loopexit490.loopexit ]
  %tmp_109 = trunc i64 %phi_mul3 to i15
  %next_mul4 = add i64 100, %phi_mul3
  %ny_load_3 = load i32* @ny, align 4
  %tmp_36 = icmp slt i32 %x_assign_7, %ny_load_3
  %i_1 = add nsw i32 1, %x_assign_7
  br i1 %tmp_36, label %.preheader9.preheader, label %.loopexit.backedge.loopexit35

.preheader9.preheader:                            ; preds = %.loopexit490
  %tmp_116 = trunc i32 %i_1 to i15
  %tmp_117 = mul i15 100, %tmp_116
  %tmp_118 = trunc i32 %x_assign_7 to i15
  %tmp_121 = mul i15 100, %tmp_118
  %tmp_123 = add i15 -100, %tmp_121
  %tmp_164_i = icmp eq i32 %x_assign_7, 0
  br label %.preheader9

.preheader9:                                      ; preds = %25, %.preheader9.preheader
  %y_assign = phi i32 [ %j_3, %25 ], [ 0, %.preheader9.preheader ]
  %nx_load_3 = load i32* @nx, align 4
  %tmp_46 = icmp slt i32 %y_assign, %nx_load_3
  %j_3 = add nsw i32 %y_assign, 1
  br i1 %tmp_46, label %8, label %.loopexit490.loopexit

; <label>:8                                       ; preds = %.preheader9
  %tmp_i4 = or i32 %y_assign, %x_assign_7
  %tmp_i5_48 = icmp eq i32 %tmp_i4, 0
  %tmp_165_i = add nsw i32 %nx_load_3, -1
  %tmp_166_i = icmp eq i32 %tmp_165_i, %y_assign
  %ny_load_6 = load i32* @ny, align 4
  %tmp_167_i = add nsw i32 %ny_load_6, -1
  %tmp_168_i = icmp eq i32 %tmp_167_i, %x_assign_7
  %tmp_169_i = icmp eq i32 %y_assign, 0
  %or_cond1_i = and i1 %tmp_168_i, %tmp_169_i
  %sel_tmp1_i7 = xor i1 %tmp_i5_48, true
  %tmp130 = and i1 %tmp_166_i, %sel_tmp1_i7
  %sel_tmp3_i = and i1 %tmp130, %tmp_164_i
  %sel_tmp_i6 = select i1 %sel_tmp3_i, i3 -2, i3 -3
  %tmp_129 = or i1 %sel_tmp3_i, %tmp_i5_48
  %sel_tmp4_i = select i1 %tmp_129, i3 %sel_tmp_i6, i3 0
  %sel_tmp4_i_cast = zext i3 %sel_tmp4_i to i4
  %sel_tmp9_demorgan_i = and i1 %tmp_164_i, %tmp_166_i
  %sel_tmp9_i = xor i1 %sel_tmp9_demorgan_i, true
  %tmp132 = and i1 %sel_tmp1_i7, %sel_tmp9_i
  %sel_tmp10_i = and i1 %tmp132, %or_cond1_i
  %sel_tmp14_demorgan_i = or i1 %tmp_i5_48, %or_cond1_i
  %sel_tmp14_i = xor i1 %sel_tmp14_demorgan_i, true
  %tmp133 = and i1 %tmp_168_i, %sel_tmp14_i
  %tmp134 = xor i1 %sel_tmp9_demorgan_i, %tmp_166_i
  %sel_tmp20_i = and i1 %tmp134, %tmp133
  %sel_tmp11_i = select i1 %sel_tmp20_i, i4 7, i4 -8
  %tmp_131 = or i1 %sel_tmp20_i, %sel_tmp10_i
  %place_4 = select i1 %tmp_131, i4 %sel_tmp11_i, i4 %sel_tmp4_i_cast
  %tmp_53 = icmp eq i4 %place_4, 0
  br i1 %tmp_53, label %9, label %._crit_edge20

; <label>:9                                       ; preds = %8
  %tmp_58 = call fastcc i3 @on_edge(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_59 = icmp eq i3 %tmp_58, 0
  br i1 %tmp_59, label %10, label %._crit_edge20

; <label>:10                                      ; preds = %9
  %scenario_source_x_lo_1 = load i32* @scenario_source_x, align 8
  %tmp_i4_49 = sub nsw i32 %scenario_source_x_lo_1, %x_assign_7
  %tmp_172_i3 = sitofp i32 %tmp_i4_49 to double
  %tmp_173_i3 = fmul double %tmp_172_i3, %tmp_172_i3
  %scenario_source_y_lo_1 = load i32* @scenario_source_y, align 4
  %tmp_174_i3 = sub nsw i32 %scenario_source_y_lo_1, %y_assign
  %tmp_175_i3 = sitofp i32 %tmp_174_i3 to double
  %tmp_176_i3 = fmul double %tmp_175_i3, %tmp_175_i3
  %tmp_177_i3 = fadd double %tmp_173_i3, %tmp_176_i3
  %tmp_178_i3 = call double @llvm.sqrt.f64(double %tmp_177_i3) nounwind
  %tmp_178_i20_to_int = bitcast double %tmp_178_i3 to i64
  %tmp_141 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i20_to_int, i32 52, i32 62)
  %tmp_160 = trunc i64 %tmp_178_i20_to_int to i52
  %tmp_143 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs7 = icmp ne i11 %tmp_141, -1
  %notrhs7 = icmp eq i52 %tmp_160, 0
  %tmp_144 = or i1 %notrhs7, %notlhs7
  %notlhs8 = icmp ne i11 %tmp_143, -1
  %tmp_146 = or i1 %notrhs8, %notlhs8
  %tmp_147 = and i1 %tmp_144, %tmp_146
  %tmp_148 = fcmp ole double %tmp_178_i3, %tmp_179_i3
  %tmp_149 = and i1 %tmp_147, %tmp_148
  %demorgan = and i1 %tmp_149, %tmp_i5
  br i1 %demorgan, label %._crit_edge20, label %11

; <label>:11                                      ; preds = %10
  %tmp_67 = call fastcc i3 @on_structure_edge(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_68 = icmp eq i3 %tmp_67, 0
  br i1 %tmp_68, label %12, label %._crit_edge20

; <label>:12                                      ; preds = %11
  %tmp_73 = call fastcc i4 @on_structure_corner(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_74 = icmp eq i4 %tmp_73, 0
  br i1 %tmp_74, label %13, label %._crit_edge20

; <label>:13                                      ; preds = %12
  %tmp_79 = call fastcc i1 @in_structure(i32 %x_assign_7, i32 %y_assign) nounwind
  br i1 %tmp_79, label %._crit_edge20, label %14

; <label>:14                                      ; preds = %13
  %tmp_252 = trunc i32 %y_assign to i15
  %tmp_174 = add i15 %tmp_109, %tmp_252
  %tmp_174_cast = zext i15 %tmp_174 to i64
  %ua_addr_4 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_174_cast
  %ub_addr_4 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_174_cast
  %tmp_175 = add i15 %tmp_117, %tmp_252
  %tmp_175_cast = sext i15 %tmp_175 to i64
  %ub_addr_5 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_175_cast
  %tmp_176 = add i15 %tmp_123, %tmp_252
  %tmp_176_cast = sext i15 %tmp_176 to i64
  %ub_addr_6 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_176_cast
  %uc_addr_4 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_174_cast
  %ub_load = load double* %ub_addr_4, align 8
  %tmp_317_i = fmul double %ub_load, 2.000000e+00
  %ua_load = load double* %ua_addr_4, align 8
  %tmp_318_i = fsub double %tmp_317_i, %ua_load
  %gain_load = load double* @gain, align 8
  %ub_load_1 = load double* %ub_addr_5, align 8
  %tmp_321_i = fmul double %ub_load, 4.000000e+00
  %tmp_322_i = fsub double %ub_load_1, %tmp_321_i
  %ub_load_2 = load double* %ub_addr_6, align 8
  %tmp_325_i = fadd double %tmp_322_i, %ub_load_2
  %tmp_253 = trunc i32 %j_3 to i15
  %tmp_177 = add i15 %tmp_109, %tmp_253
  %tmp_177_cast = zext i15 %tmp_177 to i64
  %ub_addr_7 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_177_cast
  %ub_load_3 = load double* %ub_addr_7, align 8
  %tmp_328_i = fadd double %tmp_325_i, %ub_load_3
  %tmp_254 = trunc i32 %y_assign to i15
  %tmp_255 = add i15 -1, %tmp_254
  %tmp_178 = add i15 %tmp_109, %tmp_255
  %tmp_178_cast = zext i15 %tmp_178 to i64
  %ub_addr_8 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_178_cast
  %ub_load_4 = load double* %ub_addr_8, align 8
  %tmp_331_i = fadd double %tmp_328_i, %ub_load_4
  %tmp_332_i = fmul double %gain_load, %tmp_331_i
  %tmp_333_i = fadd double %tmp_318_i, %tmp_332_i
  store double %tmp_333_i, double* %uc_addr_4, align 8
  br label %25

._crit_edge20:                                    ; preds = %10, %13, %12, %11, %9, %8
  %place = call fastcc i3 @on_edge(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_81 = icmp eq i3 %place, 0
  br i1 %tmp_81, label %16, label %15

; <label>:15                                      ; preds = %._crit_edge20
  %tmp_256 = trunc i32 %y_assign to i15
  %tmp_179 = add i15 %tmp_117, %tmp_256
  %tmp_179_cast = sext i15 %tmp_179 to i64
  %ub_addr_9 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_179_cast
  %tmp_180 = add i15 %tmp_123, %tmp_256
  %tmp_180_cast = sext i15 %tmp_180 to i64
  %ub_addr_10 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_180_cast
  %ub_load_5 = load double* %ub_addr_9, align 8
  %tmp_257 = trunc i32 %y_assign to i15
  %tmp_258 = add i15 -1, %tmp_257
  %tmp_181 = add i15 %tmp_109, %tmp_258
  %tmp_181_cast = zext i15 %tmp_181 to i64
  %ub_addr_11 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_181_cast
  %ub_load_6 = load double* %ub_addr_11, align 8
  %ub_load_7 = load double* %ub_addr_10, align 8
  %tmp_259 = trunc i32 %j_3 to i15
  %tmp_182 = add i15 %tmp_109, %tmp_259
  %tmp_182_cast = zext i15 %tmp_182 to i64
  %ub_addr_12 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_182_cast
  %ub_load_8 = load double* %ub_addr_12, align 8
  %sel_tmp_i2 = icmp eq i3 %place, 2
  %sel_tmp1_i2 = select i1 %sel_tmp_i2, double %ub_load_8, double 0.000000e+00
  %sel_tmp2_i = icmp eq i3 %place, 3
  %sel_tmp3_i3 = select i1 %sel_tmp2_i, double %ub_load_7, double %sel_tmp1_i2
  %sel_tmp4_i3 = icmp eq i3 %place, -4
  %sel_tmp5_i = select i1 %sel_tmp4_i3, double %ub_load_6, double %sel_tmp3_i3
  %sel_tmp6_i = icmp eq i3 %place, 1
  %p_0_i2 = select i1 %sel_tmp6_i, double %ub_load_5, double %sel_tmp5_i
  %tmp_183 = add i15 %tmp_109, %tmp_256
  %tmp_183_cast = zext i15 %tmp_183 to i64
  %uc_addr_5 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_183_cast
  store double %p_0_i2, double* %uc_addr_5, align 8
  br label %24

; <label>:16                                      ; preds = %._crit_edge20
  br i1 %tmp_53, label %18, label %17

; <label>:17                                      ; preds = %16
  %tmp_260 = trunc i32 %j_3 to i15
  %tmp_184 = add i15 %tmp_109, %tmp_260
  %tmp_184_cast = zext i15 %tmp_184 to i64
  %ub_addr_13 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_184_cast
  %ub_load_9 = load double* %ub_addr_13, align 8
  %tmp_261 = trunc i32 %y_assign to i15
  %tmp_185 = add i15 %tmp_117, %tmp_261
  %tmp_185_cast = sext i15 %tmp_185 to i64
  %ub_addr_14 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_185_cast
  %tmp_186 = add i15 %tmp_123, %tmp_261
  %tmp_186_cast = sext i15 %tmp_186 to i64
  %ub_addr_15 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_186_cast
  %ub_load_10 = load double* %ub_addr_14, align 8
  %tmp_294_i = fadd double %ub_load_9, %ub_load_10
  %tmp_295_i = fmul double %tmp_294_i, 5.000000e-01
  %tmp_262 = trunc i32 %y_assign to i15
  %tmp_263 = add i15 -1, %tmp_262
  %tmp_187 = add i15 %tmp_109, %tmp_263
  %tmp_187_cast = zext i15 %tmp_187 to i64
  %ub_addr_16 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_187_cast
  %ub_load_11 = load double* %ub_addr_16, align 8
  %tmp_302_i = fadd double %ub_load_10, %ub_load_11
  %tmp_303_i = fmul double %tmp_302_i, 5.000000e-01
  %ub_load_12 = load double* %ub_addr_15, align 8
  %tmp_310_i = fadd double %ub_load_11, %ub_load_12
  %tmp_311_i = fmul double %tmp_310_i, 5.000000e-01
  %tmp_318_i3 = fadd double %ub_load_12, %ub_load_9
  %tmp_319_i = fmul double %tmp_318_i3, 5.000000e-01
  %sel_tmp_i3 = icmp eq i4 %place_4, -8
  %sel_tmp1_i3 = select i1 %sel_tmp_i3, double %tmp_319_i, double 0.000000e+00
  %sel_tmp2_i1 = icmp eq i4 %place_4, 7
  %sel_tmp3_i4 = select i1 %sel_tmp2_i1, double %tmp_311_i, double %sel_tmp1_i3
  %sel_tmp4_i4 = icmp eq i4 %place_4, 6
  %sel_tmp5_i1 = select i1 %sel_tmp4_i4, double %tmp_303_i, double %sel_tmp3_i4
  %sel_tmp6_i1 = icmp eq i4 %place_4, 5
  %p_0_i3 = select i1 %sel_tmp6_i1, double %tmp_295_i, double %sel_tmp5_i1
  %tmp_188 = add i15 %tmp_109, %tmp_261
  %tmp_188_cast = zext i15 %tmp_188 to i64
  %uc_addr_6 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_188_cast
  store double %p_0_i3, double* %uc_addr_6, align 8
  br label %23

; <label>:18                                      ; preds = %16
  %place_3 = call fastcc i3 @on_structure_edge(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_93 = icmp eq i3 %place_3, 0
  br i1 %tmp_93, label %20, label %19

; <label>:19                                      ; preds = %18
  %tmp_272 = trunc i32 %y_assign to i15
  %tmp_199 = add i15 %tmp_123, %tmp_272
  %tmp_199_cast = sext i15 %tmp_199 to i64
  %ub_addr_18 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_199_cast
  %tmp_200 = add i15 %tmp_117, %tmp_272
  %tmp_200_cast = sext i15 %tmp_200 to i64
  %ub_addr_19 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_200_cast
  %ub_load_14 = load double* %ub_addr_18, align 8
  %tmp_273 = trunc i32 %j_3 to i15
  %tmp_201 = add i15 %tmp_109, %tmp_273
  %tmp_201_cast = zext i15 %tmp_201 to i64
  %ub_addr_20 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_201_cast
  %ub_load_15 = load double* %ub_addr_20, align 8
  %ub_load_16 = load double* %ub_addr_19, align 8
  %tmp_274 = trunc i32 %y_assign to i15
  %tmp_275 = add i15 -1, %tmp_274
  %tmp_202 = add i15 %tmp_109, %tmp_275
  %tmp_202_cast = zext i15 %tmp_202 to i64
  %ub_addr_21 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_202_cast
  %ub_load_17 = load double* %ub_addr_21, align 8
  %sel_tmp_i5 = icmp eq i3 %place_3, 2
  %sel_tmp1_i5 = select i1 %sel_tmp_i5, double %ub_load_17, double 0.000000e+00
  %sel_tmp2_i3 = icmp eq i3 %place_3, 3
  %sel_tmp3_i6 = select i1 %sel_tmp2_i3, double %ub_load_16, double %sel_tmp1_i5
  %sel_tmp4_i6 = icmp eq i3 %place_3, -4
  %sel_tmp5_i3 = select i1 %sel_tmp4_i6, double %ub_load_15, double %sel_tmp3_i6
  %sel_tmp6_i3 = icmp eq i3 %place_3, 1
  %p_0_i4 = select i1 %sel_tmp6_i3, double %ub_load_14, double %sel_tmp5_i3
  %tmp_203 = add i15 %tmp_109, %tmp_272
  %tmp_203_cast = zext i15 %tmp_203 to i64
  %uc_addr_16 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_203_cast
  store double %p_0_i4, double* %uc_addr_16, align 8
  br label %22

; <label>:20                                      ; preds = %18
  %place_6 = call fastcc i4 @on_structure_corner(i32 %x_assign_7, i32 %y_assign) nounwind
  %tmp_101 = icmp eq i4 %place_6, 0
  br i1 %tmp_101, label %._crit_edge26, label %21

; <label>:21                                      ; preds = %20
  %tmp_288 = trunc i32 %y_assign to i15
  %tmp_289 = add i15 -1, %tmp_288
  %tmp_219 = add i15 %tmp_109, %tmp_289
  %tmp_219_cast = zext i15 %tmp_219 to i64
  %ub_addr_24 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_219_cast
  %ub_load_18 = load double* %ub_addr_24, align 8
  %tmp_290 = trunc i32 %y_assign to i15
  %tmp_220 = add i15 %tmp_123, %tmp_290
  %tmp_220_cast = sext i15 %tmp_220 to i64
  %ub_addr_25 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_220_cast
  %tmp_221 = add i15 %tmp_117, %tmp_290
  %tmp_221_cast = sext i15 %tmp_221 to i64
  %ub_addr_26 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_221_cast
  %ub_load_19 = load double* %ub_addr_25, align 8
  %tmp_254_i = fadd double %ub_load_18, %ub_load_19
  %tmp_255_i = fmul double %tmp_254_i, 5.000000e-01
  %tmp_291 = trunc i32 %j_3 to i15
  %tmp_222 = add i15 %tmp_109, %tmp_291
  %tmp_222_cast = zext i15 %tmp_222 to i64
  %ub_addr_27 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_222_cast
  %ub_load_20 = load double* %ub_addr_27, align 8
  %tmp_262_i = fadd double %ub_load_19, %ub_load_20
  %tmp_263_i = fmul double %tmp_262_i, 5.000000e-01
  %ub_load_21 = load double* %ub_addr_26, align 8
  %tmp_270_i = fadd double %ub_load_20, %ub_load_21
  %tmp_271_i = fmul double %tmp_270_i, 5.000000e-01
  %tmp_278_i = fadd double %ub_load_21, %ub_load_18
  %tmp_279_i = fmul double %tmp_278_i, 5.000000e-01
  %sel_tmp_i9 = icmp eq i4 %place_6, -8
  %sel_tmp1_i9 = select i1 %sel_tmp_i9, double %tmp_279_i, double 0.000000e+00
  %sel_tmp2_i6 = icmp eq i4 %place_6, 7
  %sel_tmp3_i9 = select i1 %sel_tmp2_i6, double %tmp_271_i, double %sel_tmp1_i9
  %sel_tmp4_i9 = icmp eq i4 %place_6, 6
  %sel_tmp5_i6 = select i1 %sel_tmp4_i9, double %tmp_263_i, double %sel_tmp3_i9
  %sel_tmp6_i6 = icmp eq i4 %place_6, 5
  %p_0_i7 = select i1 %sel_tmp6_i6, double %tmp_255_i, double %sel_tmp5_i6
  %tmp_223 = add i15 %tmp_109, %tmp_290
  %tmp_223_cast = zext i15 %tmp_223 to i64
  %uc_addr_22 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_223_cast
  store double %p_0_i7, double* %uc_addr_22, align 8
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %21, %20
  br label %22

; <label>:22                                      ; preds = %._crit_edge26, %19
  br label %23

; <label>:23                                      ; preds = %22, %17
  br label %24

; <label>:24                                      ; preds = %23, %15
  br label %25

; <label>:25                                      ; preds = %24, %14
  %tmp_312 = trunc i32 %y_assign to i15
  %tmp_249 = add i15 %tmp_109, %tmp_312
  %tmp_249_cast = zext i15 %tmp_249 to i64
  %ua_addr_31 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_249_cast
  store double 0.000000e+00, double* %ua_addr_31, align 8
  br label %.preheader9

; <label>:26                                      ; preds = %2
  %tmp_17 = icmp eq i3 %tmp_54, 1
  br i1 %tmp_17, label %27, label %50

; <label>:27                                      ; preds = %26
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_32, i32 31)
  %p_neg5 = sub i32 0, %p_Val2_32
  %p_lshr6 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg5, i32 1, i32 31)
  %tmp_47 = zext i31 %p_lshr6 to i32
  %p_neg_t7 = sub i32 0, %tmp_47
  %p_lshr_f8 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_Val2_32, i32 1, i32 31)
  %tmp_49 = zext i31 %p_lshr_f8 to i32
  %tmp_18 = select i1 %tmp_57, i32 %p_neg_t7, i32 %tmp_49
  %tmp_21 = icmp slt i32 %step, %tmp_18
  br i1 %tmp_21, label %28, label %29

; <label>:28                                      ; preds = %27
  %scenario_source_p_am_1 = load double* @scenario_source_p_am, align 8
  call fastcc void @pulse_source(i32 %radius, i32 %step, double %scenario_source_p_am_1, [10000 x double]* %ua) nounwind
  br label %.loopexit8

; <label>:29                                      ; preds = %27
  %source_active_assign_3 = load i32* %source_active_assign
  %tmp_70 = icmp eq i32 %source_active_assign_3, 0
  br i1 %tmp_70, label %.loopexit8, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %29
  br label %.preheader7

.preheader7.loopexit:                             ; preds = %.preheader6
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %.preheader7.loopexit
  %x_assign_5 = phi i32 [ %i_2, %.preheader7.loopexit ], [ 0, %.preheader7.preheader ]
  %phi_mul1 = phi i64 [ %next_mul2, %.preheader7.loopexit ], [ 0, %.preheader7.preheader ]
  %tmp_97 = trunc i64 %phi_mul1 to i15
  %next_mul2 = add i64 100, %phi_mul1
  %ny_load_1 = load i32* @ny, align 4
  %tmp_30 = icmp slt i32 %x_assign_5, %ny_load_1
  %i_2 = add nsw i32 1, %x_assign_5
  br i1 %tmp_30, label %.preheader6.preheader, label %.loopexit8.loopexit

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge27
  %y_assign_4 = phi i32 [ %j_1, %._crit_edge27 ], [ 0, %.preheader6.preheader ]
  %nx_load_1 = load i32* @nx, align 4
  %tmp_40 = icmp slt i32 %y_assign_4, %nx_load_1
  %j_1 = add nsw i32 %y_assign_4, 1
  br i1 %tmp_40, label %30, label %.preheader7.loopexit

; <label>:30                                      ; preds = %.preheader6
  %scenario_source_x_lo_2 = load i32* @scenario_source_x, align 8
  %tmp_i1 = sub nsw i32 %scenario_source_x_lo_2, %x_assign_5
  %tmp_172_i1 = sitofp i32 %tmp_i1 to double
  %tmp_173_i1 = fmul double %tmp_172_i1, %tmp_172_i1
  %scenario_source_y_lo_2 = load i32* @scenario_source_y, align 4
  %tmp_174_i1 = sub nsw i32 %scenario_source_y_lo_2, %y_assign_4
  %tmp_175_i1 = sitofp i32 %tmp_174_i1 to double
  %tmp_176_i1 = fmul double %tmp_175_i1, %tmp_175_i1
  %tmp_177_i1 = fadd double %tmp_173_i1, %tmp_176_i1
  %tmp_178_i1 = call double @llvm.sqrt.f64(double %tmp_177_i1) nounwind
  %tmp_178_i84_to_int = bitcast double %tmp_178_i1 to i64
  %tmp_80 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i84_to_int, i32 52, i32 62)
  %tmp_124 = trunc i64 %tmp_178_i84_to_int to i52
  %tmp_89 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs3 = icmp ne i11 %tmp_80, -1
  %notrhs3 = icmp eq i52 %tmp_124, 0
  %tmp_96 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i11 %tmp_89, -1
  %tmp_99 = or i1 %notrhs8, %notlhs4
  %tmp_102 = and i1 %tmp_96, %tmp_99
  %tmp_105 = fcmp ole double %tmp_178_i1, %tmp_179_i3
  %tmp_107 = and i1 %tmp_102, %tmp_105
  br i1 %tmp_107, label %31, label %._crit_edge27

; <label>:31                                      ; preds = %30
  %tmp_126 = trunc i32 %y_assign_4 to i15
  %tmp_130 = add i15 %tmp_97, %tmp_126
  %tmp_140_cast = zext i15 %tmp_130 to i64
  %ua_addr_2 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_140_cast
  %ub_addr_2 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_140_cast
  %uc_addr_3 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_140_cast
  store double 0.000000e+00, double* %ua_addr_2, align 8
  store double 0.000000e+00, double* %ub_addr_2, align 8
  store double 0.000000e+00, double* %uc_addr_3, align 8
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %30, %31
  br label %.preheader6

.loopexit8.loopexit:                              ; preds = %.preheader7
  store i32 0, i32* %source_active_assign
  br label %.loopexit8

.loopexit8:                                       ; preds = %.loopexit8.loopexit, %29, %28
  %source_active_assign_4 = load i32* %source_active_assign
  %tmp_i7 = icmp ne i32 %source_active_assign_4, 0
  br label %.loopexit488

.loopexit488.loopexit:                            ; preds = %.preheader4
  br label %.loopexit488

.loopexit488:                                     ; preds = %.loopexit488.loopexit, %.loopexit8
  %x_assign_8 = phi i32 [ 0, %.loopexit8 ], [ %i_3, %.loopexit488.loopexit ]
  %phi_mul4 = phi i64 [ 0, %.loopexit8 ], [ %next_mul5, %.loopexit488.loopexit ]
  %tmp_125 = trunc i64 %phi_mul4 to i15
  %next_mul5 = add i64 100, %phi_mul4
  %ny_load_4 = load i32* @ny, align 4
  %tmp_43 = icmp slt i32 %x_assign_8, %ny_load_4
  %i_3 = add nsw i32 1, %x_assign_8
  br i1 %tmp_43, label %.preheader4.preheader, label %.loopexit.backedge.loopexit34

.preheader4.preheader:                            ; preds = %.loopexit488
  %tmp_132 = trunc i32 %i_3 to i15
  %tmp_133 = mul i15 100, %tmp_132
  %tmp_134 = trunc i32 %x_assign_8 to i15
  %tmp_136 = mul i15 100, %tmp_134
  %tmp_138 = add i15 -100, %tmp_136
  %tmp_164_i1 = icmp eq i32 %x_assign_8, 0
  br label %.preheader4

.preheader4:                                      ; preds = %49, %.preheader4.preheader
  %y_assign_6 = phi i32 [ %j_4, %49 ], [ 0, %.preheader4.preheader ]
  %nx_load_4 = load i32* @nx, align 4
  %tmp_55 = icmp slt i32 %y_assign_6, %nx_load_4
  %j_4 = add nsw i32 %y_assign_6, 1
  br i1 %tmp_55, label %32, label %.loopexit488.loopexit

; <label>:32                                      ; preds = %.preheader4
  %tmp_i3 = or i32 %y_assign_6, %x_assign_8
  %tmp_i3_50 = icmp eq i32 %tmp_i3, 0
  %tmp_165_i1 = add nsw i32 %nx_load_4, -1
  %tmp_166_i1 = icmp eq i32 %tmp_165_i1, %y_assign_6
  %ny_load_7 = load i32* @ny, align 4
  %tmp_167_i1 = add nsw i32 %ny_load_7, -1
  %tmp_168_i1 = icmp eq i32 %tmp_167_i1, %x_assign_8
  %tmp_169_i1 = icmp eq i32 %y_assign_6, 0
  %or_cond1_i1 = and i1 %tmp_168_i1, %tmp_169_i1
  %sel_tmp1_i = xor i1 %tmp_i3_50, true
  %tmp136 = and i1 %tmp_166_i1, %sel_tmp1_i
  %sel_tmp3_i1 = and i1 %tmp136, %tmp_164_i1
  %sel_tmp_i = select i1 %sel_tmp3_i1, i3 -2, i3 -3
  %tmp_135 = or i1 %sel_tmp3_i1, %tmp_i3_50
  %sel_tmp4_i1 = select i1 %tmp_135, i3 %sel_tmp_i, i3 0
  %sel_tmp4_i106_cast = zext i3 %sel_tmp4_i1 to i4
  %sel_tmp9_demorgan_i1 = and i1 %tmp_164_i1, %tmp_166_i1
  %sel_tmp9_i1 = xor i1 %sel_tmp9_demorgan_i1, true
  %tmp138 = and i1 %sel_tmp1_i, %sel_tmp9_i1
  %sel_tmp10_i1 = and i1 %tmp138, %or_cond1_i1
  %sel_tmp14_demorgan_i_1 = or i1 %tmp_i3_50, %or_cond1_i1
  %sel_tmp14_i1 = xor i1 %sel_tmp14_demorgan_i_1, true
  %tmp139 = and i1 %tmp_168_i1, %sel_tmp14_i1
  %tmp140 = xor i1 %sel_tmp9_demorgan_i1, %tmp_166_i1
  %sel_tmp20_i1 = and i1 %tmp140, %tmp139
  %sel_tmp11_i1 = select i1 %sel_tmp20_i1, i4 7, i4 -8
  %tmp_137 = or i1 %sel_tmp20_i1, %sel_tmp10_i1
  %place_8 = select i1 %tmp_137, i4 %sel_tmp11_i1, i4 %sel_tmp4_i106_cast
  %tmp_60 = icmp eq i4 %place_8, 0
  br i1 %tmp_60, label %33, label %._crit_edge28

; <label>:33                                      ; preds = %32
  %tmp_64 = call fastcc i3 @on_edge(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_65 = icmp eq i3 %tmp_64, 0
  br i1 %tmp_65, label %34, label %._crit_edge28

; <label>:34                                      ; preds = %33
  %scenario_source_x_lo_3 = load i32* @scenario_source_x, align 8
  %tmp_i7_51 = sub nsw i32 %scenario_source_x_lo_3, %x_assign_8
  %tmp_172_i4 = sitofp i32 %tmp_i7_51 to double
  %tmp_173_i4 = fmul double %tmp_172_i4, %tmp_172_i4
  %scenario_source_y_lo_3 = load i32* @scenario_source_y, align 4
  %tmp_174_i4 = sub nsw i32 %scenario_source_y_lo_3, %y_assign_6
  %tmp_175_i4 = sitofp i32 %tmp_174_i4 to double
  %tmp_176_i4 = fmul double %tmp_175_i4, %tmp_175_i4
  %tmp_177_i4 = fadd double %tmp_173_i4, %tmp_176_i4
  %tmp_178_i4 = call double @llvm.sqrt.f64(double %tmp_177_i4) nounwind
  %tmp_178_i128_to_int = bitcast double %tmp_178_i4 to i64
  %tmp_156 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i128_to_int, i32 52, i32 62)
  %tmp_166 = trunc i64 %tmp_178_i128_to_int to i52
  %tmp_158 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs9 = icmp ne i11 %tmp_156, -1
  %notrhs9 = icmp eq i52 %tmp_166, 0
  %tmp_159 = or i1 %notrhs9, %notlhs9
  %notlhs10 = icmp ne i11 %tmp_158, -1
  %tmp_161 = or i1 %notrhs8, %notlhs10
  %tmp_162 = and i1 %tmp_159, %tmp_161
  %tmp_163 = fcmp ole double %tmp_178_i4, %tmp_179_i3
  %tmp_164 = and i1 %tmp_162, %tmp_163
  %demorgan1 = and i1 %tmp_164, %tmp_i7
  br i1 %demorgan1, label %._crit_edge28, label %35

; <label>:35                                      ; preds = %34
  %tmp_75 = call fastcc i3 @on_structure_edge(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_76 = icmp eq i3 %tmp_75, 0
  br i1 %tmp_76, label %36, label %._crit_edge28

; <label>:36                                      ; preds = %35
  %tmp_82 = call fastcc i4 @on_structure_corner(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_83 = icmp eq i4 %tmp_82, 0
  br i1 %tmp_83, label %37, label %._crit_edge28

; <label>:37                                      ; preds = %36
  %tmp_88 = call fastcc i1 @in_structure(i32 %x_assign_8, i32 %y_assign_6) nounwind
  br i1 %tmp_88, label %._crit_edge28, label %38

; <label>:38                                      ; preds = %37
  %tmp_264 = trunc i32 %y_assign_6 to i15
  %tmp_189 = add i15 %tmp_125, %tmp_264
  %tmp_189_cast = zext i15 %tmp_189 to i64
  %ua_addr_5 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_189_cast
  %ub_addr_17 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_189_cast
  %uc_addr_7 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_189_cast
  %tmp_190 = add i15 %tmp_133, %tmp_264
  %tmp_190_cast = sext i15 %tmp_190 to i64
  %uc_addr_8 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_190_cast
  %tmp_191 = add i15 %tmp_138, %tmp_264
  %tmp_191_cast = sext i15 %tmp_191 to i64
  %uc_addr_9 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_191_cast
  %uc_load_1 = load double* %uc_addr_7, align 8
  %tmp_317_i1 = fmul double %uc_load_1, 2.000000e+00
  %ub_load_13 = load double* %ub_addr_17, align 8
  %tmp_318_i1 = fsub double %tmp_317_i1, %ub_load_13
  %gain_load_1 = load double* @gain, align 8
  %uc_load_2 = load double* %uc_addr_8, align 8
  %tmp_321_i1 = fmul double %uc_load_1, 4.000000e+00
  %tmp_322_i1 = fsub double %uc_load_2, %tmp_321_i1
  %uc_load_3 = load double* %uc_addr_9, align 8
  %tmp_325_i1 = fadd double %tmp_322_i1, %uc_load_3
  %tmp_265 = trunc i32 %j_4 to i15
  %tmp_192 = add i15 %tmp_125, %tmp_265
  %tmp_192_cast = zext i15 %tmp_192 to i64
  %uc_addr_10 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_192_cast
  %uc_load_4 = load double* %uc_addr_10, align 8
  %tmp_328_i1 = fadd double %tmp_325_i1, %uc_load_4
  %tmp_266 = trunc i32 %y_assign_6 to i15
  %tmp_267 = add i15 -1, %tmp_266
  %tmp_193 = add i15 %tmp_125, %tmp_267
  %tmp_193_cast = zext i15 %tmp_193 to i64
  %uc_addr_11 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_193_cast
  %uc_load_5 = load double* %uc_addr_11, align 8
  %tmp_331_i1 = fadd double %tmp_328_i1, %uc_load_5
  %tmp_332_i1 = fmul double %gain_load_1, %tmp_331_i1
  %tmp_333_i1 = fadd double %tmp_318_i1, %tmp_332_i1
  store double %tmp_333_i1, double* %ua_addr_5, align 8
  br label %49

._crit_edge28:                                    ; preds = %34, %37, %36, %35, %33, %32
  %place_2 = call fastcc i3 @on_edge(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_90 = icmp eq i3 %place_2, 0
  br i1 %tmp_90, label %40, label %39

; <label>:39                                      ; preds = %._crit_edge28
  %tmp_268 = trunc i32 %y_assign_6 to i15
  %tmp_194 = add i15 %tmp_133, %tmp_268
  %tmp_194_cast = sext i15 %tmp_194 to i64
  %uc_addr_12 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_194_cast
  %tmp_195 = add i15 %tmp_138, %tmp_268
  %tmp_195_cast = sext i15 %tmp_195 to i64
  %uc_addr_13 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_195_cast
  %uc_load_6 = load double* %uc_addr_12, align 8
  %tmp_269 = trunc i32 %y_assign_6 to i15
  %tmp_270 = add i15 -1, %tmp_269
  %tmp_196 = add i15 %tmp_125, %tmp_270
  %tmp_196_cast = zext i15 %tmp_196 to i64
  %uc_addr_14 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_196_cast
  %uc_load_7 = load double* %uc_addr_14, align 8
  %uc_load_8 = load double* %uc_addr_13, align 8
  %tmp_271 = trunc i32 %j_4 to i15
  %tmp_197 = add i15 %tmp_125, %tmp_271
  %tmp_197_cast = zext i15 %tmp_197 to i64
  %uc_addr_15 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_197_cast
  %uc_load_9 = load double* %uc_addr_15, align 8
  %sel_tmp_i4 = icmp eq i3 %place_2, 2
  %sel_tmp1_i4 = select i1 %sel_tmp_i4, double %uc_load_9, double 0.000000e+00
  %sel_tmp2_i2 = icmp eq i3 %place_2, 3
  %sel_tmp3_i5 = select i1 %sel_tmp2_i2, double %uc_load_8, double %sel_tmp1_i4
  %sel_tmp4_i5 = icmp eq i3 %place_2, -4
  %sel_tmp5_i2 = select i1 %sel_tmp4_i5, double %uc_load_7, double %sel_tmp3_i5
  %sel_tmp6_i2 = icmp eq i3 %place_2, 1
  %p_0_i = select i1 %sel_tmp6_i2, double %uc_load_6, double %sel_tmp5_i2
  %tmp_198 = add i15 %tmp_125, %tmp_268
  %tmp_198_cast = zext i15 %tmp_198 to i64
  %ua_addr_6 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_198_cast
  store double %p_0_i, double* %ua_addr_6, align 8
  br label %48

; <label>:40                                      ; preds = %._crit_edge28
  br i1 %tmp_60, label %42, label %41

; <label>:41                                      ; preds = %40
  %tmp_276 = trunc i32 %j_4 to i15
  %tmp_204 = add i15 %tmp_125, %tmp_276
  %tmp_204_cast = zext i15 %tmp_204 to i64
  %uc_addr_17 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_204_cast
  %uc_load_10 = load double* %uc_addr_17, align 8
  %tmp_277 = trunc i32 %y_assign_6 to i15
  %tmp_205 = add i15 %tmp_133, %tmp_277
  %tmp_205_cast = sext i15 %tmp_205 to i64
  %uc_addr_18 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_205_cast
  %tmp_206 = add i15 %tmp_138, %tmp_277
  %tmp_206_cast = sext i15 %tmp_206 to i64
  %uc_addr_19 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_206_cast
  %uc_load_11 = load double* %uc_addr_18, align 8
  %tmp_294_i1 = fadd double %uc_load_10, %uc_load_11
  %tmp_295_i1 = fmul double %tmp_294_i1, 5.000000e-01
  %tmp_278 = trunc i32 %y_assign_6 to i15
  %tmp_279 = add i15 -1, %tmp_278
  %tmp_207 = add i15 %tmp_125, %tmp_279
  %tmp_207_cast = zext i15 %tmp_207 to i64
  %uc_addr_20 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_207_cast
  %uc_load_12 = load double* %uc_addr_20, align 8
  %tmp_302_i1 = fadd double %uc_load_11, %uc_load_12
  %tmp_303_i1 = fmul double %tmp_302_i1, 5.000000e-01
  %uc_load_13 = load double* %uc_addr_19, align 8
  %tmp_310_i1 = fadd double %uc_load_12, %uc_load_13
  %tmp_311_i1 = fmul double %tmp_310_i1, 5.000000e-01
  %tmp_318_i4 = fadd double %uc_load_13, %uc_load_10
  %tmp_319_i1 = fmul double %tmp_318_i4, 5.000000e-01
  %sel_tmp_i7 = icmp eq i4 %place_8, -8
  %sel_tmp1_i6 = select i1 %sel_tmp_i7, double %tmp_319_i1, double 0.000000e+00
  %sel_tmp2_i4 = icmp eq i4 %place_8, 7
  %sel_tmp3_i7 = select i1 %sel_tmp2_i4, double %tmp_311_i1, double %sel_tmp1_i6
  %sel_tmp4_i7 = icmp eq i4 %place_8, 6
  %sel_tmp5_i4 = select i1 %sel_tmp4_i7, double %tmp_303_i1, double %sel_tmp3_i7
  %sel_tmp6_i4 = icmp eq i4 %place_8, 5
  %p_0_i5 = select i1 %sel_tmp6_i4, double %tmp_295_i1, double %sel_tmp5_i4
  %tmp_208 = add i15 %tmp_125, %tmp_277
  %tmp_208_cast = zext i15 %tmp_208 to i64
  %ua_addr_7 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_208_cast
  store double %p_0_i5, double* %ua_addr_7, align 8
  br label %47

; <label>:42                                      ; preds = %40
  %place_7 = call fastcc i3 @on_structure_edge(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_104 = icmp eq i3 %place_7, 0
  br i1 %tmp_104, label %44, label %43

; <label>:43                                      ; preds = %42
  %tmp_292 = trunc i32 %y_assign_6 to i15
  %tmp_224 = add i15 %tmp_138, %tmp_292
  %tmp_224_cast = sext i15 %tmp_224 to i64
  %uc_addr_23 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_224_cast
  %tmp_225 = add i15 %tmp_133, %tmp_292
  %tmp_225_cast = sext i15 %tmp_225 to i64
  %uc_addr_24 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_225_cast
  %uc_load_15 = load double* %uc_addr_23, align 8
  %tmp_293 = trunc i32 %j_4 to i15
  %tmp_226 = add i15 %tmp_125, %tmp_293
  %tmp_226_cast = zext i15 %tmp_226 to i64
  %uc_addr_25 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_226_cast
  %uc_load_16 = load double* %uc_addr_25, align 8
  %uc_load_17 = load double* %uc_addr_24, align 8
  %tmp_294 = trunc i32 %y_assign_6 to i15
  %tmp_295 = add i15 -1, %tmp_294
  %tmp_227 = add i15 %tmp_125, %tmp_295
  %tmp_227_cast = zext i15 %tmp_227 to i64
  %uc_addr_26 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_227_cast
  %uc_load_18 = load double* %uc_addr_26, align 8
  %sel_tmp_i10 = icmp eq i3 %place_7, 2
  %sel_tmp1_i10 = select i1 %sel_tmp_i10, double %uc_load_18, double 0.000000e+00
  %sel_tmp2_i7 = icmp eq i3 %place_7, 3
  %sel_tmp3_i10 = select i1 %sel_tmp2_i7, double %uc_load_17, double %sel_tmp1_i10
  %sel_tmp4_i10 = icmp eq i3 %place_7, -4
  %sel_tmp5_i7 = select i1 %sel_tmp4_i10, double %uc_load_16, double %sel_tmp3_i10
  %sel_tmp6_i7 = icmp eq i3 %place_7, 1
  %p_0_i8 = select i1 %sel_tmp6_i7, double %uc_load_15, double %sel_tmp5_i7
  %tmp_228 = add i15 %tmp_125, %tmp_292
  %tmp_228_cast = zext i15 %tmp_228 to i64
  %ua_addr_17 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_228_cast
  store double %p_0_i8, double* %ua_addr_17, align 8
  br label %46

; <label>:44                                      ; preds = %42
  %place_9 = call fastcc i4 @on_structure_corner(i32 %x_assign_8, i32 %y_assign_6) nounwind
  %tmp_111 = icmp eq i4 %place_9, 0
  br i1 %tmp_111, label %._crit_edge34, label %45

; <label>:45                                      ; preds = %44
  %tmp_300 = trunc i32 %y_assign_6 to i15
  %tmp_301 = add i15 -1, %tmp_300
  %tmp_234 = add i15 %tmp_125, %tmp_301
  %tmp_234_cast = zext i15 %tmp_234 to i64
  %uc_addr_27 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_234_cast
  %uc_load_19 = load double* %uc_addr_27, align 8
  %tmp_302 = trunc i32 %y_assign_6 to i15
  %tmp_235 = add i15 %tmp_138, %tmp_302
  %tmp_235_cast = sext i15 %tmp_235 to i64
  %uc_addr_28 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_235_cast
  %tmp_236 = add i15 %tmp_133, %tmp_302
  %tmp_236_cast = sext i15 %tmp_236 to i64
  %uc_addr_29 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_236_cast
  %uc_load_20 = load double* %uc_addr_28, align 8
  %tmp_254_i1 = fadd double %uc_load_19, %uc_load_20
  %tmp_255_i1 = fmul double %tmp_254_i1, 5.000000e-01
  %tmp_303 = trunc i32 %j_4 to i15
  %tmp_237 = add i15 %tmp_125, %tmp_303
  %tmp_237_cast = zext i15 %tmp_237 to i64
  %uc_addr_30 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_237_cast
  %uc_load_21 = load double* %uc_addr_30, align 8
  %tmp_262_i1 = fadd double %uc_load_20, %uc_load_21
  %tmp_263_i1 = fmul double %tmp_262_i1, 5.000000e-01
  %uc_load_22 = load double* %uc_addr_29, align 8
  %tmp_270_i1 = fadd double %uc_load_21, %uc_load_22
  %tmp_271_i1 = fmul double %tmp_270_i1, 5.000000e-01
  %tmp_278_i1 = fadd double %uc_load_22, %uc_load_19
  %tmp_279_i1 = fmul double %tmp_278_i1, 5.000000e-01
  %sel_tmp_i12 = icmp eq i4 %place_9, -8
  %sel_tmp1_i12 = select i1 %sel_tmp_i12, double %tmp_279_i1, double 0.000000e+00
  %sel_tmp2_i9 = icmp eq i4 %place_9, 7
  %sel_tmp3_i12 = select i1 %sel_tmp2_i9, double %tmp_271_i1, double %sel_tmp1_i12
  %sel_tmp4_i12 = icmp eq i4 %place_9, 6
  %sel_tmp5_i9 = select i1 %sel_tmp4_i12, double %tmp_263_i1, double %sel_tmp3_i12
  %sel_tmp6_i9 = icmp eq i4 %place_9, 5
  %p_0_i1 = select i1 %sel_tmp6_i9, double %tmp_255_i1, double %sel_tmp5_i9
  %tmp_238 = add i15 %tmp_125, %tmp_302
  %tmp_238_cast = zext i15 %tmp_238 to i64
  %ua_addr_22 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_238_cast
  store double %p_0_i1, double* %ua_addr_22, align 8
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %45, %44
  br label %46

; <label>:46                                      ; preds = %._crit_edge34, %43
  br label %47

; <label>:47                                      ; preds = %46, %41
  br label %48

; <label>:48                                      ; preds = %47, %39
  br label %49

; <label>:49                                      ; preds = %48, %38
  %tmp_313 = trunc i32 %y_assign_6 to i15
  %tmp_250 = add i15 %tmp_125, %tmp_313
  %tmp_250_cast = zext i15 %tmp_250 to i64
  %ub_addr_31 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_250_cast
  store double 0.000000e+00, double* %ub_addr_31, align 8
  br label %.preheader4

; <label>:50                                      ; preds = %26
  %tmp_24 = icmp eq i3 %tmp_54, 2
  br i1 %tmp_24, label %51, label %.loopexit.backedge

.loopexit.backedge.loopexit:                      ; preds = %.loopexit487
  br label %.loopexit.backedge

.loopexit.backedge.loopexit34:                    ; preds = %.loopexit488
  br label %.loopexit.backedge

.loopexit.backedge.loopexit35:                    ; preds = %.loopexit490
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.backedge.loopexit35, %.loopexit.backedge.loopexit34, %.loopexit.backedge.loopexit, %50
  br label %.loopexit

; <label>:51                                      ; preds = %50
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_32, i32 31)
  %p_neg1 = sub i32 0, %p_Val2_32
  %p_lshr1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg1, i32 1, i32 31)
  %tmp_86 = zext i31 %p_lshr1 to i32
  %p_neg_t1 = sub i32 0, %tmp_86
  %p_lshr_f1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_Val2_32, i32 1, i32 31)
  %tmp_87 = zext i31 %p_lshr_f1 to i32
  %tmp_26 = select i1 %tmp_78, i32 %p_neg_t1, i32 %tmp_87
  %tmp_27 = icmp slt i32 %step, %tmp_26
  br i1 %tmp_27, label %52, label %53

; <label>:52                                      ; preds = %51
  %scenario_source_p_am_2 = load double* @scenario_source_p_am, align 8
  call fastcc void @pulse_source(i32 %radius, i32 %step, double %scenario_source_p_am_2, [10000 x double]* %ub) nounwind
  br label %.loopexit3

; <label>:53                                      ; preds = %51
  %source_active_assign_5 = load i32* %source_active_assign
  %tmp_95 = icmp eq i32 %source_active_assign_5, 0
  br i1 %tmp_95, label %.loopexit3, label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %53
  br label %.preheader2

.preheader2.loopexit:                             ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2.loopexit
  %x_assign_6 = phi i32 [ %i_4, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ]
  %phi_mul2 = phi i64 [ %next_mul3, %.preheader2.loopexit ], [ 0, %.preheader2.preheader ]
  %tmp_103 = trunc i64 %phi_mul2 to i15
  %next_mul3 = add i64 100, %phi_mul2
  %ny_load_2 = load i32* @ny, align 4
  %tmp_33 = icmp slt i32 %x_assign_6, %ny_load_2
  %i_4 = add nsw i32 1, %x_assign_6
  br i1 %tmp_33, label %.preheader1.preheader, label %.loopexit3.loopexit

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge35
  %y_assign_5 = phi i32 [ %j_2, %._crit_edge35 ], [ 0, %.preheader1.preheader ]
  %nx_load_2 = load i32* @nx, align 4
  %tmp_48 = icmp slt i32 %y_assign_5, %nx_load_2
  %j_2 = add nsw i32 %y_assign_5, 1
  br i1 %tmp_48, label %54, label %.preheader2.loopexit

; <label>:54                                      ; preds = %.preheader1
  %scenario_source_x_lo_4 = load i32* @scenario_source_x, align 8
  %tmp_i2 = sub nsw i32 %scenario_source_x_lo_4, %x_assign_6
  %tmp_172_i2 = sitofp i32 %tmp_i2 to double
  %tmp_173_i2 = fmul double %tmp_172_i2, %tmp_172_i2
  %scenario_source_y_lo_4 = load i32* @scenario_source_y, align 4
  %tmp_174_i2 = sub nsw i32 %scenario_source_y_lo_4, %y_assign_5
  %tmp_175_i2 = sitofp i32 %tmp_174_i2 to double
  %tmp_176_i2 = fmul double %tmp_175_i2, %tmp_175_i2
  %tmp_177_i2 = fadd double %tmp_173_i2, %tmp_176_i2
  %tmp_178_i2 = call double @llvm.sqrt.f64(double %tmp_177_i2) nounwind
  %tmp_178_i265_to_int = bitcast double %tmp_178_i2 to i64
  %tmp_108 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i265_to_int, i32 52, i32 62)
  %tmp_139 = trunc i64 %tmp_178_i265_to_int to i52
  %tmp_112 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs5 = icmp ne i11 %tmp_108, -1
  %notrhs5 = icmp eq i52 %tmp_139, 0
  %tmp_115 = or i1 %notrhs5, %notlhs5
  %notlhs6 = icmp ne i11 %tmp_112, -1
  %tmp_120 = or i1 %notrhs8, %notlhs6
  %tmp_122 = and i1 %tmp_115, %tmp_120
  %tmp_127 = fcmp ole double %tmp_178_i2, %tmp_179_i3
  %tmp_128 = and i1 %tmp_122, %tmp_127
  br i1 %tmp_128, label %55, label %._crit_edge35

; <label>:55                                      ; preds = %54
  %tmp_142 = trunc i32 %y_assign_5 to i15
  %tmp_145 = add i15 %tmp_103, %tmp_142
  %tmp_154_cast = zext i15 %tmp_145 to i64
  %ua_addr_3 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_154_cast
  %ub_addr_3 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_154_cast
  store double 0.000000e+00, double* %ua_addr_3, align 8
  store double 0.000000e+00, double* %ub_addr_3, align 8
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %54, %55
  br label %.preheader1

.loopexit3.loopexit:                              ; preds = %.preheader2
  store i32 0, i32* %source_active_assign
  br label %.loopexit3

.loopexit3:                                       ; preds = %.loopexit3.loopexit, %53, %52
  %source_active_assign_6 = load i32* %source_active_assign
  %tmp_i8 = icmp ne i32 %source_active_assign_6, 0
  br label %.loopexit487

.loopexit487.loopexit:                            ; preds = %.preheader
  br label %.loopexit487

.loopexit487:                                     ; preds = %.loopexit487.loopexit, %.loopexit3
  %x_assign_9 = phi i32 [ 0, %.loopexit3 ], [ %i_5, %.loopexit487.loopexit ]
  %phi_mul6 = phi i64 [ 0, %.loopexit3 ], [ %next_mul7, %.loopexit487.loopexit ]
  %tmp_140 = trunc i64 %phi_mul6 to i15
  %next_mul7 = add i64 100, %phi_mul6
  %ny_load_5 = load i32* @ny, align 4
  %tmp_51 = icmp slt i32 %x_assign_9, %ny_load_5
  %i_5 = add nsw i32 1, %x_assign_9
  br i1 %tmp_51, label %.preheader.preheader, label %.loopexit.backedge.loopexit

.preheader.preheader:                             ; preds = %.loopexit487
  %tmp_151 = trunc i32 %i_5 to i15
  %tmp_153 = mul i15 100, %tmp_151
  %tmp_154 = trunc i32 %x_assign_9 to i15
  %tmp_155 = mul i15 100, %tmp_154
  %tmp_157 = add i15 -100, %tmp_155
  %tmp_164_i2 = icmp eq i32 %x_assign_9, 0
  br label %.preheader

.preheader:                                       ; preds = %73, %.preheader.preheader
  %y_assign_7 = phi i32 [ %j_5, %73 ], [ 0, %.preheader.preheader ]
  %nx_load_5 = load i32* @nx, align 4
  %tmp_61 = icmp slt i32 %y_assign_7, %nx_load_5
  %j_5 = add nsw i32 %y_assign_7, 1
  br i1 %tmp_61, label %56, label %.loopexit487.loopexit

; <label>:56                                      ; preds = %.preheader
  %tmp_i6 = or i32 %y_assign_7, %x_assign_9
  %tmp_i6_52 = icmp eq i32 %tmp_i6, 0
  %tmp_165_i2 = add nsw i32 %nx_load_5, -1
  %tmp_166_i2 = icmp eq i32 %tmp_165_i2, %y_assign_7
  %ny_load_8 = load i32* @ny, align 4
  %tmp_167_i2 = add nsw i32 %ny_load_8, -1
  %tmp_168_i2 = icmp eq i32 %tmp_167_i2, %x_assign_9
  %tmp_169_i2 = icmp eq i32 %y_assign_7, 0
  %or_cond1_i2 = and i1 %tmp_168_i2, %tmp_169_i2
  %sel_tmp1_i1 = xor i1 %tmp_i6_52, true
  %tmp151 = and i1 %tmp_166_i2, %sel_tmp1_i1
  %sel_tmp3_i2 = and i1 %tmp151, %tmp_164_i2
  %sel_tmp_i1 = select i1 %sel_tmp3_i2, i3 -2, i3 -3
  %tmp_150 = or i1 %sel_tmp3_i2, %tmp_i6_52
  %sel_tmp4_i2 = select i1 %tmp_150, i3 %sel_tmp_i1, i3 0
  %sel_tmp4_i287_cast = zext i3 %sel_tmp4_i2 to i4
  %sel_tmp9_demorgan_i2 = and i1 %tmp_164_i2, %tmp_166_i2
  %sel_tmp9_i2 = xor i1 %sel_tmp9_demorgan_i2, true
  %tmp153 = and i1 %sel_tmp1_i1, %sel_tmp9_i2
  %sel_tmp10_i2 = and i1 %tmp153, %or_cond1_i2
  %sel_tmp14_demorgan_i_2 = or i1 %tmp_i6_52, %or_cond1_i2
  %sel_tmp14_i2 = xor i1 %sel_tmp14_demorgan_i_2, true
  %tmp154 = and i1 %tmp_168_i2, %sel_tmp14_i2
  %tmp155 = xor i1 %sel_tmp9_demorgan_i2, %tmp_166_i2
  %sel_tmp20_i2 = and i1 %tmp155, %tmp154
  %sel_tmp11_i2 = select i1 %sel_tmp20_i2, i4 7, i4 -8
  %tmp_152 = or i1 %sel_tmp20_i2, %sel_tmp10_i2
  %place_10 = select i1 %tmp_152, i4 %sel_tmp11_i2, i4 %sel_tmp4_i287_cast
  %tmp_66 = icmp eq i4 %place_10, 0
  br i1 %tmp_66, label %57, label %._crit_edge36

; <label>:57                                      ; preds = %56
  %tmp_71 = call fastcc i3 @on_edge(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_72 = icmp eq i3 %tmp_71, 0
  br i1 %tmp_72, label %58, label %._crit_edge36

; <label>:58                                      ; preds = %57
  %scenario_source_x_lo_5 = load i32* @scenario_source_x, align 8
  %tmp_i8_53 = sub nsw i32 %scenario_source_x_lo_5, %x_assign_9
  %tmp_172_i5 = sitofp i32 %tmp_i8_53 to double
  %tmp_173_i5 = fmul double %tmp_172_i5, %tmp_172_i5
  %scenario_source_y_lo_5 = load i32* @scenario_source_y, align 4
  %tmp_174_i5 = sub nsw i32 %scenario_source_y_lo_5, %y_assign_7
  %tmp_175_i5 = sitofp i32 %tmp_174_i5 to double
  %tmp_176_i5 = fmul double %tmp_175_i5, %tmp_175_i5
  %tmp_177_i5 = fadd double %tmp_173_i5, %tmp_176_i5
  %tmp_178_i5 = call double @llvm.sqrt.f64(double %tmp_177_i5) nounwind
  %tmp_178_i309_to_int = bitcast double %tmp_178_i5 to i64
  %tmp_165 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_178_i309_to_int, i32 52, i32 62)
  %tmp_169 = trunc i64 %tmp_178_i309_to_int to i52
  %tmp_167 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_179_i21_to_int, i32 52, i32 62)
  %notlhs = icmp ne i11 %tmp_165, -1
  %notrhs = icmp eq i52 %tmp_169, 0
  %tmp_168 = or i1 %notrhs, %notlhs
  %notlhs11 = icmp ne i11 %tmp_167, -1
  %tmp_170 = or i1 %notrhs8, %notlhs11
  %tmp_171 = and i1 %tmp_168, %tmp_170
  %tmp_172 = fcmp ole double %tmp_178_i5, %tmp_179_i3
  %tmp_173 = and i1 %tmp_171, %tmp_172
  %demorgan2 = and i1 %tmp_173, %tmp_i8
  br i1 %demorgan2, label %._crit_edge36, label %59

; <label>:59                                      ; preds = %58
  %tmp_84 = call fastcc i3 @on_structure_edge(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_85 = icmp eq i3 %tmp_84, 0
  br i1 %tmp_85, label %60, label %._crit_edge36

; <label>:60                                      ; preds = %59
  %tmp_91 = call fastcc i4 @on_structure_corner(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_92 = icmp eq i4 %tmp_91, 0
  br i1 %tmp_92, label %61, label %._crit_edge36

; <label>:61                                      ; preds = %60
  %tmp_98 = call fastcc i1 @in_structure(i32 %x_assign_9, i32 %y_assign_7) nounwind
  br i1 %tmp_98, label %._crit_edge36, label %62

; <label>:62                                      ; preds = %61
  %tmp_280 = trunc i32 %y_assign_7 to i15
  %tmp_209 = add i15 %tmp_140, %tmp_280
  %tmp_209_cast = zext i15 %tmp_209 to i64
  %ua_addr_8 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_209_cast
  %tmp_210 = add i15 %tmp_153, %tmp_280
  %tmp_210_cast = sext i15 %tmp_210 to i64
  %ua_addr_9 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_210_cast
  %tmp_211 = add i15 %tmp_157, %tmp_280
  %tmp_211_cast = sext i15 %tmp_211 to i64
  %ua_addr_10 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_211_cast
  %ub_addr_22 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_209_cast
  %uc_addr_21 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_209_cast
  %ua_load_1 = load double* %ua_addr_8, align 8
  %tmp_317_i2 = fmul double %ua_load_1, 2.000000e+00
  %uc_load_14 = load double* %uc_addr_21, align 8
  %tmp_318_i2 = fsub double %tmp_317_i2, %uc_load_14
  %gain_load_2 = load double* @gain, align 8
  %ua_load_2 = load double* %ua_addr_9, align 8
  %tmp_321_i2 = fmul double %ua_load_1, 4.000000e+00
  %tmp_322_i2 = fsub double %ua_load_2, %tmp_321_i2
  %ua_load_3 = load double* %ua_addr_10, align 8
  %tmp_325_i2 = fadd double %tmp_322_i2, %ua_load_3
  %tmp_281 = trunc i32 %j_5 to i15
  %tmp_212 = add i15 %tmp_140, %tmp_281
  %tmp_212_cast = zext i15 %tmp_212 to i64
  %ua_addr_11 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_212_cast
  %ua_load_4 = load double* %ua_addr_11, align 8
  %tmp_328_i2 = fadd double %tmp_325_i2, %ua_load_4
  %tmp_282 = trunc i32 %y_assign_7 to i15
  %tmp_283 = add i15 -1, %tmp_282
  %tmp_213 = add i15 %tmp_140, %tmp_283
  %tmp_213_cast = zext i15 %tmp_213 to i64
  %ua_addr_12 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_213_cast
  %ua_load_5 = load double* %ua_addr_12, align 8
  %tmp_331_i2 = fadd double %tmp_328_i2, %ua_load_5
  %tmp_332_i2 = fmul double %gain_load_2, %tmp_331_i2
  %tmp_333_i2 = fadd double %tmp_318_i2, %tmp_332_i2
  store double %tmp_333_i2, double* %ub_addr_22, align 8
  br label %73

._crit_edge36:                                    ; preds = %58, %61, %60, %59, %57, %56
  %place_5 = call fastcc i3 @on_edge(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_100 = icmp eq i3 %place_5, 0
  br i1 %tmp_100, label %64, label %63

; <label>:63                                      ; preds = %._crit_edge36
  %tmp_284 = trunc i32 %y_assign_7 to i15
  %tmp_214 = add i15 %tmp_153, %tmp_284
  %tmp_214_cast = sext i15 %tmp_214 to i64
  %ua_addr_13 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_214_cast
  %tmp_215 = add i15 %tmp_157, %tmp_284
  %tmp_215_cast = sext i15 %tmp_215 to i64
  %ua_addr_14 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_215_cast
  %ua_load_6 = load double* %ua_addr_13, align 8
  %tmp_285 = trunc i32 %y_assign_7 to i15
  %tmp_286 = add i15 -1, %tmp_285
  %tmp_216 = add i15 %tmp_140, %tmp_286
  %tmp_216_cast = zext i15 %tmp_216 to i64
  %ua_addr_15 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_216_cast
  %ua_load_7 = load double* %ua_addr_15, align 8
  %ua_load_8 = load double* %ua_addr_14, align 8
  %tmp_287 = trunc i32 %j_5 to i15
  %tmp_217 = add i15 %tmp_140, %tmp_287
  %tmp_217_cast = zext i15 %tmp_217 to i64
  %ua_addr_16 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_217_cast
  %ua_load_9 = load double* %ua_addr_16, align 8
  %sel_tmp_i8 = icmp eq i3 %place_5, 2
  %sel_tmp1_i8 = select i1 %sel_tmp_i8, double %ua_load_9, double 0.000000e+00
  %sel_tmp2_i5 = icmp eq i3 %place_5, 3
  %sel_tmp3_i8 = select i1 %sel_tmp2_i5, double %ua_load_8, double %sel_tmp1_i8
  %sel_tmp4_i8 = icmp eq i3 %place_5, -4
  %sel_tmp5_i5 = select i1 %sel_tmp4_i8, double %ua_load_7, double %sel_tmp3_i8
  %sel_tmp6_i5 = icmp eq i3 %place_5, 1
  %p_0_i6 = select i1 %sel_tmp6_i5, double %ua_load_6, double %sel_tmp5_i5
  %tmp_218 = add i15 %tmp_140, %tmp_284
  %tmp_218_cast = zext i15 %tmp_218 to i64
  %ub_addr_23 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_218_cast
  store double %p_0_i6, double* %ub_addr_23, align 8
  br label %72

; <label>:64                                      ; preds = %._crit_edge36
  br i1 %tmp_66, label %66, label %65

; <label>:65                                      ; preds = %64
  %tmp_296 = trunc i32 %j_5 to i15
  %tmp_229 = add i15 %tmp_140, %tmp_296
  %tmp_229_cast = zext i15 %tmp_229 to i64
  %ua_addr_18 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_229_cast
  %ua_load_10 = load double* %ua_addr_18, align 8
  %tmp_297 = trunc i32 %y_assign_7 to i15
  %tmp_230 = add i15 %tmp_153, %tmp_297
  %tmp_230_cast = sext i15 %tmp_230 to i64
  %ua_addr_19 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_230_cast
  %tmp_231 = add i15 %tmp_157, %tmp_297
  %tmp_231_cast = sext i15 %tmp_231 to i64
  %ua_addr_20 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_231_cast
  %ua_load_11 = load double* %ua_addr_19, align 8
  %tmp_294_i2 = fadd double %ua_load_10, %ua_load_11
  %tmp_295_i2 = fmul double %tmp_294_i2, 5.000000e-01
  %tmp_298 = trunc i32 %y_assign_7 to i15
  %tmp_299 = add i15 -1, %tmp_298
  %tmp_232 = add i15 %tmp_140, %tmp_299
  %tmp_232_cast = zext i15 %tmp_232 to i64
  %ua_addr_21 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_232_cast
  %ua_load_12 = load double* %ua_addr_21, align 8
  %tmp_302_i2 = fadd double %ua_load_11, %ua_load_12
  %tmp_303_i2 = fmul double %tmp_302_i2, 5.000000e-01
  %ua_load_13 = load double* %ua_addr_20, align 8
  %tmp_310_i2 = fadd double %ua_load_12, %ua_load_13
  %tmp_311_i2 = fmul double %tmp_310_i2, 5.000000e-01
  %tmp_318_i5 = fadd double %ua_load_13, %ua_load_10
  %tmp_319_i2 = fmul double %tmp_318_i5, 5.000000e-01
  %sel_tmp_i11 = icmp eq i4 %place_10, -8
  %sel_tmp1_i11 = select i1 %sel_tmp_i11, double %tmp_319_i2, double 0.000000e+00
  %sel_tmp2_i8 = icmp eq i4 %place_10, 7
  %sel_tmp3_i11 = select i1 %sel_tmp2_i8, double %tmp_311_i2, double %sel_tmp1_i11
  %sel_tmp4_i11 = icmp eq i4 %place_10, 6
  %sel_tmp5_i8 = select i1 %sel_tmp4_i11, double %tmp_303_i2, double %sel_tmp3_i11
  %sel_tmp6_i8 = icmp eq i4 %place_10, 5
  %p_0_i9 = select i1 %sel_tmp6_i8, double %tmp_295_i2, double %sel_tmp5_i8
  %tmp_233 = add i15 %tmp_140, %tmp_297
  %tmp_233_cast = zext i15 %tmp_233 to i64
  %ub_addr_28 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_233_cast
  store double %p_0_i9, double* %ub_addr_28, align 8
  br label %71

; <label>:66                                      ; preds = %64
  %place_s = call fastcc i3 @on_structure_edge(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_114 = icmp eq i3 %place_s, 0
  br i1 %tmp_114, label %68, label %67

; <label>:67                                      ; preds = %66
  %tmp_304 = trunc i32 %y_assign_7 to i15
  %tmp_239 = add i15 %tmp_157, %tmp_304
  %tmp_239_cast = sext i15 %tmp_239 to i64
  %ua_addr_23 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_239_cast
  %tmp_240 = add i15 %tmp_153, %tmp_304
  %tmp_240_cast = sext i15 %tmp_240 to i64
  %ua_addr_24 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_240_cast
  %ua_load_14 = load double* %ua_addr_23, align 8
  %tmp_305 = trunc i32 %j_5 to i15
  %tmp_241 = add i15 %tmp_140, %tmp_305
  %tmp_241_cast = zext i15 %tmp_241 to i64
  %ua_addr_25 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_241_cast
  %ua_load_15 = load double* %ua_addr_25, align 8
  %ua_load_16 = load double* %ua_addr_24, align 8
  %tmp_306 = trunc i32 %y_assign_7 to i15
  %tmp_307 = add i15 -1, %tmp_306
  %tmp_242 = add i15 %tmp_140, %tmp_307
  %tmp_242_cast = zext i15 %tmp_242 to i64
  %ua_addr_26 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_242_cast
  %ua_load_17 = load double* %ua_addr_26, align 8
  %sel_tmp_i13 = icmp eq i3 %place_s, 2
  %sel_tmp1_i13 = select i1 %sel_tmp_i13, double %ua_load_17, double 0.000000e+00
  %sel_tmp2_i10 = icmp eq i3 %place_s, 3
  %sel_tmp3_i13 = select i1 %sel_tmp2_i10, double %ua_load_16, double %sel_tmp1_i13
  %sel_tmp4_i13 = icmp eq i3 %place_s, -4
  %sel_tmp5_i10 = select i1 %sel_tmp4_i13, double %ua_load_15, double %sel_tmp3_i13
  %sel_tmp6_i10 = icmp eq i3 %place_s, 1
  %p_0_i10 = select i1 %sel_tmp6_i10, double %ua_load_14, double %sel_tmp5_i10
  %tmp_243 = add i15 %tmp_140, %tmp_304
  %tmp_243_cast = zext i15 %tmp_243 to i64
  %ub_addr_29 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_243_cast
  store double %p_0_i10, double* %ub_addr_29, align 8
  br label %70

; <label>:68                                      ; preds = %66
  %place_1 = call fastcc i4 @on_structure_corner(i32 %x_assign_9, i32 %y_assign_7) nounwind
  %tmp_119 = icmp eq i4 %place_1, 0
  br i1 %tmp_119, label %._crit_edge42, label %69

; <label>:69                                      ; preds = %68
  %tmp_308 = trunc i32 %y_assign_7 to i15
  %tmp_309 = add i15 -1, %tmp_308
  %tmp_244 = add i15 %tmp_140, %tmp_309
  %tmp_244_cast = zext i15 %tmp_244 to i64
  %ua_addr_27 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_244_cast
  %ua_load_18 = load double* %ua_addr_27, align 8
  %tmp_310 = trunc i32 %y_assign_7 to i15
  %tmp_245 = add i15 %tmp_157, %tmp_310
  %tmp_245_cast = sext i15 %tmp_245 to i64
  %ua_addr_28 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_245_cast
  %tmp_246 = add i15 %tmp_153, %tmp_310
  %tmp_246_cast = sext i15 %tmp_246 to i64
  %ua_addr_29 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_246_cast
  %ua_load_19 = load double* %ua_addr_28, align 8
  %tmp_254_i2 = fadd double %ua_load_18, %ua_load_19
  %tmp_255_i2 = fmul double %tmp_254_i2, 5.000000e-01
  %tmp_311 = trunc i32 %j_5 to i15
  %tmp_247 = add i15 %tmp_140, %tmp_311
  %tmp_247_cast = zext i15 %tmp_247 to i64
  %ua_addr_30 = getelementptr [10000 x double]* %ua, i64 0, i64 %tmp_247_cast
  %ua_load_20 = load double* %ua_addr_30, align 8
  %tmp_262_i2 = fadd double %ua_load_19, %ua_load_20
  %tmp_263_i2 = fmul double %tmp_262_i2, 5.000000e-01
  %ua_load_21 = load double* %ua_addr_29, align 8
  %tmp_270_i2 = fadd double %ua_load_20, %ua_load_21
  %tmp_271_i2 = fmul double %tmp_270_i2, 5.000000e-01
  %tmp_278_i2 = fadd double %ua_load_21, %ua_load_18
  %tmp_279_i2 = fmul double %tmp_278_i2, 5.000000e-01
  %sel_tmp_i14 = icmp eq i4 %place_1, -8
  %sel_tmp1_i14 = select i1 %sel_tmp_i14, double %tmp_279_i2, double 0.000000e+00
  %sel_tmp2_i11 = icmp eq i4 %place_1, 7
  %sel_tmp3_i14 = select i1 %sel_tmp2_i11, double %tmp_271_i2, double %sel_tmp1_i14
  %sel_tmp4_i14 = icmp eq i4 %place_1, 6
  %sel_tmp5_i11 = select i1 %sel_tmp4_i14, double %tmp_263_i2, double %sel_tmp3_i14
  %sel_tmp6_i11 = icmp eq i4 %place_1, 5
  %p_0_i11 = select i1 %sel_tmp6_i11, double %tmp_255_i2, double %sel_tmp5_i11
  %tmp_248 = add i15 %tmp_140, %tmp_310
  %tmp_248_cast = zext i15 %tmp_248 to i64
  %ub_addr_30 = getelementptr [10000 x double]* %ub, i64 0, i64 %tmp_248_cast
  store double %p_0_i11, double* %ub_addr_30, align 8
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %69, %68
  br label %70

; <label>:70                                      ; preds = %._crit_edge42, %67
  br label %71

; <label>:71                                      ; preds = %70, %65
  br label %72

; <label>:72                                      ; preds = %71, %63
  br label %73

; <label>:73                                      ; preds = %72, %62
  %tmp_314 = trunc i32 %y_assign_7 to i15
  %tmp_251 = add i15 %tmp_140, %tmp_314
  %tmp_251_cast = zext i15 %tmp_251 to i64
  %uc_addr_31 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_251_cast
  store double 0.000000e+00, double* %uc_addr_31, align 8
  br label %.preheader

burst.wr.header:                                  ; preds = %burst.wr.header.preheader, %burst.wr.body
  %indvar = phi i14 [ %indvar_next, %burst.wr.body ], [ 0, %burst.wr.header.preheader ]
  %exitcond = icmp eq i14 %indvar, -6384
  %indvar_next = add i14 %indvar, 1
  br i1 %exitcond, label %memcpy.tail, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind
  %empty_55 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str29) nounwind
  %empty_56 = call i32 (...)* @_ssdm_op_SpecLoopName([21 x i8]* @memcpy_OC_result_OC_s) nounwind
  %tmp_63 = zext i14 %indvar to i64
  %uc_addr_1 = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_63
  %uc_load = load double* %uc_addr_1, align 8
  call void @_ssdm_op_Write.m_axi.doubleP(double* %result, double %uc_load, i8 -1) nounwind
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

memcpy.tail:                                      ; preds = %burst.wr.header
  %result_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.doubleP(double* %result) nounwind
  ret void
}

define internal fastcc void @pulse_source(i32 %radius, i32 %step, double %amp, [10000 x double]* nocapture %uc) {
  %amp_read = call double @_ssdm_op_Read.ap_auto.double(double %amp)
  %step_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %step)
  %radius_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %radius)
  %tmp = sitofp i32 %step_read to double
  %tmp_s = fmul double %tmp, 0x400921FB54442D18
  %x_assign_s = fmul double %tmp_s, 2.500000e-01
  %tmp_193_i = sitofp i32 %radius_read to double
  %tmp_193_i_to_int = bitcast double %tmp_193_i to i64
  %tmp_315 = trunc i64 %tmp_193_i_to_int to i52
  %notrhs2 = icmp eq i52 %tmp_315, 0
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %x_assign = phi i32 [ 0, %0 ], [ %i, %.loopexit.loopexit ]
  %phi_mul = phi i64 [ 0, %0 ], [ %next_mul, %.loopexit.loopexit ]
  %tmp_316 = trunc i64 %phi_mul to i15
  %next_mul = add i64 100, %phi_mul
  %ny_load = load i32* @ny, align 4
  %tmp_127 = icmp slt i32 %x_assign, %ny_load
  %i = add nsw i32 1, %x_assign
  br i1 %tmp_127, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %.loopexit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %y_assign = phi i32 [ %j, %._crit_edge ], [ 0, %.preheader.preheader ]
  %nx_load = load i32* @nx, align 4
  %tmp_129 = icmp slt i32 %y_assign, %nx_load
  %j = add nsw i32 %y_assign, 1
  br i1 %tmp_129, label %is_source.exit, label %.loopexit.loopexit

is_source.exit:                                   ; preds = %.preheader
  %scenario_source_x_lo = load i32* @scenario_source_x, align 8
  %tmp_i = sub nsw i32 %scenario_source_x_lo, %x_assign
  %tmp_186_i = sitofp i32 %tmp_i to double
  %tmp_187_i = fmul double %tmp_186_i, %tmp_186_i
  %scenario_source_y_lo = load i32* @scenario_source_y, align 4
  %tmp_188_i = sub nsw i32 %scenario_source_y_lo, %y_assign
  %tmp_189_i = sitofp i32 %tmp_188_i to double
  %tmp_190_i = fmul double %tmp_189_i, %tmp_189_i
  %tmp_191_i = fadd double %tmp_187_i, %tmp_190_i
  %tmp_192_i = call double @llvm.sqrt.f64(double %tmp_191_i) nounwind
  %tmp_192_i_to_int = bitcast double %tmp_192_i to i64
  %tmp_175 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_192_i_to_int, i32 52, i32 62)
  %tmp_317 = trunc i64 %tmp_192_i_to_int to i52
  %tmp_177 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_193_i_to_int, i32 52, i32 62)
  %notlhs = icmp ne i11 %tmp_175, -1
  %notrhs = icmp eq i52 %tmp_317, 0
  %tmp_178 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_177, -1
  %tmp_179 = or i1 %notrhs2, %notlhs1
  %tmp_180 = and i1 %tmp_178, %tmp_179
  %tmp_181 = fcmp ole double %tmp_192_i, %tmp_193_i
  %tmp_182 = and i1 %tmp_180, %tmp_181
  br i1 %tmp_182, label %1, label %._crit_edge

; <label>:1                                       ; preds = %is_source.exit
  %s_out = call fastcc double @sin_cos_range_redux_(double %x_assign_s) nounwind
  %p_Val2_s = bitcast double %s_out to i64
  %tmp_318 = trunc i64 %p_Val2_s to i63
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 false, i63 %tmp_318)
  %ret_i_i_i_i_i = bitcast i64 %p_Result_s to double
  %tmp_130 = fmul double %ret_i_i_i_i_i, %amp_read
  %tmp_319 = trunc i32 %y_assign to i15
  %tmp_252 = add i15 %tmp_316, %tmp_319
  %tmp_253_cast = zext i15 %tmp_252 to i64
  %uc_addr = getelementptr [10000 x double]* %uc, i64 0, i64 %tmp_253_cast
  store double %tmp_130, double* %uc_addr, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %is_source.exit
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc i3 @on_structure_edge(i32 %x, i32 %y) readonly {
  %y_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y)
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x)
  %scenario_nr_struct_l = load i32* @scenario_nr_struct, align 4
  br label %1

; <label>:1                                       ; preds = %._crit_edge13, %0
  %i = phi i31 [ 0, %0 ], [ %i_6, %._crit_edge13 ]
  %i_cast = zext i31 %i to i32
  %tmp = icmp slt i32 %i_cast, %scenario_nr_struct_l
  %i_6 = add i31 %i, 1
  br i1 %tmp, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_s = call i34 @_ssdm_op_BitConcatenate.i34.i31.i3(i31 %i, i3 0)
  %tmp_253 = zext i34 %tmp_s to i64
  %tmp_254 = or i34 %tmp_s, 1
  %tmp_255 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_254)
  %scenario_structure_c = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_255
  %tmp_256 = or i34 %tmp_s, 2
  %tmp_257 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_256)
  %tmp_258 = or i34 %tmp_s, 3
  %tmp_259 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_258)
  %scenario_structure_c_1 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_259
  %scenario_structure_c_2 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_253
  %scenario_structure_c_3 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_257
  %tmp_260 = or i34 %tmp_s, 4
  %tmp_261 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_260)
  %scenario_structure_c_4 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_261
  %tmp_262 = or i34 %tmp_s, 6
  %tmp_263 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_262)
  %tmp_264 = or i34 %tmp_s, 7
  %tmp_265 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_264)
  %scenario_structure_c_5 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_265
  %tmp_266 = or i34 %tmp_s, 5
  %tmp_267 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_266)
  %scenario_structure_c_6 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_267
  %scenario_structure_c_7 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_263
  %scenario_structure_c_8 = load i32* %scenario_structure_c, align 4
  %tmp_132 = icmp slt i32 %scenario_structure_c_8, %y_read
  br i1 %tmp_132, label %3, label %._crit_edge1

; <label>:3                                       ; preds = %2
  %scenario_structure_c_9 = load i32* %scenario_structure_c_1, align 4
  %tmp_133 = icmp sgt i32 %scenario_structure_c_9, %y_read
  br i1 %tmp_133, label %4, label %._crit_edge1

; <label>:4                                       ; preds = %3
  %scenario_structure_c_10 = load i32* %scenario_structure_c_2, align 8
  %tmp_134 = icmp eq i32 %scenario_structure_c_10, %x_read
  br i1 %tmp_134, label %._crit_edge, label %._crit_edge1

._crit_edge1:                                     ; preds = %4, %3, %2
  %scenario_structure_c_11 = load i32* %scenario_structure_c_3, align 8
  %tmp_135 = icmp slt i32 %scenario_structure_c_11, %x_read
  br i1 %tmp_135, label %5, label %._crit_edge5

; <label>:5                                       ; preds = %._crit_edge1
  %scenario_structure_c_12 = load i32* %scenario_structure_c_4, align 8
  %tmp_136 = icmp sgt i32 %scenario_structure_c_12, %x_read
  br i1 %tmp_136, label %6, label %._crit_edge5

; <label>:6                                       ; preds = %5
  %scenario_structure_c_13 = load i32* %scenario_structure_c_1, align 4
  %tmp_137 = icmp eq i32 %scenario_structure_c_13, %y_read
  br i1 %tmp_137, label %._crit_edge, label %._crit_edge5

._crit_edge5:                                     ; preds = %6, %5, %._crit_edge1
  %scenario_structure_c_14 = load i32* %scenario_structure_c_5, align 4
  %tmp_138 = icmp slt i32 %scenario_structure_c_14, %y_read
  br i1 %tmp_138, label %7, label %._crit_edge9

; <label>:7                                       ; preds = %._crit_edge5
  %scenario_structure_c_15 = load i32* %scenario_structure_c_6, align 4
  %tmp_139 = icmp sgt i32 %scenario_structure_c_15, %y_read
  br i1 %tmp_139, label %8, label %._crit_edge9

; <label>:8                                       ; preds = %7
  %scenario_structure_c_16 = load i32* %scenario_structure_c_7, align 8
  %tmp_140 = icmp eq i32 %scenario_structure_c_16, %x_read
  br i1 %tmp_140, label %._crit_edge, label %._crit_edge9

._crit_edge9:                                     ; preds = %8, %7, %._crit_edge5
  %scenario_structure_c_17 = load i32* %scenario_structure_c_2, align 8
  %tmp_141 = icmp slt i32 %scenario_structure_c_17, %x_read
  br i1 %tmp_141, label %9, label %._crit_edge13

; <label>:9                                       ; preds = %._crit_edge9
  %scenario_structure_c_18 = load i32* %scenario_structure_c_7, align 8
  %tmp_142 = icmp sgt i32 %scenario_structure_c_18, %x_read
  %tmp_143 = icmp eq i32 %scenario_structure_c_8, %y_read
  %or_cond = and i1 %tmp_142, %tmp_143
  br i1 %or_cond, label %._crit_edge, label %._crit_edge13

._crit_edge13:                                    ; preds = %9, %._crit_edge9
  br label %1

._crit_edge:                                      ; preds = %9, %8, %6, %4, %1
  %p_0 = phi i3 [ 0, %1 ], [ 1, %4 ], [ -4, %6 ], [ 3, %8 ], [ 2, %9 ]
  ret i3 %p_0
}

define internal fastcc i4 @on_structure_corner(i32 %x, i32 %y) readonly {
  %y_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y)
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x)
  %scenario_nr_struct_l = load i32* @scenario_nr_struct, align 4
  br label %1

; <label>:1                                       ; preds = %._crit_edge10, %0
  %i = phi i31 [ 0, %0 ], [ %i_7, %._crit_edge10 ]
  %i_cast = zext i31 %i to i32
  %tmp = icmp slt i32 %i_cast, %scenario_nr_struct_l
  %i_7 = add i31 %i, 1
  br i1 %tmp, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_s = call i34 @_ssdm_op_BitConcatenate.i34.i31.i3(i31 %i, i3 0)
  %tmp_268 = zext i34 %tmp_s to i64
  %scenario_structure_c = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_268
  %tmp_269 = or i34 %tmp_s, 1
  %tmp_270 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_269)
  %scenario_structure_c_19 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_270
  %tmp_271 = or i34 %tmp_s, 2
  %tmp_272 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_271)
  %scenario_structure_c_20 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_272
  %tmp_273 = or i34 %tmp_s, 3
  %tmp_274 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_273)
  %scenario_structure_c_21 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_274
  %tmp_275 = or i34 %tmp_s, 4
  %tmp_276 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_275)
  %scenario_structure_c_22 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_276
  %tmp_277 = or i34 %tmp_s, 5
  %tmp_278 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_277)
  %scenario_structure_c_23 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_278
  %tmp_279 = or i34 %tmp_s, 6
  %tmp_280 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_279)
  %scenario_structure_c_24 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_280
  %tmp_281 = or i34 %tmp_s, 7
  %tmp_282 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_281)
  %scenario_structure_c_25 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_282
  %scenario_structure_c_26 = load i32* %scenario_structure_c, align 8
  %tmp_144 = icmp eq i32 %scenario_structure_c_26, %x_read
  br i1 %tmp_144, label %3, label %._crit_edge1

; <label>:3                                       ; preds = %2
  %scenario_structure_c_27 = load i32* %scenario_structure_c_19, align 4
  %tmp_145 = icmp eq i32 %scenario_structure_c_27, %y_read
  br i1 %tmp_145, label %._crit_edge, label %._crit_edge1

._crit_edge1:                                     ; preds = %3, %2
  %scenario_structure_c_28 = load i32* %scenario_structure_c_20, align 8
  %tmp_146 = icmp eq i32 %scenario_structure_c_28, %x_read
  br i1 %tmp_146, label %4, label %._crit_edge4

; <label>:4                                       ; preds = %._crit_edge1
  %scenario_structure_c_29 = load i32* %scenario_structure_c_21, align 4
  %tmp_147 = icmp eq i32 %scenario_structure_c_29, %y_read
  br i1 %tmp_147, label %._crit_edge, label %._crit_edge4

._crit_edge4:                                     ; preds = %4, %._crit_edge1
  %scenario_structure_c_30 = load i32* %scenario_structure_c_22, align 8
  %tmp_148 = icmp eq i32 %scenario_structure_c_30, %x_read
  br i1 %tmp_148, label %5, label %._crit_edge7

; <label>:5                                       ; preds = %._crit_edge4
  %scenario_structure_c_31 = load i32* %scenario_structure_c_23, align 4
  %tmp_149 = icmp eq i32 %scenario_structure_c_31, %y_read
  br i1 %tmp_149, label %._crit_edge, label %._crit_edge7

._crit_edge7:                                     ; preds = %5, %._crit_edge4
  %scenario_structure_c_32 = load i32* %scenario_structure_c_24, align 8
  %tmp_150 = icmp eq i32 %scenario_structure_c_32, %x_read
  br i1 %tmp_150, label %6, label %._crit_edge10

; <label>:6                                       ; preds = %._crit_edge7
  %scenario_structure_c_33 = load i32* %scenario_structure_c_25, align 4
  %tmp_151 = icmp eq i32 %scenario_structure_c_33, %y_read
  br i1 %tmp_151, label %._crit_edge, label %._crit_edge10

._crit_edge10:                                    ; preds = %6, %._crit_edge7
  br label %1

._crit_edge:                                      ; preds = %6, %5, %4, %3, %1
  %p_0 = phi i4 [ 0, %1 ], [ 5, %3 ], [ 6, %4 ], [ 7, %5 ], [ -8, %6 ]
  ret i4 %p_0
}

define internal fastcc i3 @on_edge(i32 %x, i32 %y) readonly {
_ifconv:
  %y_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y)
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x)
  %tmp = icmp ne i32 %x_read, 0
  %tmp_s = icmp eq i32 %y_read, 0
  %or_cond = or i1 %tmp, %tmp_s
  %nx_load = load i32* @nx, align 4
  %tmp_152 = add nsw i32 %nx_load, -1
  %tmp_153 = icmp eq i32 %tmp_152, %y_read
  %ny_load = load i32* @ny, align 4
  %tmp_154 = add nsw i32 %ny_load, -1
  %tmp_155 = icmp ne i32 %tmp_154, %x_read
  %tmp_156 = icmp ne i32 %y_read, 0
  %tmp_157 = icmp eq i32 %x_read, 0
  %tmp_158 = icmp eq i32 %tmp_154, %x_read
  %tmp20 = or i1 %tmp_157, %tmp_158
  %or_cond4 = or i1 %tmp20, %tmp_156
  %tmp_159 = icmp ne i32 %tmp_152, %y_read
  %or_cond5 = or i1 %tmp20, %tmp_159
  %p_s = select i1 %or_cond5, i3 0, i3 -4
  %tmp22 = or i1 %tmp_s, %tmp_153
  %sel_tmp = or i1 %tmp22, %tmp_155
  %sel_tmp2 = and i1 %or_cond, %sel_tmp
  %sel_tmp6 = or i1 %sel_tmp2, %tmp_153
  %sel_tmp7 = and i1 %sel_tmp6, %or_cond4
  %sel_tmp8 = select i1 %sel_tmp7, i3 %p_s, i3 2
  %sel_tmp11_demorgan = or i1 %or_cond, %tmp_153
  %sel_tmp1 = select i1 %sel_tmp11_demorgan, i3 %sel_tmp8, i3 1
  %sel_tmp3 = xor i1 %sel_tmp, true
  %sel_tmp4 = and i1 %sel_tmp11_demorgan, %sel_tmp3
  %UnifiedRetVal = select i1 %sel_tmp4, i3 3, i3 %sel_tmp1
  ret i3 %UnifiedRetVal
}

declare double @llvm.sqrt.f64(double) nounwind readonly

declare i178 @llvm.part.set.i178.i59(i178, i59, i32, i32) nounwind readnone

declare i94 @llvm.part.select.i94(i94, i32, i32) nounwind readnone

declare i79 @llvm.part.select.i79(i79, i32, i32) nounwind readnone

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i70 @llvm.part.select.i70(i70, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

declare i188 @llvm.part.select.i188(i188, i32, i32) nounwind readnone

declare i178 @llvm.part.select.i178(i178, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare i126 @llvm.part.select.i126(i126, i32, i32) nounwind readnone

declare i125 @llvm.part.select.i125(i125, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone

define internal fastcc i1 @in_structure(i32 %x, i32 %y) readonly {
  %y_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %y)
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x)
  %scenario_nr_struct_l = load i32* @scenario_nr_struct, align 4
  br label %1

; <label>:1                                       ; preds = %._crit_edge1, %0
  %i = phi i31 [ 0, %0 ], [ %i_8, %._crit_edge1 ]
  %i_cast = zext i31 %i to i32
  %tmp = icmp slt i32 %i_cast, %scenario_nr_struct_l
  %i_8 = add i31 %i, 1
  br i1 %tmp, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_s = call i34 @_ssdm_op_BitConcatenate.i34.i31.i3(i31 %i, i3 0)
  %tmp_283 = zext i34 %tmp_s to i64
  %scenario_structure_c = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_283
  %tmp_284 = or i34 %tmp_s, 6
  %tmp_285 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_284)
  %scenario_structure_c_34 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_285
  %tmp_286 = or i34 %tmp_s, 1
  %tmp_287 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_286)
  %scenario_structure_c_35 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_287
  %tmp_288 = or i34 %tmp_s, 3
  %tmp_289 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 0, i34 %tmp_288)
  %scenario_structure_c_36 = getelementptr [80 x i32]* @scenario_structure_c, i64 0, i64 %tmp_289
  %scenario_structure_c_37 = load i32* %scenario_structure_c, align 8
  %tmp_160 = icmp slt i32 %scenario_structure_c_37, %x_read
  br i1 %tmp_160, label %3, label %._crit_edge1

; <label>:3                                       ; preds = %2
  %scenario_structure_c_38 = load i32* %scenario_structure_c_34, align 8
  %tmp_161 = icmp sgt i32 %scenario_structure_c_38, %x_read
  br i1 %tmp_161, label %4, label %._crit_edge1

; <label>:4                                       ; preds = %3
  %scenario_structure_c_39 = load i32* %scenario_structure_c_35, align 4
  %tmp_162 = icmp slt i32 %scenario_structure_c_39, %y_read
  br i1 %tmp_162, label %5, label %._crit_edge3

; <label>:5                                       ; preds = %4
  %scenario_structure_c_40 = load i32* %scenario_structure_c_36, align 4
  %tmp_163 = icmp sgt i32 %scenario_structure_c_40, %y_read
  br i1 %tmp_163, label %._crit_edge, label %._crit_edge3

._crit_edge3:                                     ; preds = %5, %4
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %._crit_edge3, %3, %2
  br label %1

._crit_edge:                                      ; preds = %5, %1
  %p_0 = phi i1 [ false, %1 ], [ true, %5 ]
  ret i1 %p_0
}

define internal fastcc i178 @big_mult_v3small(i125 %a_V, i53 %b_V) readnone {
.preheader142.preheader:
  %b_V_read = call i53 @_ssdm_op_Read.ap_auto.i53(i53 %b_V)
  %a_V_read = call i125 @_ssdm_op_Read.ap_auto.i125(i125 %a_V)
  %pp_V = alloca [8 x i70], align 8
  %pps_V = alloca [8 x i70], align 8
  %tmp = zext i53 %b_V_read to i70
  br label %.preheader142

.preheader142:                                    ; preds = %_ifconv, %.preheader142.preheader
  %i = phi i4 [ %i_9, %_ifconv ], [ 0, %.preheader142.preheader ]
  %exitcond1 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_9 = add i4 %i, 1
  br i1 %exitcond1, label %arrayctor.loop1.preheader, label %_ifconv

_ifconv:                                          ; preds = %.preheader142
  %tmp_s = icmp eq i4 %i, 7
  %tmp_320 = trunc i4 %i to i3
  %Lo_assign = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_320, i4 %i)
  %tmp_172 = add i7 16, %Lo_assign
  %Ui = select i1 %tmp_s, i7 -4, i7 %tmp_172
  %tmp_173 = zext i4 %i to i64
  %tmp_321 = icmp ugt i7 %Lo_assign, %Ui
  %tmp_322 = call i125 @llvm.part.select.i125(i125 %a_V_read, i32 124, i32 0)
  %tmp_323 = sub i7 %Lo_assign, %Ui
  %tmp_324 = sub i7 -4, %Lo_assign
  %tmp_325 = sub i7 %Ui, %Lo_assign
  %tmp_326 = select i1 %tmp_321, i7 %tmp_323, i7 %tmp_325
  %tmp_327 = select i1 %tmp_321, i125 %tmp_322, i125 %a_V_read
  %tmp_328 = select i1 %tmp_321, i7 %tmp_324, i7 %Lo_assign
  %tmp_329 = sub i7 -4, %tmp_326
  %tmp_330 = zext i7 %tmp_328 to i125
  %tmp_331 = zext i7 %tmp_329 to i125
  %tmp_332 = lshr i125 %tmp_327, %tmp_330
  %tmp_333 = lshr i125 -1, %tmp_331
  %p_Result_15 = and i125 %tmp_332, %tmp_333
  %tmp_335 = trunc i125 %p_Result_15 to i70
  %tmp_175 = mul i70 %tmp, %tmp_335
  %pp_V_addr_2 = getelementptr [8 x i70]* %pp_V, i64 0, i64 %tmp_173
  store i70 %tmp_175, i70* %pp_V_addr_2, align 16
  br label %.preheader142

arrayctor.loop1.preheader:                        ; preds = %.preheader142
  %pp_V_addr = getelementptr [8 x i70]* %pp_V, i64 0, i64 0
  %pp_V_load = load i70* %pp_V_addr, align 16
  %pps_V_addr = getelementptr [8 x i70]* %pps_V, i64 0, i64 0
  store i70 %pp_V_load, i70* %pps_V_addr, align 16
  br label %0

; <label>:0                                       ; preds = %_ZrsILi70ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %arrayctor.loop1.preheader
  %i_1 = phi i4 [ 1, %arrayctor.loop1.preheader ], [ %i_10, %_ZrsILi70ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %exitcond2 = icmp eq i4 %i_1, -8
  %empty_57 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  br i1 %exitcond2, label %.preheader.preheader, label %_ZrsILi70ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

.preheader.preheader:                             ; preds = %0
  br label %.preheader

_ZrsILi70ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %0
  %tmp_176 = zext i4 %i_1 to i64
  %tmp_177 = add i4 %i_1, -1
  %tmp_178 = zext i4 %tmp_177 to i64
  %pps_V_addr_1 = getelementptr [8 x i70]* %pps_V, i64 0, i64 %tmp_178
  %pps_V_load = load i70* %pps_V_addr_1, align 16
  %r_V = call i53 @_ssdm_op_PartSelect.i53.i70.i32.i32(i70 %pps_V_load, i32 17, i32 69)
  %r_V_7 = zext i53 %r_V to i70
  %pps_V_addr_2 = getelementptr [8 x i70]* %pps_V, i64 0, i64 %tmp_176
  %pp_V_addr_1 = getelementptr [8 x i70]* %pp_V, i64 0, i64 %tmp_176
  %pp_V_load_1 = load i70* %pp_V_addr_1, align 16
  %tmp_179 = add i70 %pp_V_load_1, %r_V_7
  store i70 %tmp_179, i70* %pps_V_addr_2, align 16
  %i_10 = add i4 %i_1, 1
  br label %0

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge143
  %p_Val2_s = phi i178 [ %p_Result_14, %._crit_edge143 ], [ undef, %.preheader.preheader ]
  %i_2 = phi i3 [ %tmp_181, %._crit_edge143 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %i_2, -1
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  %tmp_181 = add i3 %i_2, 1
  br i1 %exitcond, label %1, label %._crit_edge143

._crit_edge143:                                   ; preds = %.preheader
  %Li = call i7 @_ssdm_op_BitConcatenate.i7.i3.i1.i3(i3 %i_2, i1 false, i3 %i_2)
  %Ui_1 = add i7 16, %Li
  %tmp_180 = zext i3 %i_2 to i64
  %pps_V_addr_4 = getelementptr [8 x i70]* %pps_V, i64 0, i64 %tmp_180
  %p_Val2_33 = load i70* %pps_V_addr_4, align 16
  %tmp_337 = trunc i70 %p_Val2_33 to i17
  %loc_V = zext i17 %tmp_337 to i178
  %tmp_338 = icmp ugt i7 %Li, -17
  %tmp_339 = zext i7 %Li to i8
  %tmp_340 = zext i7 %Ui_1 to i8
  %tmp_341 = sub i8 -79, %tmp_339
  %tmp_342 = select i1 %tmp_338, i8 %tmp_339, i8 %tmp_340
  %tmp_343 = select i1 %tmp_338, i8 %tmp_340, i8 %tmp_339
  %tmp_344 = select i1 %tmp_338, i8 %tmp_341, i8 %tmp_339
  %tmp_345 = sub i8 -79, %tmp_342
  %tmp_346 = zext i8 %tmp_344 to i178
  %tmp_347 = zext i8 %tmp_343 to i178
  %tmp_348 = zext i8 %tmp_345 to i178
  %tmp_349 = shl i178 %loc_V, %tmp_346
  %tmp_350 = call i178 @llvm.part.select.i178(i178 %tmp_349, i32 177, i32 0)
  %tmp_351 = select i1 %tmp_338, i178 %tmp_350, i178 %tmp_349
  %tmp_352 = shl i178 -1, %tmp_347
  %tmp_353 = lshr i178 -1, %tmp_348
  %p_demorgan = and i178 %tmp_352, %tmp_353
  %tmp_354 = xor i178 %p_demorgan, -1
  %tmp_355 = and i178 %p_Val2_s, %tmp_354
  %tmp_356 = and i178 %tmp_351, %p_demorgan
  %p_Result_14 = or i178 %tmp_355, %tmp_356
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  %pps_V_addr_3 = getelementptr [8 x i70]* %pps_V, i64 0, i64 7
  %pps_V_load_1 = load i70* %pps_V_addr_3, align 16
  %tmp_336 = trunc i70 %pps_V_load_1 to i59
  %p_Result_s = call i178 @llvm.part.set.i178.i59(i178 %p_Val2_s, i59 %tmp_336, i32 119, i32 177)
  ret i178 %p_Result_s
}

define internal fastcc i188 @"big_mult_v3<94, 17>"(i78 %a_V) readnone {
.preheader163.preheader:
  %a_V_read = call i78 @_ssdm_op_Read.ap_auto.i78(i78 %a_V)
  %a_V_cast = zext i78 %a_V_read to i94
  %pp_V = alloca [36 x i34], align 8
  %pp_V_addr = getelementptr [36 x i34]* %pp_V, i64 0, i64 0
  %pps_V = alloca [12 x i48], align 8
  br label %.preheader163

.preheader163.loopexit:                           ; preds = %.preheader162
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.loopexit, %.preheader163.preheader
  %i = phi i3 [ 0, %.preheader163.preheader ], [ %i_11, %.preheader163.loopexit ]
  %exitcond3 = icmp eq i3 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %i_11 = add i3 %i, 1
  br i1 %exitcond3, label %arrayctor.loop4.preheader, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %.preheader163
  %tmp_s = icmp eq i3 %i, -3
  %tmp_290 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 0)
  %p_shl_cast = zext i6 %tmp_290 to i7
  %tmp_291 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %i, i1 false)
  %p_shl1_cast = zext i4 %tmp_291 to i7
  %tmp_292 = sub i7 %p_shl_cast, %p_shl1_cast
  %Lo_assign = call i7 @_ssdm_op_BitConcatenate.i7.i3.i1.i3(i3 %i, i1 false, i3 %i)
  %tmp_183 = add i7 %Lo_assign, 16
  %Ui_2 = select i1 %tmp_s, i7 -35, i7 %tmp_183
  br label %.preheader162

.preheader162:                                    ; preds = %_ifconv, %.preheader162.preheader
  %j = phi i3 [ %j_6, %_ifconv ], [ 0, %.preheader162.preheader ]
  %exitcond5 = icmp eq i3 %j, -2
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %j_6 = add i3 %j, 1
  br i1 %exitcond5, label %.preheader163.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader162
  %tmp_187 = icmp eq i3 %j, -3
  %Lo_assign_1 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i1.i3(i3 %j, i1 false, i3 %j)
  %tmp_188 = add i7 16, %Lo_assign_1
  %Uj = select i1 %tmp_187, i7 -35, i7 %tmp_188
  %tmp_189_cast = zext i3 %j to i7
  %tmp_293 = add i7 %tmp_292, %tmp_189_cast
  %tmp_299_cast = sext i7 %tmp_293 to i64
  %pp_V_addr_3 = getelementptr [36 x i34]* %pp_V, i64 0, i64 %tmp_299_cast
  %tmp_358 = icmp ugt i7 %Lo_assign, %Ui_2
  %tmp_359 = call i94 @llvm.part.select.i94(i94 %a_V_cast, i32 93, i32 0)
  %tmp_360 = sub i7 %Lo_assign, %Ui_2
  %tmp_361 = sub i7 -35, %Lo_assign
  %tmp_362 = sub i7 %Ui_2, %Lo_assign
  %tmp_363 = select i1 %tmp_358, i7 %tmp_360, i7 %tmp_362
  %tmp_364 = select i1 %tmp_358, i94 %tmp_359, i94 %a_V_cast
  %tmp_365 = select i1 %tmp_358, i7 %tmp_361, i7 %Lo_assign
  %tmp_366 = sub i7 -35, %tmp_363
  %tmp_367 = zext i7 %tmp_365 to i94
  %tmp_368 = zext i7 %tmp_366 to i94
  %tmp_369 = lshr i94 %tmp_364, %tmp_367
  %tmp_370 = lshr i94 -1, %tmp_368
  %p_Result_16 = and i94 %tmp_369, %tmp_370
  %tmp_372 = icmp ugt i7 %Lo_assign_1, %Uj
  %tmp_373 = sub i7 %Lo_assign_1, %Uj
  %tmp_374 = sub i7 -35, %Lo_assign_1
  %tmp_375 = sub i7 %Uj, %Lo_assign_1
  %tmp_376 = select i1 %tmp_372, i7 %tmp_373, i7 %tmp_375
  %tmp_377 = select i1 %tmp_372, i94 -8932543859452897742033846272, i94 237372029602271161299249
  %tmp_378 = select i1 %tmp_372, i7 %tmp_374, i7 %Lo_assign_1
  %tmp_379 = sub i7 -35, %tmp_376
  %tmp_380 = zext i7 %tmp_378 to i94
  %tmp_381 = zext i7 %tmp_379 to i94
  %tmp_382 = lshr i94 %tmp_377, %tmp_380
  %tmp_383 = lshr i94 -1, %tmp_381
  %p_Result_17 = and i94 %tmp_382, %tmp_383
  %tmp_385 = trunc i94 %p_Result_16 to i34
  %tmp_386 = trunc i94 %p_Result_17 to i34
  %tmp_192 = mul i34 %tmp_386, %tmp_385
  store i34 %tmp_192, i34* %pp_V_addr_3, align 8
  br label %.preheader162

arrayctor.loop4.preheader:                        ; preds = %.preheader163
  %pp_V_load = load i34* %pp_V_addr, align 16
  %tmp = zext i34 %pp_V_load to i48
  %pps_V_addr = getelementptr [12 x i48]* %pps_V, i64 0, i64 0
  store i48 %tmp, i48* %pps_V_addr, align 16
  br label %0

; <label>:0                                       ; preds = %4, %arrayctor.loop4.preheader
  %i_1 = phi i4 [ 1, %arrayctor.loop4.preheader ], [ %i_13, %4 ]
  %i_1_cast = zext i4 %i_1 to i5
  %exitcond4 = icmp eq i4 %i_1, -4
  %empty_60 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11)
  br i1 %exitcond4, label %.preheader.preheader, label %_ZrsILi48ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

.preheader.preheader:                             ; preds = %0
  br label %.preheader

_ZrsILi48ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %0
  %tmp_184 = zext i4 %i_1 to i64
  %tmp_185 = add i4 %i_1, -1
  %tmp_186 = zext i4 %tmp_185 to i64
  %pps_V_addr_5 = getelementptr [12 x i48]* %pps_V, i64 0, i64 %tmp_186
  %pps_V_load = load i48* %pps_V_addr_5, align 8
  %r_V = call i31 @_ssdm_op_PartSelect.i31.i48.i32.i32(i48 %pps_V_load, i32 17, i32 47)
  %r_V_8 = zext i31 %r_V to i48
  %pps_V_addr_6 = getelementptr [12 x i48]* %pps_V, i64 0, i64 %tmp_184
  store i48 %r_V_8, i48* %pps_V_addr_6, align 8
  br label %1

; <label>:1                                       ; preds = %._crit_edge165, %_ZrsILi48ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %j_1 = phi i3 [ 0, %_ZrsILi48ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %j_7, %._crit_edge165 ]
  %j_1_cast3 = zext i3 %j_1 to i5
  %j_1_cast3_cast = zext i3 %j_1 to i4
  %exitcond6 = icmp eq i3 %j_1, -2
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %j_7 = add i3 %j_1, 1
  br i1 %exitcond6, label %4, label %2

; <label>:2                                       ; preds = %1
  %ult = icmp ult i4 %i_1, %j_1_cast3_cast
  %rev5 = xor i1 %ult, true
  %tmp_196 = sub i5 %i_1_cast, %j_1_cast3
  %tmp_197 = icmp slt i5 %tmp_196, 6
  %or_cond = and i1 %rev5, %tmp_197
  br i1 %or_cond, label %3, label %._crit_edge165

; <label>:3                                       ; preds = %2
  %tmp_198_cast = sext i5 %tmp_196 to i7
  %tmp_294 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %j_1, i3 0)
  %p_shl2_cast = zext i6 %tmp_294 to i7
  %tmp_295 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j_1, i1 false)
  %p_shl3_cast = zext i4 %tmp_295 to i7
  %tmp_296 = sub i7 %p_shl2_cast, %p_shl3_cast
  %tmp_297 = add i7 %tmp_296, %tmp_198_cast
  %tmp_303_cast = sext i7 %tmp_297 to i64
  %pp_V_addr_4 = getelementptr [36 x i34]* %pp_V, i64 0, i64 %tmp_303_cast
  %pp_V_load_2 = load i34* %pp_V_addr_4, align 8
  %tmp_199 = zext i34 %pp_V_load_2 to i48
  %pps_V_load_4 = load i48* %pps_V_addr_6, align 8
  %tmp_200 = add i48 %tmp_199, %pps_V_load_4
  store i48 %tmp_200, i48* %pps_V_addr_6, align 8
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %3, %2
  br label %1

; <label>:4                                       ; preds = %1
  %i_13 = add i4 %i_1, 1
  br label %0

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge166
  %p_Val2_34 = phi i188 [ %p_Result_s, %._crit_edge166 ], [ undef, %.preheader.preheader ]
  %i_2 = phi i4 [ %i_12, %._crit_edge166 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %i_2, -4
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %i_12 = add i4 %i_2, 1
  br i1 %exitcond, label %5, label %._crit_edge166

._crit_edge166:                                   ; preds = %.preheader
  %Li = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i_2, i4 %i_2)
  %Ui = add i8 16, %Li
  %tmp_193 = icmp ugt i8 %Ui, -69
  %Hi_assign = select i1 %tmp_193, i8 -69, i8 %Ui
  %tmp_194 = zext i4 %i_2 to i64
  %pps_V_addr_7 = getelementptr [12 x i48]* %pps_V, i64 0, i64 %tmp_194
  %p_Val2_s = load i48* %pps_V_addr_7, align 8
  %tmp_387 = trunc i48 %p_Val2_s to i17
  %loc_V = zext i17 %tmp_387 to i188
  %tmp_388 = icmp ugt i8 %Li, %Hi_assign
  %tmp_389 = sub i8 -69, %Li
  %tmp_390 = select i1 %tmp_388, i8 %Li, i8 %Hi_assign
  %tmp_391 = select i1 %tmp_388, i8 %Hi_assign, i8 %Li
  %tmp_392 = select i1 %tmp_388, i8 %tmp_389, i8 %Li
  %tmp_393 = sub i8 -69, %tmp_390
  %tmp_394 = zext i8 %tmp_392 to i188
  %tmp_395 = zext i8 %tmp_391 to i188
  %tmp_396 = zext i8 %tmp_393 to i188
  %tmp_397 = shl i188 %loc_V, %tmp_394
  %tmp_398 = call i188 @llvm.part.select.i188(i188 %tmp_397, i32 187, i32 0)
  %tmp_399 = select i1 %tmp_388, i188 %tmp_398, i188 %tmp_397
  %tmp_400 = shl i188 -1, %tmp_395
  %tmp_401 = lshr i188 -1, %tmp_396
  %p_demorgan = and i188 %tmp_400, %tmp_401
  %tmp_402 = xor i188 %p_demorgan, -1
  %tmp_403 = and i188 %p_Val2_34, %tmp_402
  %tmp_404 = and i188 %tmp_399, %p_demorgan
  %p_Result_s = or i188 %tmp_403, %tmp_404
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret i188 %p_Val2_34
}

define weak i1 @_ssdm_op_WriteResp.m_axi.doubleP(double*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.doubleP(double*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.doubleP(double*, double, i8) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i78 @_ssdm_op_Read.ap_auto.i78(i78) {
entry:
  ret i78 %0
}

define weak i53 @_ssdm_op_Read.ap_auto.i53(i53) {
entry:
  ret i53 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i125 @_ssdm_op_Read.ap_auto.i125(i125) {
entry:
  ret i125 %0
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak i79 @_ssdm_op_PartSelect.i79.i188.i32.i32(i188, i32, i32) nounwind readnone {
entry:
  %empty = call i188 @llvm.part.select.i188(i188 %0, i32 %1, i32 %2)
  %empty_63 = trunc i188 %empty to i79
  ret i79 %empty_63
}

define weak i78 @_ssdm_op_PartSelect.i78.i79.i32.i32(i79, i32, i32) nounwind readnone {
entry:
  %empty = call i79 @llvm.part.select.i79(i79 %0, i32 %1, i32 %2)
  %empty_64 = trunc i79 %empty to i78
  ret i78 %empty_64
}

define weak i78 @_ssdm_op_PartSelect.i78.i188.i32.i32(i188, i32, i32) nounwind readnone {
entry:
  %empty = call i188 @llvm.part.select.i188(i188 %0, i32 %1, i32 %2)
  %empty_65 = trunc i188 %empty to i78
  ret i78 %empty_65
}

define weak i78 @_ssdm_op_PartSelect.i78.i178.i32.i32(i178, i32, i32) nounwind readnone {
entry:
  %empty = call i178 @llvm.part.select.i178(i178 %0, i32 %1, i32 %2)
  %empty_66 = trunc i178 %empty to i78
  ret i78 %empty_66
}

declare i77 @_ssdm_op_PartSelect.i77.i79.i32.i32(i79, i32, i32) nounwind readnone

define weak i76 @_ssdm_op_PartSelect.i76.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_67 = trunc i78 %empty to i76
  ret i76 %empty_67
}

define weak i76 @_ssdm_op_PartSelect.i76.i126.i32.i32(i126, i32, i32) nounwind readnone {
entry:
  %empty = call i126 @llvm.part.select.i126(i126 %0, i32 %1, i32 %2)
  %empty_68 = trunc i126 %empty to i76
  ret i76 %empty_68
}

declare i70 @_ssdm_op_PartSelect.i70.i125.i32.i32(i125, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i59 @_ssdm_op_PartSelect.i59.i70.i32.i32(i70, i32, i32) nounwind readnone

define weak i53 @_ssdm_op_PartSelect.i53.i70.i32.i32(i70, i32, i32) nounwind readnone {
entry:
  %empty = call i70 @llvm.part.select.i70(i70 %0, i32 %1, i32 %2)
  %empty_69 = trunc i70 %empty to i53
  ret i53 %empty_69
}

define weak i52 @_ssdm_op_PartSelect.i52.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_70 = trunc i78 %empty to i52
  ret i52 %empty_70
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_71 = trunc i12 %empty to i4
  ret i4 %empty_71
}

declare i34 @_ssdm_op_PartSelect.i34.i94.i32.i32(i94, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_72 = trunc i136 %empty to i32
  ret i32 %empty_72
}

define weak i31 @_ssdm_op_PartSelect.i31.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_73 = trunc i48 %empty to i31
  ret i31 %empty_73
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_74 = trunc i32 %empty to i31
  ret i31 %empty_74
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i178.i32.i32(i178, i32, i32) nounwind readnone {
entry:
  %empty = call i178 @llvm.part.select.i178(i178 %0, i32 %1, i32 %2)
  %empty_75 = trunc i178 %empty to i3
  ret i3 %empty_75
}

declare i17 @_ssdm_op_PartSelect.i17.i70.i32.i32(i70, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i48.i32.i32(i48, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_76 = trunc i78 %empty to i16
  ret i16 %empty_76
}

declare i15 @_ssdm_op_PartSelect.i15.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i125 @_ssdm_op_PartSelect.i125.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_77 = trunc i256 %empty to i125
  ret i125 %empty_77
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_78 = trunc i64 %empty to i11
  ret i11 %empty_78
}

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i79.i32(i79, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i79
  %empty_79 = shl i79 1, %empty
  %empty_80 = and i79 %0, %empty_79
  %empty_81 = icmp ne i79 %empty_80, 0
  ret i1 %empty_81
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_82 = shl i64 1, %empty
  %empty_83 = and i64 %0, %empty_82
  %empty_84 = icmp ne i64 %empty_83, 0
  ret i1 %empty_84
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_85 = shl i53 1, %empty
  %empty_86 = and i53 %0, %empty_85
  %empty_87 = icmp ne i53 %empty_86, 0
  ret i1 %empty_87
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_88 = and i32 %0, %empty
  %empty_89 = icmp ne i32 %empty_88, 0
  ret i1 %empty_89
}

define weak i1 @_ssdm_op_BitSelect.i1.i178.i32(i178, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i178
  %empty_90 = shl i178 1, %empty
  %empty_91 = and i178 %0, %empty_90
  %empty_92 = icmp ne i178 %empty_91, 0
  ret i1 %empty_92
}

define weak i1 @_ssdm_op_BitSelect.i1.i126.i32(i126, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i126
  %empty_93 = shl i126 1, %empty
  %empty_94 = and i126 %0, %empty_93
  %empty_95 = icmp ne i126 %empty_94, 0
  ret i1 %empty_95
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_96 = shl i12 1, %empty
  %empty_97 = and i12 %0, %empty_96
  %empty_98 = icmp ne i12 %empty_97, 0
  ret i1 %empty_98
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_99 = zext i4 %1 to i8
  %empty_100 = shl i8 %empty, 4
  %empty_101 = or i8 %empty_100, %empty_99
  ret i8 %empty_101
}

define weak i78 @_ssdm_op_BitConcatenate.i78.i77.i1(i77, i1) nounwind readnone {
entry:
  %empty = zext i77 %0 to i78
  %empty_102 = zext i1 %1 to i78
  %empty_103 = shl i78 %empty, 1
  %empty_104 = or i78 %empty_103, %empty_102
  ret i78 %empty_104
}

define weak i78 @_ssdm_op_BitConcatenate.i78.i1.i52.i25(i1, i52, i25) nounwind readnone {
entry:
  %empty = zext i52 %1 to i77
  %empty_105 = zext i25 %2 to i77
  %empty_106 = shl i77 %empty, 25
  %empty_107 = or i77 %empty_106, %empty_105
  %empty_108 = zext i1 %0 to i78
  %empty_109 = zext i77 %empty_107 to i78
  %empty_110 = shl i78 %empty_108, 77
  %empty_111 = or i78 %empty_110, %empty_109
  ret i78 %empty_111
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_112 = zext i4 %1 to i7
  %empty_113 = shl i7 %empty, 4
  %empty_114 = or i7 %empty_113, %empty_112
  ret i7 %empty_114
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i1.i3(i3, i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %1 to i4
  %empty_115 = zext i3 %2 to i4
  %empty_116 = shl i4 %empty, 3
  %empty_117 = or i4 %empty_116, %empty_115
  %empty_118 = zext i3 %0 to i7
  %empty_119 = zext i4 %empty_117 to i7
  %empty_120 = shl i7 %empty_118, 4
  %empty_121 = or i7 %empty_120, %empty_119
  ret i7 %empty_121
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30, i34) nounwind readnone {
entry:
  %empty = zext i30 %0 to i64
  %empty_122 = zext i34 %1 to i64
  %empty_123 = shl i64 %empty, 34
  %empty_124 = or i64 %empty_123, %empty_122
  ret i64 %empty_124
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_125 = zext i63 %1 to i64
  %empty_126 = shl i64 %empty, 63
  %empty_127 = or i64 %empty_126, %empty_125
  ret i64 %empty_127
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1, i11, i52) nounwind readnone {
entry:
  %empty = zext i11 %1 to i63
  %empty_128 = zext i52 %2 to i63
  %empty_129 = shl i63 %empty, 52
  %empty_130 = or i63 %empty_129, %empty_128
  %empty_131 = zext i1 %0 to i64
  %empty_132 = zext i63 %empty_130 to i64
  %empty_133 = shl i64 %empty_131, 63
  %empty_134 = or i64 %empty_133, %empty_132
  ret i64 %empty_134
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_135 = zext i3 %1 to i6
  %empty_136 = shl i6 %empty, 3
  %empty_137 = or i6 %empty_136, %empty_135
  ret i6 %empty_137
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_138 = zext i52 %1 to i53
  %empty_139 = shl i53 %empty, 52
  %empty_140 = or i53 %empty_139, %empty_138
  ret i53 %empty_140
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_141 = zext i1 %1 to i4
  %empty_142 = shl i4 %empty, 1
  %empty_143 = or i4 %empty_142, %empty_141
  ret i4 %empty_143
}

define weak i34 @_ssdm_op_BitConcatenate.i34.i31.i3(i31, i3) nounwind readnone {
entry:
  %empty = zext i31 %0 to i34
  %empty_144 = zext i3 %1 to i34
  %empty_145 = shl i34 %empty, 3
  %empty_146 = or i34 %empty_145, %empty_144
  ret i34 %empty_146
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %0 to i32
  %empty_147 = zext i16 %1 to i32
  %empty_148 = shl i32 %empty, 16
  %empty_149 = or i32 %empty_148, %empty_147
  ret i32 %empty_149
}

declare void @_GLOBAL__I_a1947() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !0, !0, !0, !7, !13, !17, !17, !13, !19, !23, !26, !32, !36, !36, !32, !36, !36, !36, !38, !41, !36, !36, !43, !49, !32, !36, !51, !52, !51, !52, !51, !52, !32, !36, !32, !36, !32, !36, !32, !36, !32, !36, !32, !32, !36, !36, !53, !57, !53, !57, !59, !62, !64, !66, !32, !36, !32, !36, !32, !36, !68, !70, !68, !70, !68, !70, !70, !68, !70, !70, !68, !70, !68, !70, !71, !71, !75, !75, !77, !79, !85, !85, !79, !88, !79, !79, !79, !91, !91, !93, !93, !95, !79, !79, !79, !98, !85, !85, !79, !101, !79, !79, !79, !103, !103, !105, !105, !107, !79, !79, !79, !79, !79, !79, !109, !79, !79, !79, !79, !75, !75, !77, !109, !79, !75, !75, !77, !109, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !111, !111, !111, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !111, !111, !111, !113, !113, !113, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !113, !113, !113, !79, !113, !113, !113, !118, !79, !79, !79, !79, !120, !120, !122, !122, !126, !129, !129, !79, !79, !79, !79, !131, !133, !133, !79, !120, !120, !134, !134, !136, !138, !138, !79, !79, !79, !79, !139, !141, !141, !120, !142, !142, !144, !79, !146, !146, !149, !144, !151, !151, !79, !79, !79, !153, !153, !79, !154, !153, !153, !156, !153, !153, !158, !79, !79, !79, !79, !79, !79, !79, !79, !118, !79, !79, !79, !79, !120, !120, !160, !160, !162, !164, !164, !79, !79, !79, !79, !165, !167, !167, !120, !120, !168, !168, !170, !172, !172, !79, !173, !105, !105, !120, !174, !174, !149, !144, !176, !176, !79, !79, !153, !153, !178, !153, !153, !180, !79, !79, !79, !79, !79, !79, !70, !182, !184, !185, !184, !186, !186, !188, !190, !190, !79, !191, !193, !193, !120, !188, !191, !193, !193, !120, !194, !79, !149, !144, !196, !196, !68, !198, !184, !200, !184, !202, !202, !203, !205, !205, !79, !79, !206, !208, !208, !120, !203, !206, !208, !208, !120, !209, !79, !211, !211, !70, !185, !184, !68, !200, !184, !70, !182, !184, !68, !198, !184, !70, !68, !70, !68, !213, !79, !79, !215, !79, !36, !32, !36, !32, !36, !36, !32, !32, !66, !79, !64, !79, !62, !211, !211, !79, !79, !216, !217, !141, !141, !59, !211, !211, !79, !57, !219, !221, !221, !222, !79, !79, !79, !208, !208, !224, !224, !226, !226, !229, !198, !133, !133, !79, !232, !234, !79, !79, !79, !103, !103, !236, !236, !79, !120, !120, !237, !237, !239, !241, !208, !208, !79, !243, !79, !79, !79, !133, !133, !93, !93, !245, !245, !79, !138, !138, !138, !79, !247, !249, !247, !249, !247, !249, !250, !53, !182, !167, !167, !79, !120, !120, !237, !237, !253, !255, !255, !256, !193, !193, !79, !172, !172, !172, !258, !249, !258, !249, !260, !57, !53, !36, !262, !79, !79, !79, !266, !85, !85, !79, !79, !269, !269, !79, !271, !271, !271, !273, !275, !275, !269, !79, !149, !144, !277, !277, !153, !153, !79, !279, !281, !281, !283, !285, !285, !79, !287, !287, !289, !287, !287, !289, !291, !294, !79, !79, !79, !296, !85, !85, !298, !79, !79, !79, !300, !300, !300, !79, !149, !302, !303, !303, !126, !131, !133, !133, !79, !79, !120, !305, !305, !307, !307, !308, !310, !310, !311, !313, !313, !311, !36, !315, !79, !32, !317, !319, !319, !321, !319, !319, !321, !323, !79, !79, !79, !325, !85, !85, !298, !79, !79, !79, !327, !327, !327, !79, !149, !302, !329, !329, !162, !165, !167, !167, !79, !79, !120, !331, !331, !307, !307, !308, !310, !310, !333, !335, !335, !333, !32, !337, !36, !250, !32, !339, !341, !79, !79, !79, !193, !193, !343, !343, !345, !345, !347, !260, !36, !32, !36, !32, !36, !32, !36, !32, !52, !79, !349, !184, !351, !354, !79, !79, !133, !133, !103, !103, !51, !79, !356, !358, !52, !51, !52, !51, !68, !70, !49, !360, !79, !79, !362, !149, !144, !363, !363, !365, !365, !79, !79, !79, !79, !367, !79, !79, !79, !369, !369, !93, !93, !371, !79, !79, !79, !373, !375, !375, !376, !376, !79, !79, !373, !375, !375, !79, !79, !378, !378, !378, !79, !380, !79, !79, !79, !79, !79, !79, !382, !382, !382, !79, !384, !79, !79, !79, !79, !79, !79, !79, !79, !386, !386, !386, !388, !388, !390, !392, !79, !395, !283, !310, !310, !79, !397, !397, !399, !401, !120, !404, !404, !406, !406, !408, !79, !313, !313, !311, !120, !409, !409, !411, !413, !411, !411, !79, !79, !79, !79, !79, !79, !298, !79, !79, !375, !375, !415, !397, !397, !399, !79, !120, !417, !417, !419, !419, !419, !79, !413, !421, !421, !422, !399, !399, !423, !423, !79, !79, !422, !399, !399, !79, !79, !425, !427, !429, !429, !79, !310, !310, !79, !79, !430, !430, !430, !432, !79, !79, !434, !434, !434, !436, !79, !79, !79, !79, !79, !79, !79, !79, !438, !438, !438, !79, !440, !440, !442, !444, !79, !79, !79, !79, !79, !446, !446, !446, !79, !448, !448, !450, !79, !452, !452, !454, !79, !79, !120, !455, !455, !457, !457, !459, !79, !79, !460, !466, !298, !79, !79, !79, !454, !454, !454, !467, !467, !469, !79, !79, !79, !79, !470, !470, !470, !472, !475, !475, !477, !452, !479, !79, !120, !481, !481, !483, !485, !485, !79, !79, !79, !79, !486, !488, !488, !149, !144, !489, !489, !79, !120, !491, !491, !493, !493, !493, !79, !79, !79, !495, !497, !497, !120, !79, !79, !211, !211, !79, !498, !500, !470, !470, !79, !310, !310, !79, !79, !501, !501, !501, !503, !144, !505, !505, !507, !79, !509, !509, !511, !266, !85, !85, !79, !79, !153, !153, !79, !513, !509, !509, !511, !120, !514, !514, !516, !518, !518, !79, !79, !79, !79, !519, !79, !120, !521, !521, !523, !523, !526, !528, !528, !120, !529, !529, !531, !533, !533, !79, !79, !79, !79, !534, !535, !528, !528, !120, !537, !537, !539, !542, !542, !79, !79, !79, !79, !544, !546, !546, !548, !548, !550, !550, !551, !79, !79, !553, !120, !556, !556, !120, !558, !558, !560, !560, !560, !79, !79, !79, !562, !79, !79, !79, !564, !564, !564, !79, !566, !566, !184, !153, !153, !568, !149, !144, !570, !570, !126, !131, !120, !572, !572, !79, !79, !79, !79, !79, !79, !79, !153, !153, !79, !79, !574, !79, !79, !79, !79, !79, !79, !79, !79, !79, !43, !576, !578, !185, !184, !79, !580, !580, !79, !79, !582, !79, !585, !184, !587, !587, !587, !79, !79, !589, !591, !591, !592, !298, !79, !79, !594, !594, !79, !587, !589, !591, !591, !153, !153, !120, !596, !596, !598, !600, !600, !79, !589, !120, !601, !601, !79, !79, !153, !153, !585, !603, !79, !79, !79, !605, !605, !591, !591, !607, !607, !79, !79, !153, !153, !609, !79, !605, !605, !609, !184, !611, !611, !613, !79, !79, !79, !79, !614, !617, !620, !622, !622, !623, !623, !79, !79, !625, !625, !627, !79, !625, !625, !625, !79, !79, !79, !629, !629, !631, !472, !633, !79, !79, !79, !79, !635, !637, !79, !625, !625, !625, !638, !627, !627, !298, !79, !79, !623, !623, !302, !640, !640, !642, !642, !644, !79, !645, !605, !605, !307, !307, !308, !310, !310, !623, !646, !120, !120, !648, !184, !249, !249, !79, !650, !93, !93, !107, !103, !103, !144, !79, !652, !652, !564, !564, !654, !656, !656, !79, !120, !657, !657, !79, !79, !585, !591, !591, !659, !79, !79, !660, !663, !664, !167, !167, !591, !591, !120, !666, !666, !668, !668, !668, !79, !670, !672, !672, !607, !607, !120, !674, !674, !676, !676, !676, !79, !79, !79, !79, !678, !680, !680, !682, !684, !684, !684, !120, !686, !686, !688, !690, !690, !79, !79, !79, !79, !691, !693, !693, !79, !120, !694, !694, !696, !698, !693, !693, !700, !700, !702, !79, !79, !120, !704, !704, !706, !709, !709, !79, !79, !79, !79, !711, !79, !79, !713, !713, !715, !715, !79, !79, !717, !79, !79, !79, !79, !718, !718, !120, !720, !720, !722, !722, !722, !79, !79, !79, !79, !120, !724, !724, !726, !726, !726, !79, !79, !79, !79, !728, !730, !730, !732, !734, !734, !736, !738, !738, !120, !739, !739, !741, !743, !743, !79, !79, !79, !79, !744, !745, !738, !738, !120, !747, !747, !749, !751, !751, !79, !79, !79, !79, !753, !755, !755, !757, !757, !730, !730, !759, !79, !79, !761, !153, !153, !763, !184, !120, !765, !765, !767, !767, !767, !79, !79, !79, !79, !769, !79, !79, !79, !771, !771, !771, !79, !79, !79, !120, !773, !773, !153, !153, !775, !153, !153, !79, !777, !79, !779, !755, !755, !781, !783, !783, !783, !79, !79, !79, !785, !120, !120, !787, !787, !783, !783, !783, !789, !79, !79, !79, !79, !79, !79, !79, !79, !79, !79, !79, !79, !79, !79, !68, !68, !790, !200, !184, !200, !184, !792, !792, !79, !795, !141, !141, !797, !798, !800, !800, !232, !234, !79, !79, !79, !802, !804, !184, !79, !806, !807, !809, !811, !813, !813, !79, !79, !79, !814, !814, !816, !79, !814, !814, !814, !79, !79, !818, !818, !820, !822, !816, !816, !824, !298, !79, !79, !813, !813, !302, !826, !826, !828, !828, !830, !79, !79, !79, !831, !831, !833, !307, !307, !308, !310, !310, !813, !835, !835, !77, !109, !836, !839, !839, !841, !79, !831, !843, !741, !736, !120, !845, !845, !847, !847, !165, !167, !167, !162, !849, !182, !850, !852, !852, !79, !79, !79, !854, !856, !856, !738, !738, !120, !858, !858, !860, !860, !860, !79, !862, !120, !863, !863, !79, !79, !79, !79, !79, !865, !865, !867, !79, !79, !79, !266, !85, !85, !869, !869, !870, !120, !872, !872, !874, !876, !876, !79, !79, !79, !79, !877, !120, !879, !879, !881, !881, !165, !167, !167, !162, !883, !885, !885, !79, !79, !79, !79, !887, !856, !856, !889, !889, !891, !891, !120, !892, !892, !894, !894, !894, !79, !896, !896, !896, !79, !898, !120, !899, !899, !79, !79, !79, !79, !79, !79, !79, !75, !75, !77, !109, !75, !75, !77, !109, !298, !79, !79, !901, !901, !903, !149, !302, !905, !905, !131, !133, !133, !120, !907, !907, !307, !307, !308, !310, !310, !901, !79, !79, !79, !68, !68, !909, !909, !909, !909, !909, !79, !79, !802, !806, !911, !913, !915, !917, !917, !79, !918, !918, !79, !79, !920, !920, !922, !79, !920, !920, !920, !79, !79, !79, !629, !629, !631, !472, !924, !79, !79, !79, !926, !928, !79, !920, !920, !920, !929, !922, !922, !298, !79, !79, !918, !918, !79, !931, !931, !298, !149, !302, !932, !932, !131, !133, !133, !120, !934, !934, !307, !307, !308, !310, !310, !918, !936, !79, !79, !938, !940, !216, !217, !249, !36, !941, !941, !941, !941, !941, !79, !79, !942, !79, !120, !943, !943, !945, !947, !947, !79, !79, !79, !79, !948, !950, !950, !79, !79, !79, !951, !953, !955, !957, !957, !958, !958, !79, !79, !960, !960, !962, !79, !960, !960, !960, !79, !79, !79, !629, !629, !631, !472, !964, !79, !79, !79, !966, !968, !79, !960, !960, !960, !969, !962, !962, !298, !79, !79, !958, !958, !79, !298, !149, !302, !971, !971, !165, !167, !167, !120, !973, !973, !307, !307, !308, !310, !310, !958, !975, !79, !79, !79, !977, !105, !105, !979, !98, !101, !980, !32, !981, !981, !68, !68, !68, !983, !986, !986, !988, !990, !992, !79, !994, !184, !996, !996, !996, !79, !998, !1000, !1000, !298, !79, !79, !1001, !1001, !149, !79, !996, !998, !1000, !1000, !1003, !1005, !1005, !79, !998, !120, !1006, !1006, !996, !998, !120, !1008, !1008, !1010, !1010, !1012, !1014, !79, !79, !1016, !1018, !1020, !1022, !1022, !988, !988, !79, !79, !1023, !1023, !1025, !79, !1023, !1023, !1023, !79, !79, !629, !629, !631, !472, !1027, !79, !79, !79, !1029, !1031, !79, !1023, !1023, !1023, !1032, !1025, !1025, !298, !79, !79, !988, !988, !79, !302, !1034, !1034, !307, !307, !308, !310, !310, !988, !986, !994, !998, !1000, !1000, !79, !120, !1036, !1036, !1038, !1038, !1038, !79, !79, !79, !1040, !79, !79, !79, !79, !1042, !1044, !1044, !1046, !546, !546, !120, !1047, !1047, !153, !153, !1049, !153, !153, !1051, !79, !1053, !546, !546, !1055, !1057, !208, !208, !79, !79, !68, !68, !1059, !434, !434, !434, !438, !438, !438, !1062, !1062, !1064, !307, !307, !308, !310, !310, !291, !85, !85, !1066, !85, !85, !1068, !1070, !1070, !1068, !149, !144, !1072, !1072, !457, !457, !459, !1074, !1080, !283, !310, !310, !509, !509, !511, !1082, !184, !249, !249, !1084, !1084, !1086, !68, !68, !70, !70, !68, !68, !68, !68, !70, !70, !36, !36, !36, !36, !32, !32, !32, !32, !36, !36, !36, !36, !32, !32, !32, !32, !1088, !79, !79, !79, !266, !85, !85, !79, !79, !79, !79, !153, !153, !79, !279, !281, !281, !79, !283, !285, !285, !79, !319, !319, !321, !319, !319, !321, !291, !85, !85, !323, !79, !79, !79, !325, !85, !85, !79, !79, !79, !98, !85, !85, !101, !79, !79, !79, !103, !103, !105, !105, !298, !79, !79, !79, !327, !327, !327, !79, !149, !302, !329, !329, !120, !120, !160, !160, !162, !164, !164, !79, !79, !79, !79, !165, !167, !167, !79, !79, !120, !331, !331, !307, !307, !308, !310, !310, !333, !335, !335, !333, !186, !186, !188, !190, !190, !79, !79, !191, !193, !193, !120, !120, !174, !174, !188, !191, !193, !193, !79, !120, !168, !168, !144, !176, !176, !194, !79, !149, !144, !146, !146, !196, !196, !79, !79, !79, !79, !79, !79, !79, !79, !1090, !79, !79, !79, !266, !85, !85, !79, !79, !153, !153, !79, !1092, !283, !1094, !1094, !79, !1096, !1096, !1098, !1096, !1096, !1098, !291, !1100, !79, !79, !79, !1102, !85, !85, !298, !79, !79, !79, !1104, !1104, !1104, !335, !335, !333, !1106, !79, !79, !79, !266, !85, !85, !79, !79, !153, !153, !79, !1108, !283, !1110, !1110, !79, !1112, !1112, !1114, !1112, !1112, !1114, !291, !1116, !79, !79, !79, !1118, !85, !85, !298, !79, !79, !79, !1120, !1120, !1120, !335, !335, !333, !1122, !79, !79, !79, !266, !85, !85, !79, !79, !153, !153, !79, !1124, !283, !1126, !1126, !79, !1128, !1128, !1130, !1128, !1128, !1130, !291, !1132, !79, !79, !79, !1134, !85, !85, !298, !79, !79, !79, !1136, !1136, !1136, !335, !335, !333, !1138, !79, !287, !287, !289, !287, !287, !289, !294, !79, !79, !79, !296, !85, !85, !79, !216, !217, !141, !141, !298, !79, !79, !79, !300, !300, !300, !79, !149, !302, !303, !303, !120, !120, !122, !122, !126, !129, !129, !79, !79, !79, !79, !131, !133, !133, !79, !79, !120, !305, !305, !307, !307, !308, !310, !310, !311, !313, !313, !311, !202, !202, !203, !205, !205, !79, !79, !206, !208, !208, !120, !120, !142, !142, !203, !206, !208, !208, !120, !134, !134, !144, !151, !151, !209, !79, !211, !211, !79, !79, !79, !79, !1140, !1142, !1142, !1144, !1142, !1142, !1144, !1146, !79, !79, !79, !1148, !85, !85, !298, !79, !79, !79, !1150, !1150, !1150, !313, !313, !311, !1152, !1154, !1154, !1156, !1154, !1154, !1156, !1158, !79, !79, !79, !1160, !85, !85, !298, !79, !79, !79, !1162, !1162, !1162, !313, !313, !311, !1164, !1166, !1166, !1168, !1166, !1166, !1168, !1170, !79, !79, !79, !1172, !85, !85, !298, !79, !79, !79, !1173, !1173, !1173, !313, !313, !311, !1175, !79, !79, !79, !266, !79, !1177, !1177, !1179, !1179, !1179, !1181, !1183, !1183, !1177, !79, !149, !144, !652, !652, !153, !153, !79, !1185, !79, !79, !79, !266, !85, !85, !79, !79, !1187, !1187, !79, !1189, !1189, !1189, !1191, !1193, !1193, !1187, !79, !149, !144, !1195, !1195, !153, !153, !79, !1197, !79, !79, !79, !266, !85, !85, !79, !79, !1199, !1199, !79, !1201, !1201, !1201, !1203, !1205, !1205, !1199, !79, !149, !144, !1207, !1207, !153, !153, !79, !1209, !1211, !1213, !75, !75, !77, !79, !88, !79, !79, !79, !91, !91, !93, !93, !95, !79, !79, !79, !107, !79, !79, !79, !79, !109, !79, !75, !75, !77, !109, !79, !75, !75, !77, !109, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !111, !111, !111, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !315, !79, !79, !79, !266, !85, !85, !79, !79, !269, !269, !79, !271, !271, !271, !273, !275, !275, !269, !79, !149, !144, !277, !277, !153, !153, !79, !337, !111, !111, !111, !79, !111, !111, !111, !111, !111, !111, !113, !113, !113, !79, !111, !111, !111, !79, !111, !111, !111, !79, !111, !111, !111, !79, !113, !113, !113, !79, !113, !113, !113}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1215, !1222, !1231, !1236, !1241, !1246, !1251, !1256, !1261, !1266, !1271, !1276, !1281, !1286, !1291, !1296, !1301, !1307, !1312, !1317, !1322, !1327, !1332}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double [100]*", metadata !"double [100]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"ua", metadata !"ub"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"double [100]*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"j", metadata !"side", metadata !"ub"}
!17 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !18, metadata !6}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"i", metadata !"j", metadata !"corner", metadata !"ub"}
!19 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"radius", metadata !"source_active"}
!23 = metadata !{null, metadata !14, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double", metadata !"double [100]*"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"radius", metadata !"step", metadata !"amp", metadata !"uc"}
!26 = metadata !{void (double*)* @s_compute_acoustics, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"double*"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"result"}
!32 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !35, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!36 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !35, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!41 = metadata !{null, metadata !1, metadata !2, metadata !42, metadata !4, metadata !40, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!49 = metadata !{null, metadata !44, metadata !45, metadata !50, metadata !47, metadata !48, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !5, metadata !6}
!52 = metadata !{null, metadata !1, metadata !2, metadata !42, metadata !4, metadata !5, metadata !6}
!53 = metadata !{null, metadata !54, metadata !2, metadata !55, metadata !4, metadata !56, metadata !6}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!57 = metadata !{null, metadata !54, metadata !2, metadata !58, metadata !4, metadata !56, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!59 = metadata !{null, metadata !54, metadata !2, metadata !60, metadata !4, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!62 = metadata !{null, metadata !54, metadata !2, metadata !63, metadata !4, metadata !61, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !61, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!66 = metadata !{null, metadata !1, metadata !2, metadata !67, metadata !4, metadata !61, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!68 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !69, metadata !6}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!70 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !69, metadata !6}
!71 = metadata !{null, metadata !27, metadata !28, metadata !72, metadata !73, metadata !74, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!73 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!75 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !76, metadata !6}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!77 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !78, metadata !6}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!79 = metadata !{null, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !6}
!80 = metadata !{metadata !"kernel_arg_addr_space"}
!81 = metadata !{metadata !"kernel_arg_access_qual"}
!82 = metadata !{metadata !"kernel_arg_type"}
!83 = metadata !{metadata !"kernel_arg_type_qual"}
!84 = metadata !{metadata !"kernel_arg_name"}
!85 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !87, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !4, metadata !90, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!91 = metadata !{null, metadata !33, metadata !28, metadata !92, metadata !30, metadata !87, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!93 = metadata !{null, metadata !33, metadata !28, metadata !94, metadata !30, metadata !87, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!95 = metadata !{null, metadata !33, metadata !28, metadata !96, metadata !30, metadata !97, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !100, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!100 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!101 = metadata !{null, metadata !1, metadata !2, metadata !102, metadata !4, metadata !90, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!103 = metadata !{null, metadata !33, metadata !28, metadata !104, metadata !30, metadata !87, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!105 = metadata !{null, metadata !33, metadata !28, metadata !106, metadata !30, metadata !87, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!107 = metadata !{null, metadata !33, metadata !28, metadata !108, metadata !30, metadata !97, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!109 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !110, metadata !6}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!111 = metadata !{null, metadata !27, metadata !28, metadata !72, metadata !73, metadata !112, metadata !6}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!113 = metadata !{null, metadata !114, metadata !2, metadata !115, metadata !116, metadata !117, metadata !6}
!114 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!116 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!118 = metadata !{null, metadata !27, metadata !28, metadata !72, metadata !73, metadata !119, metadata !6}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!120 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !121, metadata !6}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!122 = metadata !{null, metadata !123, metadata !45, metadata !124, metadata !47, metadata !125, metadata !6}
!123 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!126 = metadata !{null, metadata !33, metadata !28, metadata !127, metadata !30, metadata !128, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!129 = metadata !{null, metadata !33, metadata !28, metadata !127, metadata !30, metadata !130, metadata !6}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!131 = metadata !{null, metadata !33, metadata !28, metadata !132, metadata !30, metadata !128, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!133 = metadata !{null, metadata !33, metadata !28, metadata !132, metadata !30, metadata !87, metadata !6}
!134 = metadata !{null, metadata !123, metadata !45, metadata !135, metadata !47, metadata !125, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!136 = metadata !{null, metadata !33, metadata !28, metadata !137, metadata !30, metadata !128, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!138 = metadata !{null, metadata !33, metadata !28, metadata !137, metadata !30, metadata !130, metadata !6}
!139 = metadata !{null, metadata !33, metadata !28, metadata !140, metadata !30, metadata !128, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!141 = metadata !{null, metadata !33, metadata !28, metadata !140, metadata !30, metadata !87, metadata !6}
!142 = metadata !{null, metadata !123, metadata !45, metadata !143, metadata !47, metadata !125, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!144 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !145, metadata !6}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!146 = metadata !{null, metadata !114, metadata !2, metadata !147, metadata !4, metadata !148, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!148 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!149 = metadata !{null, metadata !33, metadata !28, metadata !150, metadata !30, metadata !128, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!151 = metadata !{null, metadata !114, metadata !2, metadata !152, metadata !4, metadata !148, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!153 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !128, metadata !6}
!154 = metadata !{null, metadata !33, metadata !28, metadata !155, metadata !30, metadata !97, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!156 = metadata !{null, metadata !33, metadata !28, metadata !157, metadata !30, metadata !97, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!158 = metadata !{null, metadata !33, metadata !28, metadata !159, metadata !30, metadata !97, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!160 = metadata !{null, metadata !123, metadata !45, metadata !161, metadata !47, metadata !125, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!162 = metadata !{null, metadata !33, metadata !28, metadata !163, metadata !30, metadata !128, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!164 = metadata !{null, metadata !33, metadata !28, metadata !163, metadata !30, metadata !130, metadata !6}
!165 = metadata !{null, metadata !33, metadata !28, metadata !166, metadata !30, metadata !128, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!167 = metadata !{null, metadata !33, metadata !28, metadata !166, metadata !30, metadata !87, metadata !6}
!168 = metadata !{null, metadata !123, metadata !45, metadata !169, metadata !47, metadata !125, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!170 = metadata !{null, metadata !33, metadata !28, metadata !171, metadata !30, metadata !128, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!172 = metadata !{null, metadata !33, metadata !28, metadata !171, metadata !30, metadata !130, metadata !6}
!173 = metadata !{null, metadata !33, metadata !28, metadata !106, metadata !30, metadata !128, metadata !6}
!174 = metadata !{null, metadata !123, metadata !45, metadata !175, metadata !47, metadata !125, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!176 = metadata !{null, metadata !114, metadata !2, metadata !177, metadata !4, metadata !148, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!178 = metadata !{null, metadata !33, metadata !28, metadata !179, metadata !30, metadata !97, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!180 = metadata !{null, metadata !33, metadata !28, metadata !181, metadata !30, metadata !97, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!182 = metadata !{null, metadata !1, metadata !2, metadata !183, metadata !4, metadata !90, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!184 = metadata !{null, metadata !33, metadata !28, metadata !104, metadata !30, metadata !97, metadata !6}
!185 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !90, metadata !6}
!186 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !187, metadata !6}
!187 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!188 = metadata !{null, metadata !33, metadata !28, metadata !189, metadata !30, metadata !128, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!190 = metadata !{null, metadata !33, metadata !28, metadata !189, metadata !30, metadata !130, metadata !6}
!191 = metadata !{null, metadata !33, metadata !28, metadata !192, metadata !30, metadata !128, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!193 = metadata !{null, metadata !33, metadata !28, metadata !192, metadata !30, metadata !87, metadata !6}
!194 = metadata !{null, metadata !33, metadata !28, metadata !195, metadata !30, metadata !128, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!196 = metadata !{null, metadata !33, metadata !28, metadata !197, metadata !30, metadata !128, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!198 = metadata !{null, metadata !1, metadata !2, metadata !199, metadata !4, metadata !90, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!200 = metadata !{null, metadata !1, metadata !2, metadata !201, metadata !4, metadata !90, metadata !6}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!202 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !187, metadata !6}
!203 = metadata !{null, metadata !33, metadata !28, metadata !204, metadata !30, metadata !128, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!205 = metadata !{null, metadata !33, metadata !28, metadata !204, metadata !30, metadata !130, metadata !6}
!206 = metadata !{null, metadata !33, metadata !28, metadata !207, metadata !30, metadata !128, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!208 = metadata !{null, metadata !33, metadata !28, metadata !207, metadata !30, metadata !87, metadata !6}
!209 = metadata !{null, metadata !33, metadata !28, metadata !210, metadata !30, metadata !128, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!211 = metadata !{null, metadata !33, metadata !28, metadata !212, metadata !30, metadata !128, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!213 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !214, metadata !6}
!214 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!215 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !214, metadata !6}
!216 = metadata !{null, metadata !1, metadata !2, metadata !201, metadata !4, metadata !100, metadata !6}
!217 = metadata !{null, metadata !1, metadata !2, metadata !218, metadata !4, metadata !90, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!219 = metadata !{null, metadata !1, metadata !2, metadata !220, metadata !4, metadata !100, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!221 = metadata !{null, metadata !33, metadata !28, metadata !212, metadata !30, metadata !87, metadata !6}
!222 = metadata !{null, metadata !1, metadata !2, metadata !223, metadata !4, metadata !90, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!224 = metadata !{null, metadata !33, metadata !28, metadata !225, metadata !30, metadata !87, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!226 = metadata !{null, metadata !33, metadata !28, metadata !227, metadata !30, metadata !228, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!228 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!229 = metadata !{null, metadata !33, metadata !28, metadata !230, metadata !30, metadata !231, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!231 = metadata !{metadata !"kernel_arg_name", metadata !""}
!232 = metadata !{null, metadata !1, metadata !2, metadata !233, metadata !4, metadata !100, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!234 = metadata !{null, metadata !1, metadata !2, metadata !235, metadata !4, metadata !90, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!236 = metadata !{null, metadata !33, metadata !28, metadata !108, metadata !30, metadata !87, metadata !6}
!237 = metadata !{null, metadata !33, metadata !28, metadata !238, metadata !30, metadata !87, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!239 = metadata !{null, metadata !1, metadata !2, metadata !240, metadata !4, metadata !100, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!241 = metadata !{null, metadata !1, metadata !2, metadata !242, metadata !4, metadata !90, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!243 = metadata !{null, metadata !1, metadata !2, metadata !244, metadata !4, metadata !90, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!245 = metadata !{null, metadata !33, metadata !28, metadata !246, metadata !30, metadata !87, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!247 = metadata !{null, metadata !1, metadata !2, metadata !248, metadata !4, metadata !90, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!249 = metadata !{null, metadata !33, metadata !28, metadata !207, metadata !30, metadata !97, metadata !6}
!250 = metadata !{null, metadata !27, metadata !28, metadata !251, metadata !30, metadata !252, metadata !6}
!251 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!252 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!253 = metadata !{null, metadata !1, metadata !2, metadata !254, metadata !4, metadata !100, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ulong"}
!255 = metadata !{null, metadata !33, metadata !28, metadata !197, metadata !30, metadata !87, metadata !6}
!256 = metadata !{null, metadata !1, metadata !2, metadata !257, metadata !4, metadata !90, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!258 = metadata !{null, metadata !1, metadata !2, metadata !259, metadata !4, metadata !90, metadata !6}
!259 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!260 = metadata !{null, metadata !27, metadata !28, metadata !261, metadata !30, metadata !252, metadata !6}
!261 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!262 = metadata !{null, metadata !263, metadata !45, metadata !264, metadata !47, metadata !265, metadata !6}
!263 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!265 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!266 = metadata !{null, metadata !33, metadata !28, metadata !267, metadata !30, metadata !268, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!268 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!269 = metadata !{null, metadata !33, metadata !28, metadata !270, metadata !30, metadata !87, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!271 = metadata !{null, metadata !33, metadata !28, metadata !272, metadata !30, metadata !87, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!273 = metadata !{null, metadata !33, metadata !28, metadata !274, metadata !30, metadata !87, metadata !6}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!275 = metadata !{null, metadata !33, metadata !28, metadata !276, metadata !30, metadata !87, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!277 = metadata !{null, metadata !114, metadata !2, metadata !278, metadata !4, metadata !148, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!279 = metadata !{null, metadata !1, metadata !2, metadata !280, metadata !4, metadata !100, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!281 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !282, metadata !6}
!282 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!283 = metadata !{null, metadata !33, metadata !28, metadata !284, metadata !30, metadata !97, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!285 = metadata !{null, metadata !33, metadata !28, metadata !286, metadata !30, metadata !87, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!287 = metadata !{null, metadata !33, metadata !28, metadata !288, metadata !30, metadata !87, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!289 = metadata !{null, metadata !33, metadata !28, metadata !290, metadata !30, metadata !87, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!291 = metadata !{null, metadata !20, metadata !9, metadata !292, metadata !11, metadata !293, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!293 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!294 = metadata !{null, metadata !1, metadata !2, metadata !295, metadata !4, metadata !90, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!296 = metadata !{null, metadata !33, metadata !28, metadata !297, metadata !30, metadata !97, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!298 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !299, metadata !6}
!299 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!300 = metadata !{null, metadata !33, metadata !28, metadata !301, metadata !30, metadata !87, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!302 = metadata !{null, metadata !33, metadata !28, metadata !212, metadata !30, metadata !145, metadata !6}
!303 = metadata !{null, metadata !114, metadata !2, metadata !304, metadata !4, metadata !148, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!305 = metadata !{null, metadata !123, metadata !45, metadata !306, metadata !47, metadata !125, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!307 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !76, metadata !6}
!308 = metadata !{null, metadata !33, metadata !28, metadata !86, metadata !30, metadata !309, metadata !6}
!309 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!310 = metadata !{null, metadata !33, metadata !28, metadata !284, metadata !30, metadata !87, metadata !6}
!311 = metadata !{null, metadata !33, metadata !28, metadata !312, metadata !30, metadata !87, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!313 = metadata !{null, metadata !33, metadata !28, metadata !314, metadata !30, metadata !87, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!315 = metadata !{null, metadata !263, metadata !45, metadata !316, metadata !47, metadata !265, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!317 = metadata !{null, metadata !263, metadata !45, metadata !318, metadata !47, metadata !265, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!319 = metadata !{null, metadata !33, metadata !28, metadata !320, metadata !30, metadata !87, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!321 = metadata !{null, metadata !33, metadata !28, metadata !322, metadata !30, metadata !87, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!323 = metadata !{null, metadata !1, metadata !2, metadata !324, metadata !4, metadata !90, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!325 = metadata !{null, metadata !33, metadata !28, metadata !326, metadata !30, metadata !97, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!327 = metadata !{null, metadata !33, metadata !28, metadata !328, metadata !30, metadata !87, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!329 = metadata !{null, metadata !114, metadata !2, metadata !330, metadata !4, metadata !148, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!331 = metadata !{null, metadata !123, metadata !45, metadata !332, metadata !47, metadata !125, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!333 = metadata !{null, metadata !33, metadata !28, metadata !334, metadata !30, metadata !87, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!335 = metadata !{null, metadata !33, metadata !28, metadata !336, metadata !30, metadata !87, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!337 = metadata !{null, metadata !263, metadata !45, metadata !338, metadata !47, metadata !265, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!339 = metadata !{null, metadata !1, metadata !2, metadata !340, metadata !4, metadata !100, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ulong"}
!341 = metadata !{null, metadata !1, metadata !2, metadata !342, metadata !4, metadata !90, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!343 = metadata !{null, metadata !33, metadata !28, metadata !344, metadata !30, metadata !87, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!345 = metadata !{null, metadata !33, metadata !28, metadata !346, metadata !30, metadata !228, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!347 = metadata !{null, metadata !33, metadata !28, metadata !348, metadata !30, metadata !231, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!349 = metadata !{null, metadata !1, metadata !2, metadata !350, metadata !4, metadata !90, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!351 = metadata !{null, metadata !1, metadata !2, metadata !352, metadata !4, metadata !353, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!353 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!354 = metadata !{null, metadata !1, metadata !2, metadata !355, metadata !4, metadata !90, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!356 = metadata !{null, metadata !1, metadata !2, metadata !357, metadata !4, metadata !353, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!358 = metadata !{null, metadata !1, metadata !2, metadata !359, metadata !4, metadata !90, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!360 = metadata !{null, metadata !44, metadata !45, metadata !50, metadata !47, metadata !361, metadata !6}
!361 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!362 = metadata !{null, metadata !33, metadata !28, metadata !94, metadata !30, metadata !128, metadata !6}
!363 = metadata !{null, metadata !114, metadata !2, metadata !364, metadata !4, metadata !148, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!365 = metadata !{null, metadata !33, metadata !28, metadata !366, metadata !30, metadata !87, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!367 = metadata !{null, metadata !1, metadata !2, metadata !368, metadata !4, metadata !90, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!369 = metadata !{null, metadata !33, metadata !28, metadata !370, metadata !30, metadata !87, metadata !6}
!370 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!371 = metadata !{null, metadata !33, metadata !28, metadata !372, metadata !30, metadata !97, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!373 = metadata !{null, metadata !33, metadata !28, metadata !374, metadata !30, metadata !97, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!375 = metadata !{null, metadata !33, metadata !28, metadata !374, metadata !30, metadata !87, metadata !6}
!376 = metadata !{null, metadata !33, metadata !28, metadata !377, metadata !30, metadata !87, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!378 = metadata !{null, metadata !33, metadata !28, metadata !379, metadata !30, metadata !87, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!380 = metadata !{null, metadata !33, metadata !28, metadata !381, metadata !30, metadata !97, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!382 = metadata !{null, metadata !33, metadata !28, metadata !383, metadata !30, metadata !87, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !33, metadata !28, metadata !385, metadata !30, metadata !97, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!386 = metadata !{null, metadata !33, metadata !28, metadata !387, metadata !30, metadata !87, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!388 = metadata !{null, metadata !33, metadata !28, metadata !389, metadata !30, metadata !87, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!390 = metadata !{null, metadata !33, metadata !28, metadata !391, metadata !30, metadata !87, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!392 = metadata !{null, metadata !263, metadata !45, metadata !393, metadata !47, metadata !394, metadata !6}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!394 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!395 = metadata !{null, metadata !1, metadata !2, metadata !396, metadata !4, metadata !100, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!397 = metadata !{null, metadata !33, metadata !28, metadata !398, metadata !30, metadata !87, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !33, metadata !28, metadata !400, metadata !30, metadata !87, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !33, metadata !28, metadata !402, metadata !30, metadata !403, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!403 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!404 = metadata !{null, metadata !123, metadata !45, metadata !405, metadata !47, metadata !125, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!406 = metadata !{null, metadata !33, metadata !28, metadata !407, metadata !30, metadata !87, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!408 = metadata !{null, metadata !33, metadata !28, metadata !407, metadata !30, metadata !128, metadata !6}
!409 = metadata !{null, metadata !123, metadata !45, metadata !410, metadata !47, metadata !125, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!411 = metadata !{null, metadata !33, metadata !28, metadata !412, metadata !30, metadata !128, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!413 = metadata !{null, metadata !33, metadata !28, metadata !414, metadata !30, metadata !128, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!415 = metadata !{null, metadata !33, metadata !28, metadata !416, metadata !30, metadata !87, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!417 = metadata !{null, metadata !123, metadata !45, metadata !418, metadata !47, metadata !125, metadata !6}
!418 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!419 = metadata !{null, metadata !33, metadata !28, metadata !420, metadata !30, metadata !128, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!421 = metadata !{null, metadata !33, metadata !28, metadata !414, metadata !30, metadata !87, metadata !6}
!422 = metadata !{null, metadata !33, metadata !28, metadata !400, metadata !30, metadata !97, metadata !6}
!423 = metadata !{null, metadata !33, metadata !28, metadata !424, metadata !30, metadata !87, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!425 = metadata !{null, metadata !1, metadata !2, metadata !426, metadata !4, metadata !353, metadata !6}
!426 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!427 = metadata !{null, metadata !33, metadata !28, metadata !428, metadata !30, metadata !97, metadata !6}
!428 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!429 = metadata !{null, metadata !33, metadata !28, metadata !428, metadata !30, metadata !87, metadata !6}
!430 = metadata !{null, metadata !33, metadata !28, metadata !431, metadata !30, metadata !87, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!432 = metadata !{null, metadata !33, metadata !28, metadata !433, metadata !30, metadata !97, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!434 = metadata !{null, metadata !33, metadata !28, metadata !435, metadata !30, metadata !87, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!436 = metadata !{null, metadata !33, metadata !28, metadata !437, metadata !30, metadata !97, metadata !6}
!437 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!438 = metadata !{null, metadata !33, metadata !28, metadata !439, metadata !30, metadata !87, metadata !6}
!439 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!440 = metadata !{null, metadata !33, metadata !28, metadata !441, metadata !30, metadata !87, metadata !6}
!441 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!442 = metadata !{null, metadata !33, metadata !28, metadata !443, metadata !30, metadata !87, metadata !6}
!443 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!444 = metadata !{null, metadata !33, metadata !28, metadata !445, metadata !30, metadata !97, metadata !6}
!445 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!446 = metadata !{null, metadata !33, metadata !28, metadata !447, metadata !30, metadata !87, metadata !6}
!447 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!448 = metadata !{null, metadata !33, metadata !28, metadata !449, metadata !30, metadata !87, metadata !6}
!449 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!450 = metadata !{null, metadata !33, metadata !28, metadata !451, metadata !30, metadata !87, metadata !6}
!451 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!452 = metadata !{null, metadata !33, metadata !28, metadata !453, metadata !30, metadata !87, metadata !6}
!453 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!454 = metadata !{null, metadata !33, metadata !28, metadata !372, metadata !30, metadata !87, metadata !6}
!455 = metadata !{null, metadata !123, metadata !45, metadata !456, metadata !47, metadata !125, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!457 = metadata !{null, metadata !33, metadata !28, metadata !458, metadata !30, metadata !87, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!459 = metadata !{null, metadata !33, metadata !28, metadata !458, metadata !30, metadata !128, metadata !6}
!460 = metadata !{null, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !6}
!461 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!462 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!463 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!464 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!465 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!466 = metadata !{null, metadata !33, metadata !28, metadata !370, metadata !30, metadata !97, metadata !6}
!467 = metadata !{null, metadata !33, metadata !28, metadata !468, metadata !30, metadata !97, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!469 = metadata !{null, metadata !33, metadata !28, metadata !212, metadata !30, metadata !299, metadata !6}
!470 = metadata !{null, metadata !33, metadata !28, metadata !471, metadata !30, metadata !87, metadata !6}
!471 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!472 = metadata !{null, metadata !263, metadata !45, metadata !473, metadata !47, metadata !474, metadata !6}
!473 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!474 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!475 = metadata !{null, metadata !33, metadata !28, metadata !476, metadata !30, metadata !87, metadata !6}
!476 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!477 = metadata !{null, metadata !33, metadata !28, metadata !478, metadata !30, metadata !87, metadata !6}
!478 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!479 = metadata !{null, metadata !33, metadata !28, metadata !480, metadata !30, metadata !35, metadata !6}
!480 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!481 = metadata !{null, metadata !123, metadata !45, metadata !482, metadata !47, metadata !125, metadata !6}
!482 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!483 = metadata !{null, metadata !33, metadata !28, metadata !484, metadata !30, metadata !128, metadata !6}
!484 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!485 = metadata !{null, metadata !33, metadata !28, metadata !484, metadata !30, metadata !130, metadata !6}
!486 = metadata !{null, metadata !33, metadata !28, metadata !487, metadata !30, metadata !128, metadata !6}
!487 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!488 = metadata !{null, metadata !33, metadata !28, metadata !487, metadata !30, metadata !87, metadata !6}
!489 = metadata !{null, metadata !114, metadata !2, metadata !490, metadata !4, metadata !148, metadata !6}
!490 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!491 = metadata !{null, metadata !123, metadata !45, metadata !492, metadata !47, metadata !125, metadata !6}
!492 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!493 = metadata !{null, metadata !33, metadata !28, metadata !494, metadata !30, metadata !128, metadata !6}
!494 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!495 = metadata !{null, metadata !33, metadata !28, metadata !496, metadata !30, metadata !128, metadata !6}
!496 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!497 = metadata !{null, metadata !33, metadata !28, metadata !496, metadata !30, metadata !87, metadata !6}
!498 = metadata !{null, metadata !1, metadata !2, metadata !499, metadata !4, metadata !353, metadata !6}
!499 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!500 = metadata !{null, metadata !33, metadata !28, metadata !471, metadata !30, metadata !97, metadata !6}
!501 = metadata !{null, metadata !33, metadata !28, metadata !502, metadata !30, metadata !87, metadata !6}
!502 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!503 = metadata !{null, metadata !33, metadata !28, metadata !504, metadata !30, metadata !87, metadata !6}
!504 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!505 = metadata !{null, metadata !114, metadata !2, metadata !506, metadata !4, metadata !148, metadata !6}
!506 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!507 = metadata !{null, metadata !1, metadata !2, metadata !508, metadata !4, metadata !90, metadata !6}
!508 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!509 = metadata !{null, metadata !33, metadata !28, metadata !510, metadata !30, metadata !87, metadata !6}
!510 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!511 = metadata !{null, metadata !33, metadata !28, metadata !512, metadata !30, metadata !87, metadata !6}
!512 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!513 = metadata !{null, metadata !33, metadata !28, metadata !366, metadata !30, metadata !97, metadata !6}
!514 = metadata !{null, metadata !123, metadata !45, metadata !515, metadata !47, metadata !125, metadata !6}
!515 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!516 = metadata !{null, metadata !33, metadata !28, metadata !517, metadata !30, metadata !128, metadata !6}
!517 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!518 = metadata !{null, metadata !33, metadata !28, metadata !517, metadata !30, metadata !130, metadata !6}
!519 = metadata !{null, metadata !33, metadata !28, metadata !520, metadata !30, metadata !128, metadata !6}
!520 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!521 = metadata !{null, metadata !123, metadata !45, metadata !522, metadata !47, metadata !125, metadata !6}
!522 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!523 = metadata !{null, metadata !263, metadata !45, metadata !524, metadata !47, metadata !525, metadata !6}
!524 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!525 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!526 = metadata !{null, metadata !33, metadata !28, metadata !527, metadata !30, metadata !128, metadata !6}
!527 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!528 = metadata !{null, metadata !33, metadata !28, metadata !527, metadata !30, metadata !87, metadata !6}
!529 = metadata !{null, metadata !123, metadata !45, metadata !530, metadata !47, metadata !125, metadata !6}
!530 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!531 = metadata !{null, metadata !33, metadata !28, metadata !532, metadata !30, metadata !128, metadata !6}
!532 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!533 = metadata !{null, metadata !33, metadata !28, metadata !532, metadata !30, metadata !130, metadata !6}
!534 = metadata !{null, metadata !33, metadata !28, metadata !527, metadata !30, metadata !97, metadata !6}
!535 = metadata !{null, metadata !1, metadata !2, metadata !536, metadata !4, metadata !90, metadata !6}
!536 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!537 = metadata !{null, metadata !123, metadata !45, metadata !538, metadata !47, metadata !125, metadata !6}
!538 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!539 = metadata !{null, metadata !1, metadata !2, metadata !540, metadata !4, metadata !541, metadata !6}
!540 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!541 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!542 = metadata !{null, metadata !33, metadata !28, metadata !543, metadata !30, metadata !130, metadata !6}
!543 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!544 = metadata !{null, metadata !1, metadata !2, metadata !545, metadata !4, metadata !90, metadata !6}
!545 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!546 = metadata !{null, metadata !33, metadata !28, metadata !547, metadata !30, metadata !87, metadata !6}
!547 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!548 = metadata !{null, metadata !33, metadata !28, metadata !549, metadata !30, metadata !87, metadata !6}
!549 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!550 = metadata !{null, metadata !33, metadata !28, metadata !520, metadata !30, metadata !87, metadata !6}
!551 = metadata !{null, metadata !33, metadata !28, metadata !552, metadata !30, metadata !97, metadata !6}
!552 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!553 = metadata !{null, metadata !1, metadata !2, metadata !554, metadata !4, metadata !555, metadata !6}
!554 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!555 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!556 = metadata !{null, metadata !123, metadata !45, metadata !557, metadata !47, metadata !125, metadata !6}
!557 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!558 = metadata !{null, metadata !123, metadata !45, metadata !559, metadata !47, metadata !125, metadata !6}
!559 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!560 = metadata !{null, metadata !33, metadata !28, metadata !561, metadata !30, metadata !130, metadata !6}
!561 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!562 = metadata !{null, metadata !33, metadata !28, metadata !563, metadata !30, metadata !97, metadata !6}
!563 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!564 = metadata !{null, metadata !33, metadata !28, metadata !565, metadata !30, metadata !130, metadata !6}
!565 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!566 = metadata !{null, metadata !1, metadata !2, metadata !567, metadata !4, metadata !90, metadata !6}
!567 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!568 = metadata !{null, metadata !33, metadata !28, metadata !569, metadata !30, metadata !97, metadata !6}
!569 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!570 = metadata !{null, metadata !114, metadata !2, metadata !571, metadata !4, metadata !148, metadata !6}
!571 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!572 = metadata !{null, metadata !123, metadata !45, metadata !573, metadata !47, metadata !125, metadata !6}
!573 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!574 = metadata !{null, metadata !33, metadata !28, metadata !575, metadata !30, metadata !97, metadata !6}
!575 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!576 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !577, metadata !6}
!577 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!578 = metadata !{null, metadata !263, metadata !45, metadata !579, metadata !47, metadata !577, metadata !6}
!579 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!580 = metadata !{null, metadata !33, metadata !28, metadata !581, metadata !30, metadata !87, metadata !6}
!581 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!582 = metadata !{null, metadata !33, metadata !28, metadata !583, metadata !30, metadata !584, metadata !6}
!583 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!584 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!585 = metadata !{null, metadata !1, metadata !2, metadata !586, metadata !4, metadata !90, metadata !6}
!586 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!587 = metadata !{null, metadata !33, metadata !28, metadata !588, metadata !30, metadata !128, metadata !6}
!588 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!589 = metadata !{null, metadata !33, metadata !28, metadata !590, metadata !30, metadata !128, metadata !6}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!591 = metadata !{null, metadata !33, metadata !28, metadata !590, metadata !30, metadata !87, metadata !6}
!592 = metadata !{null, metadata !33, metadata !28, metadata !593, metadata !30, metadata !87, metadata !6}
!593 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!594 = metadata !{null, metadata !33, metadata !28, metadata !595, metadata !30, metadata !87, metadata !6}
!595 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!596 = metadata !{null, metadata !123, metadata !45, metadata !597, metadata !47, metadata !125, metadata !6}
!597 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!598 = metadata !{null, metadata !33, metadata !28, metadata !599, metadata !30, metadata !128, metadata !6}
!599 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!600 = metadata !{null, metadata !33, metadata !28, metadata !599, metadata !30, metadata !130, metadata !6}
!601 = metadata !{null, metadata !123, metadata !45, metadata !602, metadata !47, metadata !125, metadata !6}
!602 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!603 = metadata !{null, metadata !1, metadata !2, metadata !604, metadata !4, metadata !90, metadata !6}
!604 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!605 = metadata !{null, metadata !33, metadata !28, metadata !606, metadata !30, metadata !87, metadata !6}
!606 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!607 = metadata !{null, metadata !33, metadata !28, metadata !608, metadata !30, metadata !87, metadata !6}
!608 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!609 = metadata !{null, metadata !1, metadata !2, metadata !610, metadata !4, metadata !90, metadata !6}
!610 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!611 = metadata !{null, metadata !33, metadata !28, metadata !612, metadata !30, metadata !87, metadata !6}
!612 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!613 = metadata !{null, metadata !33, metadata !28, metadata !612, metadata !30, metadata !128, metadata !6}
!614 = metadata !{null, metadata !263, metadata !45, metadata !615, metadata !47, metadata !616, metadata !6}
!615 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!616 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!617 = metadata !{null, metadata !263, metadata !45, metadata !618, metadata !47, metadata !619, metadata !6}
!618 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!619 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!620 = metadata !{null, metadata !33, metadata !28, metadata !621, metadata !30, metadata !97, metadata !6}
!621 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!622 = metadata !{null, metadata !33, metadata !28, metadata !621, metadata !30, metadata !87, metadata !6}
!623 = metadata !{null, metadata !33, metadata !28, metadata !624, metadata !30, metadata !87, metadata !6}
!624 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!625 = metadata !{null, metadata !33, metadata !28, metadata !626, metadata !30, metadata !87, metadata !6}
!626 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!627 = metadata !{null, metadata !33, metadata !28, metadata !628, metadata !30, metadata !87, metadata !6}
!628 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!629 = metadata !{null, metadata !33, metadata !28, metadata !630, metadata !30, metadata !87, metadata !6}
!630 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!631 = metadata !{null, metadata !33, metadata !28, metadata !632, metadata !30, metadata !87, metadata !6}
!632 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!633 = metadata !{null, metadata !33, metadata !28, metadata !634, metadata !30, metadata !87, metadata !6}
!634 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!635 = metadata !{null, metadata !263, metadata !45, metadata !636, metadata !47, metadata !619, metadata !6}
!636 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!637 = metadata !{null, metadata !33, metadata !28, metadata !624, metadata !30, metadata !97, metadata !6}
!638 = metadata !{null, metadata !263, metadata !45, metadata !639, metadata !47, metadata !619, metadata !6}
!639 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!640 = metadata !{null, metadata !114, metadata !2, metadata !641, metadata !4, metadata !148, metadata !6}
!641 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!642 = metadata !{null, metadata !33, metadata !28, metadata !643, metadata !30, metadata !87, metadata !6}
!643 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!644 = metadata !{null, metadata !33, metadata !28, metadata !643, metadata !30, metadata !128, metadata !6}
!645 = metadata !{null, metadata !33, metadata !28, metadata !606, metadata !30, metadata !128, metadata !6}
!646 = metadata !{null, metadata !33, metadata !28, metadata !647, metadata !30, metadata !87, metadata !6}
!647 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!648 = metadata !{null, metadata !1, metadata !2, metadata !649, metadata !4, metadata !90, metadata !6}
!649 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!650 = metadata !{null, metadata !1, metadata !2, metadata !651, metadata !4, metadata !90, metadata !6}
!651 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!652 = metadata !{null, metadata !114, metadata !2, metadata !653, metadata !4, metadata !148, metadata !6}
!653 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!654 = metadata !{null, metadata !33, metadata !28, metadata !655, metadata !30, metadata !128, metadata !6}
!655 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!656 = metadata !{null, metadata !33, metadata !28, metadata !655, metadata !30, metadata !87, metadata !6}
!657 = metadata !{null, metadata !123, metadata !45, metadata !658, metadata !47, metadata !125, metadata !6}
!658 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!659 = metadata !{null, metadata !33, metadata !28, metadata !581, metadata !30, metadata !97, metadata !6}
!660 = metadata !{null, metadata !263, metadata !45, metadata !661, metadata !47, metadata !662, metadata !6}
!661 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!662 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!663 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !584, metadata !6}
!664 = metadata !{null, metadata !1, metadata !2, metadata !665, metadata !4, metadata !90, metadata !6}
!665 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!666 = metadata !{null, metadata !123, metadata !45, metadata !667, metadata !47, metadata !125, metadata !6}
!667 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!668 = metadata !{null, metadata !33, metadata !28, metadata !669, metadata !30, metadata !130, metadata !6}
!669 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!670 = metadata !{null, metadata !1, metadata !2, metadata !671, metadata !4, metadata !90, metadata !6}
!671 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!672 = metadata !{null, metadata !33, metadata !28, metadata !673, metadata !30, metadata !87, metadata !6}
!673 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!674 = metadata !{null, metadata !123, metadata !45, metadata !675, metadata !47, metadata !125, metadata !6}
!675 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!676 = metadata !{null, metadata !33, metadata !28, metadata !677, metadata !30, metadata !130, metadata !6}
!677 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!678 = metadata !{null, metadata !263, metadata !45, metadata !679, metadata !47, metadata !525, metadata !6}
!679 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!680 = metadata !{null, metadata !33, metadata !28, metadata !681, metadata !30, metadata !87, metadata !6}
!681 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!682 = metadata !{null, metadata !33, metadata !28, metadata !683, metadata !30, metadata !97, metadata !6}
!683 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!684 = metadata !{null, metadata !263, metadata !45, metadata !685, metadata !47, metadata !525, metadata !6}
!685 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!686 = metadata !{null, metadata !123, metadata !45, metadata !687, metadata !47, metadata !125, metadata !6}
!687 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!688 = metadata !{null, metadata !33, metadata !28, metadata !689, metadata !30, metadata !128, metadata !6}
!689 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!690 = metadata !{null, metadata !33, metadata !28, metadata !689, metadata !30, metadata !130, metadata !6}
!691 = metadata !{null, metadata !33, metadata !28, metadata !692, metadata !30, metadata !128, metadata !6}
!692 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!693 = metadata !{null, metadata !33, metadata !28, metadata !692, metadata !30, metadata !87, metadata !6}
!694 = metadata !{null, metadata !123, metadata !45, metadata !695, metadata !47, metadata !125, metadata !6}
!695 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!696 = metadata !{null, metadata !33, metadata !28, metadata !697, metadata !30, metadata !97, metadata !6}
!697 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!698 = metadata !{null, metadata !1, metadata !2, metadata !699, metadata !4, metadata !90, metadata !6}
!699 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!700 = metadata !{null, metadata !33, metadata !28, metadata !701, metadata !30, metadata !87, metadata !6}
!701 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!702 = metadata !{null, metadata !33, metadata !28, metadata !703, metadata !30, metadata !97, metadata !6}
!703 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!704 = metadata !{null, metadata !123, metadata !45, metadata !705, metadata !47, metadata !125, metadata !6}
!705 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!706 = metadata !{null, metadata !1, metadata !2, metadata !707, metadata !4, metadata !708, metadata !6}
!707 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!708 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!709 = metadata !{null, metadata !33, metadata !28, metadata !710, metadata !30, metadata !130, metadata !6}
!710 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!711 = metadata !{null, metadata !1, metadata !2, metadata !712, metadata !4, metadata !90, metadata !6}
!712 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!713 = metadata !{null, metadata !33, metadata !28, metadata !714, metadata !30, metadata !87, metadata !6}
!714 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!715 = metadata !{null, metadata !33, metadata !28, metadata !716, metadata !30, metadata !87, metadata !6}
!716 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!717 = metadata !{null, metadata !33, metadata !28, metadata !701, metadata !30, metadata !97, metadata !6}
!718 = metadata !{null, metadata !33, metadata !28, metadata !719, metadata !30, metadata !87, metadata !6}
!719 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!720 = metadata !{null, metadata !123, metadata !45, metadata !721, metadata !47, metadata !125, metadata !6}
!721 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!722 = metadata !{null, metadata !33, metadata !28, metadata !723, metadata !30, metadata !130, metadata !6}
!723 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!724 = metadata !{null, metadata !123, metadata !45, metadata !725, metadata !47, metadata !125, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!726 = metadata !{null, metadata !33, metadata !28, metadata !727, metadata !30, metadata !130, metadata !6}
!727 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!728 = metadata !{null, metadata !1, metadata !2, metadata !729, metadata !4, metadata !90, metadata !6}
!729 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!730 = metadata !{null, metadata !33, metadata !28, metadata !731, metadata !30, metadata !87, metadata !6}
!731 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!732 = metadata !{null, metadata !33, metadata !28, metadata !733, metadata !30, metadata !97, metadata !6}
!733 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!734 = metadata !{null, metadata !263, metadata !45, metadata !735, metadata !47, metadata !525, metadata !6}
!735 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!736 = metadata !{null, metadata !33, metadata !28, metadata !737, metadata !30, metadata !128, metadata !6}
!737 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!738 = metadata !{null, metadata !33, metadata !28, metadata !737, metadata !30, metadata !87, metadata !6}
!739 = metadata !{null, metadata !123, metadata !45, metadata !740, metadata !47, metadata !125, metadata !6}
!740 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!741 = metadata !{null, metadata !33, metadata !28, metadata !742, metadata !30, metadata !128, metadata !6}
!742 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!743 = metadata !{null, metadata !33, metadata !28, metadata !742, metadata !30, metadata !130, metadata !6}
!744 = metadata !{null, metadata !33, metadata !28, metadata !737, metadata !30, metadata !97, metadata !6}
!745 = metadata !{null, metadata !1, metadata !2, metadata !746, metadata !4, metadata !90, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!747 = metadata !{null, metadata !123, metadata !45, metadata !748, metadata !47, metadata !125, metadata !6}
!748 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!749 = metadata !{null, metadata !1, metadata !2, metadata !750, metadata !4, metadata !541, metadata !6}
!750 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!751 = metadata !{null, metadata !33, metadata !28, metadata !752, metadata !30, metadata !130, metadata !6}
!752 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!753 = metadata !{null, metadata !1, metadata !2, metadata !754, metadata !4, metadata !90, metadata !6}
!754 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!755 = metadata !{null, metadata !33, metadata !28, metadata !756, metadata !30, metadata !87, metadata !6}
!756 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!757 = metadata !{null, metadata !33, metadata !28, metadata !758, metadata !30, metadata !87, metadata !6}
!758 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!759 = metadata !{null, metadata !33, metadata !28, metadata !760, metadata !30, metadata !97, metadata !6}
!760 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!761 = metadata !{null, metadata !1, metadata !2, metadata !762, metadata !4, metadata !555, metadata !6}
!762 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!763 = metadata !{null, metadata !1, metadata !2, metadata !764, metadata !4, metadata !90, metadata !6}
!764 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!765 = metadata !{null, metadata !123, metadata !45, metadata !766, metadata !47, metadata !125, metadata !6}
!766 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!767 = metadata !{null, metadata !33, metadata !28, metadata !768, metadata !30, metadata !130, metadata !6}
!768 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!769 = metadata !{null, metadata !33, metadata !28, metadata !770, metadata !30, metadata !97, metadata !6}
!770 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!771 = metadata !{null, metadata !33, metadata !28, metadata !772, metadata !30, metadata !130, metadata !6}
!772 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!773 = metadata !{null, metadata !123, metadata !45, metadata !774, metadata !47, metadata !125, metadata !6}
!774 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!775 = metadata !{null, metadata !33, metadata !28, metadata !776, metadata !30, metadata !97, metadata !6}
!776 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!777 = metadata !{null, metadata !1, metadata !2, metadata !778, metadata !4, metadata !90, metadata !6}
!778 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!779 = metadata !{null, metadata !1, metadata !2, metadata !780, metadata !4, metadata !90, metadata !6}
!780 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!781 = metadata !{null, metadata !33, metadata !28, metadata !782, metadata !30, metadata !97, metadata !6}
!782 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!783 = metadata !{null, metadata !33, metadata !28, metadata !784, metadata !30, metadata !130, metadata !6}
!784 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!785 = metadata !{null, metadata !33, metadata !28, metadata !786, metadata !30, metadata !97, metadata !6}
!786 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!787 = metadata !{null, metadata !123, metadata !45, metadata !788, metadata !47, metadata !125, metadata !6}
!788 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!789 = metadata !{null, metadata !33, metadata !28, metadata !719, metadata !30, metadata !97, metadata !6}
!790 = metadata !{null, metadata !263, metadata !45, metadata !791, metadata !47, metadata !577, metadata !6}
!791 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!792 = metadata !{null, metadata !33, metadata !28, metadata !793, metadata !30, metadata !794, metadata !6}
!793 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!794 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!795 = metadata !{null, metadata !1, metadata !2, metadata !796, metadata !4, metadata !90, metadata !6}
!796 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!797 = metadata !{null, metadata !1, metadata !2, metadata !567, metadata !4, metadata !100, metadata !6}
!798 = metadata !{null, metadata !1, metadata !2, metadata !799, metadata !4, metadata !90, metadata !6}
!799 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!800 = metadata !{null, metadata !33, metadata !28, metadata !801, metadata !30, metadata !87, metadata !6}
!801 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!802 = metadata !{null, metadata !33, metadata !28, metadata !212, metadata !30, metadata !803, metadata !6}
!803 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!804 = metadata !{null, metadata !1, metadata !2, metadata !805, metadata !4, metadata !90, metadata !6}
!805 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!806 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !110, metadata !6}
!807 = metadata !{null, metadata !263, metadata !45, metadata !808, metadata !47, metadata !616, metadata !6}
!808 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!809 = metadata !{null, metadata !263, metadata !45, metadata !810, metadata !47, metadata !619, metadata !6}
!810 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!811 = metadata !{null, metadata !33, metadata !28, metadata !812, metadata !30, metadata !97, metadata !6}
!812 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!813 = metadata !{null, metadata !33, metadata !28, metadata !812, metadata !30, metadata !87, metadata !6}
!814 = metadata !{null, metadata !33, metadata !28, metadata !815, metadata !30, metadata !87, metadata !6}
!815 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!816 = metadata !{null, metadata !33, metadata !28, metadata !817, metadata !30, metadata !87, metadata !6}
!817 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!818 = metadata !{null, metadata !33, metadata !28, metadata !819, metadata !30, metadata !87, metadata !6}
!819 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!820 = metadata !{null, metadata !33, metadata !28, metadata !821, metadata !30, metadata !87, metadata !6}
!821 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!822 = metadata !{null, metadata !263, metadata !45, metadata !823, metadata !47, metadata !619, metadata !6}
!823 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!824 = metadata !{null, metadata !33, metadata !28, metadata !825, metadata !30, metadata !87, metadata !6}
!825 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!826 = metadata !{null, metadata !114, metadata !2, metadata !827, metadata !4, metadata !148, metadata !6}
!827 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!828 = metadata !{null, metadata !33, metadata !28, metadata !829, metadata !30, metadata !87, metadata !6}
!829 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!830 = metadata !{null, metadata !33, metadata !28, metadata !829, metadata !30, metadata !128, metadata !6}
!831 = metadata !{null, metadata !33, metadata !28, metadata !832, metadata !30, metadata !87, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!833 = metadata !{null, metadata !33, metadata !28, metadata !834, metadata !30, metadata !87, metadata !6}
!834 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!835 = metadata !{null, metadata !33, metadata !28, metadata !37, metadata !30, metadata !76, metadata !6}
!836 = metadata !{null, metadata !263, metadata !45, metadata !837, metadata !47, metadata !838, metadata !6}
!837 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!838 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!839 = metadata !{null, metadata !33, metadata !28, metadata !840, metadata !30, metadata !87, metadata !6}
!840 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!841 = metadata !{null, metadata !33, metadata !28, metadata !842, metadata !30, metadata !87, metadata !6}
!842 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!843 = metadata !{null, metadata !263, metadata !45, metadata !844, metadata !47, metadata !525, metadata !6}
!844 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!845 = metadata !{null, metadata !123, metadata !45, metadata !846, metadata !47, metadata !125, metadata !6}
!846 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!847 = metadata !{null, metadata !263, metadata !45, metadata !848, metadata !47, metadata !525, metadata !6}
!848 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!849 = metadata !{null, metadata !33, metadata !28, metadata !166, metadata !30, metadata !97, metadata !6}
!850 = metadata !{null, metadata !1, metadata !2, metadata !851, metadata !4, metadata !541, metadata !6}
!851 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!852 = metadata !{null, metadata !33, metadata !28, metadata !853, metadata !30, metadata !130, metadata !6}
!853 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!854 = metadata !{null, metadata !1, metadata !2, metadata !855, metadata !4, metadata !90, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!856 = metadata !{null, metadata !33, metadata !28, metadata !857, metadata !30, metadata !87, metadata !6}
!857 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!858 = metadata !{null, metadata !123, metadata !45, metadata !859, metadata !47, metadata !125, metadata !6}
!859 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!860 = metadata !{null, metadata !33, metadata !28, metadata !861, metadata !30, metadata !128, metadata !6}
!861 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!862 = metadata !{null, metadata !33, metadata !28, metadata !857, metadata !30, metadata !128, metadata !6}
!863 = metadata !{null, metadata !123, metadata !45, metadata !864, metadata !47, metadata !125, metadata !6}
!864 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!865 = metadata !{null, metadata !33, metadata !28, metadata !866, metadata !30, metadata !87, metadata !6}
!866 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!867 = metadata !{null, metadata !33, metadata !28, metadata !868, metadata !30, metadata !87, metadata !6}
!868 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!869 = metadata !{null, metadata !33, metadata !28, metadata !34, metadata !30, metadata !128, metadata !6}
!870 = metadata !{null, metadata !263, metadata !45, metadata !871, metadata !47, metadata !525, metadata !6}
!871 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!872 = metadata !{null, metadata !123, metadata !45, metadata !873, metadata !47, metadata !125, metadata !6}
!873 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!874 = metadata !{null, metadata !33, metadata !28, metadata !875, metadata !30, metadata !128, metadata !6}
!875 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!876 = metadata !{null, metadata !33, metadata !28, metadata !875, metadata !30, metadata !130, metadata !6}
!877 = metadata !{null, metadata !33, metadata !28, metadata !878, metadata !30, metadata !128, metadata !6}
!878 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!879 = metadata !{null, metadata !123, metadata !45, metadata !880, metadata !47, metadata !125, metadata !6}
!880 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!881 = metadata !{null, metadata !263, metadata !45, metadata !882, metadata !47, metadata !525, metadata !6}
!882 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!883 = metadata !{null, metadata !1, metadata !2, metadata !884, metadata !4, metadata !541, metadata !6}
!884 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!885 = metadata !{null, metadata !33, metadata !28, metadata !886, metadata !30, metadata !130, metadata !6}
!886 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!887 = metadata !{null, metadata !1, metadata !2, metadata !888, metadata !4, metadata !90, metadata !6}
!888 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!889 = metadata !{null, metadata !33, metadata !28, metadata !890, metadata !30, metadata !87, metadata !6}
!890 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!891 = metadata !{null, metadata !33, metadata !28, metadata !878, metadata !30, metadata !87, metadata !6}
!892 = metadata !{null, metadata !123, metadata !45, metadata !893, metadata !47, metadata !125, metadata !6}
!893 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!894 = metadata !{null, metadata !33, metadata !28, metadata !895, metadata !30, metadata !128, metadata !6}
!895 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!896 = metadata !{null, metadata !33, metadata !28, metadata !897, metadata !30, metadata !128, metadata !6}
!897 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!898 = metadata !{null, metadata !33, metadata !28, metadata !890, metadata !30, metadata !128, metadata !6}
!899 = metadata !{null, metadata !123, metadata !45, metadata !900, metadata !47, metadata !125, metadata !6}
!900 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!901 = metadata !{null, metadata !33, metadata !28, metadata !902, metadata !30, metadata !87, metadata !6}
!902 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!903 = metadata !{null, metadata !33, metadata !28, metadata !904, metadata !30, metadata !87, metadata !6}
!904 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!905 = metadata !{null, metadata !114, metadata !2, metadata !906, metadata !4, metadata !148, metadata !6}
!906 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!907 = metadata !{null, metadata !123, metadata !45, metadata !908, metadata !47, metadata !125, metadata !6}
!908 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!909 = metadata !{null, metadata !1, metadata !2, metadata !42, metadata !4, metadata !910, metadata !6}
!910 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!911 = metadata !{null, metadata !263, metadata !45, metadata !912, metadata !47, metadata !616, metadata !6}
!912 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!913 = metadata !{null, metadata !263, metadata !45, metadata !914, metadata !47, metadata !619, metadata !6}
!914 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!915 = metadata !{null, metadata !33, metadata !28, metadata !916, metadata !30, metadata !97, metadata !6}
!916 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!917 = metadata !{null, metadata !33, metadata !28, metadata !916, metadata !30, metadata !87, metadata !6}
!918 = metadata !{null, metadata !33, metadata !28, metadata !919, metadata !30, metadata !87, metadata !6}
!919 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!920 = metadata !{null, metadata !33, metadata !28, metadata !921, metadata !30, metadata !87, metadata !6}
!921 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!922 = metadata !{null, metadata !33, metadata !28, metadata !923, metadata !30, metadata !87, metadata !6}
!923 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!924 = metadata !{null, metadata !33, metadata !28, metadata !925, metadata !30, metadata !87, metadata !6}
!925 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!926 = metadata !{null, metadata !263, metadata !45, metadata !927, metadata !47, metadata !619, metadata !6}
!927 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!928 = metadata !{null, metadata !33, metadata !28, metadata !919, metadata !30, metadata !97, metadata !6}
!929 = metadata !{null, metadata !263, metadata !45, metadata !930, metadata !47, metadata !619, metadata !6}
!930 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!931 = metadata !{null, metadata !33, metadata !28, metadata !267, metadata !30, metadata !128, metadata !6}
!932 = metadata !{null, metadata !114, metadata !2, metadata !933, metadata !4, metadata !148, metadata !6}
!933 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!934 = metadata !{null, metadata !123, metadata !45, metadata !935, metadata !47, metadata !125, metadata !6}
!935 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!936 = metadata !{null, metadata !33, metadata !28, metadata !937, metadata !30, metadata !87, metadata !6}
!937 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!938 = metadata !{null, metadata !1, metadata !2, metadata !939, metadata !4, metadata !90, metadata !6}
!939 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!940 = metadata !{null, metadata !33, metadata !28, metadata !140, metadata !30, metadata !97, metadata !6}
!941 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !910, metadata !6}
!942 = metadata !{null, metadata !33, metadata !28, metadata !150, metadata !30, metadata !803, metadata !6}
!943 = metadata !{null, metadata !123, metadata !45, metadata !944, metadata !47, metadata !125, metadata !6}
!944 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!945 = metadata !{null, metadata !33, metadata !28, metadata !946, metadata !30, metadata !128, metadata !6}
!946 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!947 = metadata !{null, metadata !33, metadata !28, metadata !946, metadata !30, metadata !130, metadata !6}
!948 = metadata !{null, metadata !33, metadata !28, metadata !949, metadata !30, metadata !128, metadata !6}
!949 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!950 = metadata !{null, metadata !33, metadata !28, metadata !949, metadata !30, metadata !87, metadata !6}
!951 = metadata !{null, metadata !263, metadata !45, metadata !952, metadata !47, metadata !616, metadata !6}
!952 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!953 = metadata !{null, metadata !263, metadata !45, metadata !954, metadata !47, metadata !619, metadata !6}
!954 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!955 = metadata !{null, metadata !33, metadata !28, metadata !956, metadata !30, metadata !97, metadata !6}
!956 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!957 = metadata !{null, metadata !33, metadata !28, metadata !956, metadata !30, metadata !87, metadata !6}
!958 = metadata !{null, metadata !33, metadata !28, metadata !959, metadata !30, metadata !87, metadata !6}
!959 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!960 = metadata !{null, metadata !33, metadata !28, metadata !961, metadata !30, metadata !87, metadata !6}
!961 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!962 = metadata !{null, metadata !33, metadata !28, metadata !963, metadata !30, metadata !87, metadata !6}
!963 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!964 = metadata !{null, metadata !33, metadata !28, metadata !965, metadata !30, metadata !87, metadata !6}
!965 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!966 = metadata !{null, metadata !263, metadata !45, metadata !967, metadata !47, metadata !619, metadata !6}
!967 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!968 = metadata !{null, metadata !33, metadata !28, metadata !959, metadata !30, metadata !97, metadata !6}
!969 = metadata !{null, metadata !263, metadata !45, metadata !970, metadata !47, metadata !619, metadata !6}
!970 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!971 = metadata !{null, metadata !114, metadata !2, metadata !972, metadata !4, metadata !148, metadata !6}
!972 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!973 = metadata !{null, metadata !123, metadata !45, metadata !974, metadata !47, metadata !125, metadata !6}
!974 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!975 = metadata !{null, metadata !33, metadata !28, metadata !976, metadata !30, metadata !87, metadata !6}
!976 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!977 = metadata !{null, metadata !1, metadata !2, metadata !978, metadata !4, metadata !90, metadata !6}
!978 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!979 = metadata !{null, metadata !33, metadata !28, metadata !106, metadata !30, metadata !97, metadata !6}
!980 = metadata !{null, metadata !33, metadata !28, metadata !192, metadata !30, metadata !97, metadata !6}
!981 = metadata !{null, metadata !33, metadata !28, metadata !982, metadata !30, metadata !794, metadata !6}
!982 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!983 = metadata !{null, metadata !1, metadata !2, metadata !984, metadata !4, metadata !985, metadata !6}
!984 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!985 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!986 = metadata !{null, metadata !33, metadata !28, metadata !987, metadata !30, metadata !87, metadata !6}
!987 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!988 = metadata !{null, metadata !33, metadata !28, metadata !989, metadata !30, metadata !87, metadata !6}
!989 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!990 = metadata !{null, metadata !33, metadata !28, metadata !991, metadata !30, metadata !584, metadata !6}
!991 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!992 = metadata !{null, metadata !33, metadata !28, metadata !993, metadata !30, metadata !584, metadata !6}
!993 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!994 = metadata !{null, metadata !1, metadata !2, metadata !995, metadata !4, metadata !90, metadata !6}
!995 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!996 = metadata !{null, metadata !33, metadata !28, metadata !997, metadata !30, metadata !128, metadata !6}
!997 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!998 = metadata !{null, metadata !33, metadata !28, metadata !999, metadata !30, metadata !128, metadata !6}
!999 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1000 = metadata !{null, metadata !33, metadata !28, metadata !999, metadata !30, metadata !87, metadata !6}
!1001 = metadata !{null, metadata !33, metadata !28, metadata !1002, metadata !30, metadata !87, metadata !6}
!1002 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1003 = metadata !{null, metadata !33, metadata !28, metadata !1004, metadata !30, metadata !128, metadata !6}
!1004 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!1005 = metadata !{null, metadata !33, metadata !28, metadata !1004, metadata !30, metadata !130, metadata !6}
!1006 = metadata !{null, metadata !123, metadata !45, metadata !1007, metadata !47, metadata !125, metadata !6}
!1007 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1008 = metadata !{null, metadata !123, metadata !45, metadata !1009, metadata !47, metadata !125, metadata !6}
!1009 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!1010 = metadata !{null, metadata !33, metadata !28, metadata !1011, metadata !30, metadata !87, metadata !6}
!1011 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1012 = metadata !{null, metadata !33, metadata !28, metadata !1013, metadata !30, metadata !87, metadata !6}
!1013 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1014 = metadata !{null, metadata !33, metadata !28, metadata !1015, metadata !30, metadata !87, metadata !6}
!1015 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1016 = metadata !{null, metadata !263, metadata !45, metadata !1017, metadata !47, metadata !616, metadata !6}
!1017 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1018 = metadata !{null, metadata !263, metadata !45, metadata !1019, metadata !47, metadata !619, metadata !6}
!1019 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1020 = metadata !{null, metadata !33, metadata !28, metadata !1021, metadata !30, metadata !97, metadata !6}
!1021 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1022 = metadata !{null, metadata !33, metadata !28, metadata !1021, metadata !30, metadata !87, metadata !6}
!1023 = metadata !{null, metadata !33, metadata !28, metadata !1024, metadata !30, metadata !87, metadata !6}
!1024 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1025 = metadata !{null, metadata !33, metadata !28, metadata !1026, metadata !30, metadata !87, metadata !6}
!1026 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1027 = metadata !{null, metadata !33, metadata !28, metadata !1028, metadata !30, metadata !87, metadata !6}
!1028 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1029 = metadata !{null, metadata !263, metadata !45, metadata !1030, metadata !47, metadata !619, metadata !6}
!1030 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1031 = metadata !{null, metadata !33, metadata !28, metadata !989, metadata !30, metadata !97, metadata !6}
!1032 = metadata !{null, metadata !263, metadata !45, metadata !1033, metadata !47, metadata !619, metadata !6}
!1033 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1034 = metadata !{null, metadata !114, metadata !2, metadata !1035, metadata !4, metadata !148, metadata !6}
!1035 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1036 = metadata !{null, metadata !123, metadata !45, metadata !1037, metadata !47, metadata !125, metadata !6}
!1037 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1038 = metadata !{null, metadata !33, metadata !28, metadata !1039, metadata !30, metadata !130, metadata !6}
!1039 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1040 = metadata !{null, metadata !33, metadata !28, metadata !1041, metadata !30, metadata !97, metadata !6}
!1041 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!1042 = metadata !{null, metadata !1, metadata !2, metadata !1043, metadata !4, metadata !90, metadata !6}
!1043 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1044 = metadata !{null, metadata !33, metadata !28, metadata !1045, metadata !30, metadata !87, metadata !6}
!1045 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1046 = metadata !{null, metadata !33, metadata !28, metadata !547, metadata !30, metadata !128, metadata !6}
!1047 = metadata !{null, metadata !123, metadata !45, metadata !1048, metadata !47, metadata !125, metadata !6}
!1048 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1049 = metadata !{null, metadata !33, metadata !28, metadata !1050, metadata !30, metadata !97, metadata !6}
!1050 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1051 = metadata !{null, metadata !1, metadata !2, metadata !1052, metadata !4, metadata !90, metadata !6}
!1052 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1053 = metadata !{null, metadata !1, metadata !2, metadata !1054, metadata !4, metadata !90, metadata !6}
!1054 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1055 = metadata !{null, metadata !1, metadata !2, metadata !1056, metadata !4, metadata !353, metadata !6}
!1056 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1057 = metadata !{null, metadata !1, metadata !2, metadata !1058, metadata !4, metadata !90, metadata !6}
!1058 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1059 = metadata !{null, metadata !263, metadata !45, metadata !1060, metadata !47, metadata !1061, metadata !6}
!1060 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1061 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1062 = metadata !{null, metadata !33, metadata !28, metadata !1063, metadata !30, metadata !87, metadata !6}
!1063 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1064 = metadata !{null, metadata !33, metadata !28, metadata !1065, metadata !30, metadata !87, metadata !6}
!1065 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1066 = metadata !{null, metadata !1, metadata !2, metadata !1067, metadata !4, metadata !90, metadata !6}
!1067 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!1068 = metadata !{null, metadata !33, metadata !28, metadata !1069, metadata !30, metadata !87, metadata !6}
!1069 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1070 = metadata !{null, metadata !33, metadata !28, metadata !1071, metadata !30, metadata !87, metadata !6}
!1071 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1072 = metadata !{null, metadata !114, metadata !2, metadata !1073, metadata !4, metadata !148, metadata !6}
!1073 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1074 = metadata !{null, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !6}
!1075 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1076 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!1077 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1078 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!1079 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1080 = metadata !{null, metadata !1, metadata !2, metadata !1081, metadata !4, metadata !100, metadata !6}
!1081 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1082 = metadata !{null, metadata !1, metadata !2, metadata !1083, metadata !4, metadata !90, metadata !6}
!1083 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1084 = metadata !{null, metadata !33, metadata !28, metadata !1085, metadata !30, metadata !87, metadata !6}
!1085 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1086 = metadata !{null, metadata !33, metadata !28, metadata !1087, metadata !30, metadata !97, metadata !6}
!1087 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1088 = metadata !{null, metadata !263, metadata !45, metadata !1089, metadata !47, metadata !265, metadata !6}
!1089 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1090 = metadata !{null, metadata !263, metadata !45, metadata !1091, metadata !47, metadata !265, metadata !6}
!1091 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1092 = metadata !{null, metadata !1, metadata !2, metadata !1093, metadata !4, metadata !100, metadata !6}
!1093 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1094 = metadata !{null, metadata !33, metadata !28, metadata !1095, metadata !30, metadata !87, metadata !6}
!1095 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1096 = metadata !{null, metadata !33, metadata !28, metadata !1097, metadata !30, metadata !87, metadata !6}
!1097 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1098 = metadata !{null, metadata !33, metadata !28, metadata !1099, metadata !30, metadata !87, metadata !6}
!1099 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1100 = metadata !{null, metadata !1, metadata !2, metadata !1101, metadata !4, metadata !90, metadata !6}
!1101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!1102 = metadata !{null, metadata !33, metadata !28, metadata !1103, metadata !30, metadata !97, metadata !6}
!1103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!1104 = metadata !{null, metadata !33, metadata !28, metadata !1105, metadata !30, metadata !87, metadata !6}
!1105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1106 = metadata !{null, metadata !263, metadata !45, metadata !1107, metadata !47, metadata !265, metadata !6}
!1107 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1108 = metadata !{null, metadata !1, metadata !2, metadata !1109, metadata !4, metadata !100, metadata !6}
!1109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1110 = metadata !{null, metadata !33, metadata !28, metadata !1111, metadata !30, metadata !87, metadata !6}
!1111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1112 = metadata !{null, metadata !33, metadata !28, metadata !1113, metadata !30, metadata !87, metadata !6}
!1113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1114 = metadata !{null, metadata !33, metadata !28, metadata !1115, metadata !30, metadata !87, metadata !6}
!1115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1116 = metadata !{null, metadata !1, metadata !2, metadata !1117, metadata !4, metadata !90, metadata !6}
!1117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1118 = metadata !{null, metadata !33, metadata !28, metadata !1119, metadata !30, metadata !97, metadata !6}
!1119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1120 = metadata !{null, metadata !33, metadata !28, metadata !1121, metadata !30, metadata !87, metadata !6}
!1121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1122 = metadata !{null, metadata !263, metadata !45, metadata !1123, metadata !47, metadata !265, metadata !6}
!1123 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1124 = metadata !{null, metadata !1, metadata !2, metadata !1125, metadata !4, metadata !100, metadata !6}
!1125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1126 = metadata !{null, metadata !33, metadata !28, metadata !1127, metadata !30, metadata !87, metadata !6}
!1127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1128 = metadata !{null, metadata !33, metadata !28, metadata !1129, metadata !30, metadata !87, metadata !6}
!1129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1130 = metadata !{null, metadata !33, metadata !28, metadata !1131, metadata !30, metadata !87, metadata !6}
!1131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1132 = metadata !{null, metadata !1, metadata !2, metadata !1133, metadata !4, metadata !90, metadata !6}
!1133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1134 = metadata !{null, metadata !33, metadata !28, metadata !1135, metadata !30, metadata !97, metadata !6}
!1135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1136 = metadata !{null, metadata !33, metadata !28, metadata !1137, metadata !30, metadata !87, metadata !6}
!1137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1138 = metadata !{null, metadata !263, metadata !45, metadata !1139, metadata !47, metadata !265, metadata !6}
!1139 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!1140 = metadata !{null, metadata !263, metadata !45, metadata !1141, metadata !47, metadata !265, metadata !6}
!1141 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1142 = metadata !{null, metadata !33, metadata !28, metadata !1143, metadata !30, metadata !87, metadata !6}
!1143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1144 = metadata !{null, metadata !33, metadata !28, metadata !1145, metadata !30, metadata !87, metadata !6}
!1145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1146 = metadata !{null, metadata !1, metadata !2, metadata !1147, metadata !4, metadata !90, metadata !6}
!1147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!1148 = metadata !{null, metadata !33, metadata !28, metadata !1149, metadata !30, metadata !97, metadata !6}
!1149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!1150 = metadata !{null, metadata !33, metadata !28, metadata !1151, metadata !30, metadata !87, metadata !6}
!1151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1152 = metadata !{null, metadata !263, metadata !45, metadata !1153, metadata !47, metadata !265, metadata !6}
!1153 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1154 = metadata !{null, metadata !33, metadata !28, metadata !1155, metadata !30, metadata !87, metadata !6}
!1155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1156 = metadata !{null, metadata !33, metadata !28, metadata !1157, metadata !30, metadata !87, metadata !6}
!1157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1158 = metadata !{null, metadata !1, metadata !2, metadata !1159, metadata !4, metadata !90, metadata !6}
!1159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1160 = metadata !{null, metadata !33, metadata !28, metadata !1161, metadata !30, metadata !97, metadata !6}
!1161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1162 = metadata !{null, metadata !33, metadata !28, metadata !1163, metadata !30, metadata !87, metadata !6}
!1163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1164 = metadata !{null, metadata !263, metadata !45, metadata !1165, metadata !47, metadata !265, metadata !6}
!1165 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1166 = metadata !{null, metadata !33, metadata !28, metadata !1167, metadata !30, metadata !87, metadata !6}
!1167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1168 = metadata !{null, metadata !33, metadata !28, metadata !1169, metadata !30, metadata !87, metadata !6}
!1169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1170 = metadata !{null, metadata !1, metadata !2, metadata !1171, metadata !4, metadata !90, metadata !6}
!1171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1172 = metadata !{null, metadata !33, metadata !28, metadata !414, metadata !30, metadata !97, metadata !6}
!1173 = metadata !{null, metadata !33, metadata !28, metadata !1174, metadata !30, metadata !87, metadata !6}
!1174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1175 = metadata !{null, metadata !263, metadata !45, metadata !1176, metadata !47, metadata !265, metadata !6}
!1176 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1177 = metadata !{null, metadata !33, metadata !28, metadata !1178, metadata !30, metadata !87, metadata !6}
!1178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1179 = metadata !{null, metadata !33, metadata !28, metadata !1180, metadata !30, metadata !87, metadata !6}
!1180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1181 = metadata !{null, metadata !33, metadata !28, metadata !1182, metadata !30, metadata !87, metadata !6}
!1182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1183 = metadata !{null, metadata !33, metadata !28, metadata !1184, metadata !30, metadata !87, metadata !6}
!1184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1185 = metadata !{null, metadata !263, metadata !45, metadata !1186, metadata !47, metadata !265, metadata !6}
!1186 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1187 = metadata !{null, metadata !33, metadata !28, metadata !1188, metadata !30, metadata !87, metadata !6}
!1188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1189 = metadata !{null, metadata !33, metadata !28, metadata !1190, metadata !30, metadata !87, metadata !6}
!1190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1191 = metadata !{null, metadata !33, metadata !28, metadata !1192, metadata !30, metadata !87, metadata !6}
!1192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1193 = metadata !{null, metadata !33, metadata !28, metadata !1194, metadata !30, metadata !87, metadata !6}
!1194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1195 = metadata !{null, metadata !114, metadata !2, metadata !1196, metadata !4, metadata !148, metadata !6}
!1196 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1197 = metadata !{null, metadata !263, metadata !45, metadata !1198, metadata !47, metadata !265, metadata !6}
!1198 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1199 = metadata !{null, metadata !33, metadata !28, metadata !1200, metadata !30, metadata !87, metadata !6}
!1200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1201 = metadata !{null, metadata !33, metadata !28, metadata !1202, metadata !30, metadata !87, metadata !6}
!1202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1203 = metadata !{null, metadata !33, metadata !28, metadata !1204, metadata !30, metadata !87, metadata !6}
!1204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1205 = metadata !{null, metadata !33, metadata !28, metadata !1206, metadata !30, metadata !87, metadata !6}
!1206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1207 = metadata !{null, metadata !114, metadata !2, metadata !1208, metadata !4, metadata !148, metadata !6}
!1208 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1209 = metadata !{null, metadata !263, metadata !45, metadata !1210, metadata !47, metadata !265, metadata !6}
!1210 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1211 = metadata !{null, metadata !263, metadata !45, metadata !1212, metadata !47, metadata !265, metadata !6}
!1212 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1213 = metadata !{null, metadata !263, metadata !45, metadata !1214, metadata !47, metadata !265, metadata !6}
!1214 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1215 = metadata !{metadata !1216, i32* @scn_index}
!1216 = metadata !{metadata !1217}
!1217 = metadata !{i32 0, i32 31, metadata !1218}
!1218 = metadata !{metadata !1219}
!1219 = metadata !{metadata !"scn_index", metadata !1220, metadata !"int", i32 0, i32 31}
!1220 = metadata !{metadata !1221}
!1221 = metadata !{i32 0, i32 0, i32 1}
!1222 = metadata !{metadata !1223, null}
!1223 = metadata !{metadata !1224}
!1224 = metadata !{i32 0, i32 31, metadata !1225}
!1225 = metadata !{metadata !1226}
!1226 = metadata !{metadata !"scenario.structure.c_points", metadata !1227, metadata !"int", i32 0, i32 31}
!1227 = metadata !{metadata !1228, metadata !1229, metadata !1230}
!1228 = metadata !{i32 0, i32 9, i32 1}
!1229 = metadata !{i32 0, i32 3, i32 1}
!1230 = metadata !{i32 0, i32 1, i32 1}
!1231 = metadata !{metadata !1232, i32* @scenario_source_y}
!1232 = metadata !{metadata !1233}
!1233 = metadata !{i32 0, i32 31, metadata !1234}
!1234 = metadata !{metadata !1235}
!1235 = metadata !{metadata !"scenario.source.y", metadata !1220, metadata !"int", i32 0, i32 31}
!1236 = metadata !{metadata !1237, i32* @scenario_source_x}
!1237 = metadata !{metadata !1238}
!1238 = metadata !{i32 0, i32 31, metadata !1239}
!1239 = metadata !{metadata !1240}
!1240 = metadata !{metadata !"scenario.source.x", metadata !1220, metadata !"int", i32 0, i32 31}
!1241 = metadata !{metadata !1242, i32* @scenario_source_radi}
!1242 = metadata !{metadata !1243}
!1243 = metadata !{i32 0, i32 31, metadata !1244}
!1244 = metadata !{metadata !1245}
!1245 = metadata !{metadata !"scenario.source.radius", metadata !1220, metadata !"int", i32 0, i32 31}
!1246 = metadata !{metadata !1247, double* @scenario_source_p_am}
!1247 = metadata !{metadata !1248}
!1248 = metadata !{i32 0, i32 63, metadata !1249}
!1249 = metadata !{metadata !1250}
!1250 = metadata !{metadata !"scenario.source.p_amp", metadata !1220, metadata !"double", i32 0, i32 63}
!1251 = metadata !{metadata !1252, i32* @scenario_ny}
!1252 = metadata !{metadata !1253}
!1253 = metadata !{i32 0, i32 31, metadata !1254}
!1254 = metadata !{metadata !1255}
!1255 = metadata !{metadata !"scenario.ny", metadata !1220, metadata !"int", i32 0, i32 31}
!1256 = metadata !{metadata !1257, i32* @scenario_nx}
!1257 = metadata !{metadata !1258}
!1258 = metadata !{i32 0, i32 31, metadata !1259}
!1259 = metadata !{metadata !1260}
!1260 = metadata !{metadata !"scenario.nx", metadata !1220, metadata !"int", i32 0, i32 31}
!1261 = metadata !{metadata !1262, i32* @scenario_nr_struct}
!1262 = metadata !{metadata !1263}
!1263 = metadata !{i32 0, i32 31, metadata !1264}
!1264 = metadata !{metadata !1265}
!1265 = metadata !{metadata !"scenario.nr_struct", metadata !1220, metadata !"int", i32 0, i32 31}
!1266 = metadata !{metadata !1267, double* @scenario_TIME_STEP}
!1267 = metadata !{metadata !1268}
!1268 = metadata !{i32 0, i32 63, metadata !1269}
!1269 = metadata !{metadata !1270}
!1270 = metadata !{metadata !"scenario.TIME_STEP", metadata !1220, metadata !"double", i32 0, i32 63}
!1271 = metadata !{metadata !1272, i32* @scenario_SAVE_TIME}
!1272 = metadata !{metadata !1273}
!1273 = metadata !{i32 0, i32 31, metadata !1274}
!1274 = metadata !{metadata !1275}
!1275 = metadata !{metadata !"scenario.SAVE_TIME", metadata !1220, metadata !"int", i32 0, i32 31}
!1276 = metadata !{metadata !1277, double* @scenario_MAX_TIME}
!1277 = metadata !{metadata !1278}
!1278 = metadata !{i32 0, i32 63, metadata !1279}
!1279 = metadata !{metadata !1280}
!1280 = metadata !{metadata !"scenario.MAX_TIME", metadata !1220, metadata !"double", i32 0, i32 63}
!1281 = metadata !{metadata !1282, double* @scenario_H}
!1282 = metadata !{metadata !1283}
!1283 = metadata !{i32 0, i32 63, metadata !1284}
!1284 = metadata !{metadata !1285}
!1285 = metadata !{metadata !"scenario.H", metadata !1220, metadata !"double", i32 0, i32 63}
!1286 = metadata !{metadata !1287, i32* @ny}
!1287 = metadata !{metadata !1288}
!1288 = metadata !{i32 0, i32 31, metadata !1289}
!1289 = metadata !{metadata !1290}
!1290 = metadata !{metadata !"ny", metadata !1220, metadata !"int", i32 0, i32 31}
!1291 = metadata !{metadata !1292, i32* @nx}
!1292 = metadata !{metadata !1293}
!1293 = metadata !{i32 0, i32 31, metadata !1294}
!1294 = metadata !{metadata !1295}
!1295 = metadata !{metadata !"nx", metadata !1220, metadata !"int", i32 0, i32 31}
!1296 = metadata !{metadata !1297, i32* @num_scenarios}
!1297 = metadata !{metadata !1298}
!1298 = metadata !{i32 0, i32 31, metadata !1299}
!1299 = metadata !{metadata !1300}
!1300 = metadata !{metadata !"num_scenarios", metadata !1220, metadata !"int", i32 0, i32 31}
!1301 = metadata !{metadata !1302, [2 x i32]* @llvm_global_ctors_0}
!1302 = metadata !{metadata !1303}
!1303 = metadata !{i32 0, i32 31, metadata !1304}
!1304 = metadata !{metadata !1305}
!1305 = metadata !{metadata !"llvm.global_ctors.0", metadata !1306, metadata !"", i32 0, i32 31}
!1306 = metadata !{metadata !1230}
!1307 = metadata !{metadata !1308, double* @gain}
!1308 = metadata !{metadata !1309}
!1309 = metadata !{i32 0, i32 63, metadata !1310}
!1310 = metadata !{metadata !1311}
!1311 = metadata !{metadata !"gain", metadata !1220, metadata !"double", i32 0, i32 63}
!1312 = metadata !{metadata !1313, double* @TIME_STEP}
!1313 = metadata !{metadata !1314}
!1314 = metadata !{i32 0, i32 63, metadata !1315}
!1315 = metadata !{metadata !1316}
!1316 = metadata !{metadata !"TIME_STEP", metadata !1220, metadata !"double", i32 0, i32 63}
!1317 = metadata !{metadata !1318, i32* @SAVE_TIME}
!1318 = metadata !{metadata !1319}
!1319 = metadata !{i32 0, i32 31, metadata !1320}
!1320 = metadata !{metadata !1321}
!1321 = metadata !{metadata !"SAVE_TIME", metadata !1220, metadata !"int", i32 0, i32 31}
!1322 = metadata !{metadata !1323, double* @MAX_TIME}
!1323 = metadata !{metadata !1324}
!1324 = metadata !{i32 0, i32 63, metadata !1325}
!1325 = metadata !{metadata !1326}
!1326 = metadata !{metadata !"MAX_TIME", metadata !1220, metadata !"double", i32 0, i32 63}
!1327 = metadata !{metadata !1328, double* @H}
!1328 = metadata !{metadata !1329}
!1329 = metadata !{i32 0, i32 63, metadata !1330}
!1330 = metadata !{metadata !1331}
!1331 = metadata !{metadata !"H", metadata !1220, metadata !"double", i32 0, i32 63}
!1332 = metadata !{metadata !1223, [80 x i32]* @scenario_structure_c}
!1333 = metadata !{metadata !1334}
!1334 = metadata !{i32 0, i32 63, metadata !1335}
!1335 = metadata !{metadata !1336}
!1336 = metadata !{metadata !"result", metadata !1220, metadata !"double", i32 0, i32 63}
