set lang "C"
set moduleName "s_compute_acoustics"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortName1 "scenario"
set BitWidth1 "3072"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Initializer1 ""
set External1 0
set Dims1 [list 0]
set Interface1 "wire"
set NameSpace1 [list ]
set structMem1 ""
set PortName10 "nx"
set BitWidth10 "32"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "int"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "ny"
set BitWidth11 "32"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "int"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set PortName12 "SAVE_TIME"
set BitWidth12 "32"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "0"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "int"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend structMem1 $Port12
set PortName13 "nr_struct"
set BitWidth13 "32"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "0"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set DataType13 "int"
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend structMem1 $Port13
set PortName14 "structure"
set BitWidth14 "2560"
set ArrayOpt14 ""
set Const14 "0"
set Volatile14 "0"
set Pointer14 "0"
set Reference14 "0"
set Dims14 [list  10]
set Interface14 "wire"
set structMem14 ""
set PortName140 "c_points"
set BitWidth140 "256"
set ArrayOpt140 ""
set Const140 "0"
set Volatile140 "0"
set Pointer140 "0"
set Reference140 "0"
set Dims140 [list  4 2]
set Interface140 "wire"
set DataType140 "int"
set Port140 [list $PortName140 $Interface140 $DataType140 $Pointer140 $Dims140 $Const140 $Volatile140 $ArrayOpt140]
lappend structMem14 $Port140
set structParameter14 [list ]
set structArgument14 [list ]
set NameSpace14 [list ]
set structIsPacked14 "0"
set DataType14 [list "structure_t" "struct " $structMem14 0 0 $structParameter14 $structArgument14 $NameSpace14 $structIsPacked14]
set Port14 [list $PortName14 $Interface14 $DataType14 $Pointer14 $Dims14 $Const14 $Volatile14 $ArrayOpt14]
lappend structMem1 $Port14
set PortName15 "source"
set BitWidth15 "192"
set ArrayOpt15 ""
set Const15 "0"
set Volatile15 "0"
set Pointer15 "0"
set Reference15 "0"
set Dims15 [list 0]
set Interface15 "wire"
set structMem15 ""
set PortName150 "x"
set BitWidth150 "32"
set ArrayOpt150 ""
set Const150 "0"
set Volatile150 "0"
set Pointer150 "0"
set Reference150 "0"
set Dims150 [list 0]
set Interface150 "wire"
set DataType150 "int"
set Port150 [list $PortName150 $Interface150 $DataType150 $Pointer150 $Dims150 $Const150 $Volatile150 $ArrayOpt150]
lappend structMem15 $Port150
set PortName151 "y"
set BitWidth151 "32"
set ArrayOpt151 ""
set Const151 "0"
set Volatile151 "0"
set Pointer151 "0"
set Reference151 "0"
set Dims151 [list 0]
set Interface151 "wire"
set DataType151 "int"
set Port151 [list $PortName151 $Interface151 $DataType151 $Pointer151 $Dims151 $Const151 $Volatile151 $ArrayOpt151]
lappend structMem15 $Port151
set PortName152 "radius"
set BitWidth152 "32"
set ArrayOpt152 ""
set Const152 "0"
set Volatile152 "0"
set Pointer152 "0"
set Reference152 "0"
set Dims152 [list 0]
set Interface152 "wire"
set DataType152 "int"
set Port152 [list $PortName152 $Interface152 $DataType152 $Pointer152 $Dims152 $Const152 $Volatile152 $ArrayOpt152]
lappend structMem15 $Port152
set PortName153 "p_amp"
set BitWidth153 "64"
set ArrayOpt153 ""
set Const153 "0"
set Volatile153 "0"
set Pointer153 "0"
set Reference153 "0"
set Dims153 [list 0]
set Interface153 "wire"
set DataType153 "double"
set Port153 [list $PortName153 $Interface153 $DataType153 $Pointer153 $Dims153 $Const153 $Volatile153 $ArrayOpt153]
lappend structMem15 $Port153
set structParameter15 [list ]
set structArgument15 [list ]
set NameSpace15 [list ]
set structIsPacked15 "0"
set DataType15 [list "source_t" "struct " $structMem15 0 0 $structParameter15 $structArgument15 $NameSpace15 $structIsPacked15]
set Port15 [list $PortName15 $Interface15 $DataType15 $Pointer15 $Dims15 $Const15 $Volatile15 $ArrayOpt15]
lappend structMem1 $Port15
set PortName16 "H"
set BitWidth16 "64"
set ArrayOpt16 ""
set Const16 "0"
set Volatile16 "0"
set Pointer16 "0"
set Reference16 "0"
set Dims16 [list 0]
set Interface16 "wire"
set DataType16 "double"
set Port16 [list $PortName16 $Interface16 $DataType16 $Pointer16 $Dims16 $Const16 $Volatile16 $ArrayOpt16]
lappend structMem1 $Port16
set PortName17 "MAX_TIME"
set BitWidth17 "64"
set ArrayOpt17 ""
set Const17 "0"
set Volatile17 "0"
set Pointer17 "0"
set Reference17 "0"
set Dims17 [list 0]
set Interface17 "wire"
set DataType17 "double"
set Port17 [list $PortName17 $Interface17 $DataType17 $Pointer17 $Dims17 $Const17 $Volatile17 $ArrayOpt17]
lappend structMem1 $Port17
set PortName18 "TIME_STEP"
set BitWidth18 "64"
set ArrayOpt18 ""
set Const18 "0"
set Volatile18 "0"
set Pointer18 "0"
set Reference18 "0"
set Dims18 [list 0]
set Interface18 "wire"
set DataType18 "double"
set Port18 [list $PortName18 $Interface18 $DataType18 $Pointer18 $Dims18 $Const18 $Volatile18 $ArrayOpt18]
lappend structMem1 $Port18
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "scenario_t" "struct " $structMem1 0 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1 $Initializer1 $External1 $NameSpace1]
lappend globalVariable $Port1
set PortName2 "ny"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Initializer2 ""
set External2 0
set Dims2 [list 0]
set Interface2 "wire"
set NameSpace2 [list ]
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2 $Initializer2 $External2 $NameSpace2]
lappend globalVariable $Port2
set PortName3 "nx"
set BitWidth3 "32"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Initializer3 ""
set External3 0
set Dims3 [list 0]
set Interface3 "wire"
set NameSpace3 [list ]
set DataType3 "int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3 $Initializer3 $External3 $NameSpace3]
lappend globalVariable $Port3
set PortName4 "gain"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Initializer4 ""
set External4 0
set Dims4 [list 0]
set Interface4 "wire"
set NameSpace4 [list ]
set DataType4 "double"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4 $Initializer4 $External4 $NameSpace4]
lappend globalVariable $Port4
set PortName5 "TIME_STEP"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Initializer5 ""
set External5 0
set Dims5 [list 0]
set Interface5 "wire"
set NameSpace5 [list ]
set DataType5 "double"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5 $Initializer5 $External5 $NameSpace5]
lappend globalVariable $Port5
set PortName6 "MAX_TIME"
set BitWidth6 "64"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "0"
set Reference6 "0"
set Initializer6 ""
set External6 0
set Dims6 [list 0]
set Interface6 "wire"
set NameSpace6 [list ]
set DataType6 "double"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6 $Initializer6 $External6 $NameSpace6]
lappend globalVariable $Port6
set PortList ""
set PortName0 "result"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "double"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
