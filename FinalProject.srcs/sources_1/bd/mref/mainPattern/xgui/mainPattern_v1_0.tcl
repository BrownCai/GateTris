# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BeginH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BeginV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_numberOnes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_numberTens" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_tetris" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_tip" -parent ${Page_0}
  ipgui::add_param $IPINST -name "InnerH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "InnerV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L_numberOnes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L_numberTens" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L_tetris" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L_tip" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OuterH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OuterV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TetrisBlockSize" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_numberOnes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_numberTens" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_tetris" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_tip" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_numberOnes" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_numberTens" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_tetris" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_tip" -parent ${Page_0}
  ipgui::add_param $IPINST -name "centerH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "centerV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sEasy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sHard" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sHome" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sNormal" -parent ${Page_0}
  ipgui::add_param $IPINST -name "size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "speedEasy" -parent ${Page_0}
  ipgui::add_param $IPINST -name "speedHard" -parent ${Page_0}
  ipgui::add_param $IPINST -name "speedNormal" -parent ${Page_0}
  ipgui::add_param $IPINST -name "speedUp" -parent ${Page_0}


}

proc update_PARAM_VALUE.BeginH { PARAM_VALUE.BeginH } {
	# Procedure called to update BeginH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BeginH { PARAM_VALUE.BeginH } {
	# Procedure called to validate BeginH
	return true
}

proc update_PARAM_VALUE.BeginV { PARAM_VALUE.BeginV } {
	# Procedure called to update BeginV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BeginV { PARAM_VALUE.BeginV } {
	# Procedure called to validate BeginV
	return true
}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to update H_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to validate H_BP
	return true
}

proc update_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to update H_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to validate H_FP
	return true
}

proc update_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to update H_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to validate H_PW
	return true
}

proc update_PARAM_VALUE.H_TOT { PARAM_VALUE.H_TOT } {
	# Procedure called to update H_TOT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_TOT { PARAM_VALUE.H_TOT } {
	# Procedure called to validate H_TOT
	return true
}

proc update_PARAM_VALUE.H_numberOnes { PARAM_VALUE.H_numberOnes } {
	# Procedure called to update H_numberOnes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_numberOnes { PARAM_VALUE.H_numberOnes } {
	# Procedure called to validate H_numberOnes
	return true
}

proc update_PARAM_VALUE.H_numberTens { PARAM_VALUE.H_numberTens } {
	# Procedure called to update H_numberTens when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_numberTens { PARAM_VALUE.H_numberTens } {
	# Procedure called to validate H_numberTens
	return true
}

proc update_PARAM_VALUE.H_tetris { PARAM_VALUE.H_tetris } {
	# Procedure called to update H_tetris when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_tetris { PARAM_VALUE.H_tetris } {
	# Procedure called to validate H_tetris
	return true
}

proc update_PARAM_VALUE.H_tip { PARAM_VALUE.H_tip } {
	# Procedure called to update H_tip when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_tip { PARAM_VALUE.H_tip } {
	# Procedure called to validate H_tip
	return true
}

proc update_PARAM_VALUE.InnerH { PARAM_VALUE.InnerH } {
	# Procedure called to update InnerH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.InnerH { PARAM_VALUE.InnerH } {
	# Procedure called to validate InnerH
	return true
}

proc update_PARAM_VALUE.InnerV { PARAM_VALUE.InnerV } {
	# Procedure called to update InnerV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.InnerV { PARAM_VALUE.InnerV } {
	# Procedure called to validate InnerV
	return true
}

proc update_PARAM_VALUE.L_numberOnes { PARAM_VALUE.L_numberOnes } {
	# Procedure called to update L_numberOnes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L_numberOnes { PARAM_VALUE.L_numberOnes } {
	# Procedure called to validate L_numberOnes
	return true
}

proc update_PARAM_VALUE.L_numberTens { PARAM_VALUE.L_numberTens } {
	# Procedure called to update L_numberTens when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L_numberTens { PARAM_VALUE.L_numberTens } {
	# Procedure called to validate L_numberTens
	return true
}

proc update_PARAM_VALUE.L_tetris { PARAM_VALUE.L_tetris } {
	# Procedure called to update L_tetris when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L_tetris { PARAM_VALUE.L_tetris } {
	# Procedure called to validate L_tetris
	return true
}

proc update_PARAM_VALUE.L_tip { PARAM_VALUE.L_tip } {
	# Procedure called to update L_tip when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L_tip { PARAM_VALUE.L_tip } {
	# Procedure called to validate L_tip
	return true
}

proc update_PARAM_VALUE.OuterH { PARAM_VALUE.OuterH } {
	# Procedure called to update OuterH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OuterH { PARAM_VALUE.OuterH } {
	# Procedure called to validate OuterH
	return true
}

proc update_PARAM_VALUE.OuterV { PARAM_VALUE.OuterV } {
	# Procedure called to update OuterV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OuterV { PARAM_VALUE.OuterV } {
	# Procedure called to validate OuterV
	return true
}

proc update_PARAM_VALUE.TetrisBlockSize { PARAM_VALUE.TetrisBlockSize } {
	# Procedure called to update TetrisBlockSize when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TetrisBlockSize { PARAM_VALUE.TetrisBlockSize } {
	# Procedure called to validate TetrisBlockSize
	return true
}

proc update_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to update V_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to validate V_BP
	return true
}

proc update_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to update V_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to validate V_FP
	return true
}

proc update_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to update V_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to validate V_PW
	return true
}

proc update_PARAM_VALUE.V_TOT { PARAM_VALUE.V_TOT } {
	# Procedure called to update V_TOT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOT { PARAM_VALUE.V_TOT } {
	# Procedure called to validate V_TOT
	return true
}

proc update_PARAM_VALUE.V_numberOnes { PARAM_VALUE.V_numberOnes } {
	# Procedure called to update V_numberOnes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_numberOnes { PARAM_VALUE.V_numberOnes } {
	# Procedure called to validate V_numberOnes
	return true
}

proc update_PARAM_VALUE.V_numberTens { PARAM_VALUE.V_numberTens } {
	# Procedure called to update V_numberTens when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_numberTens { PARAM_VALUE.V_numberTens } {
	# Procedure called to validate V_numberTens
	return true
}

proc update_PARAM_VALUE.V_tetris { PARAM_VALUE.V_tetris } {
	# Procedure called to update V_tetris when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_tetris { PARAM_VALUE.V_tetris } {
	# Procedure called to validate V_tetris
	return true
}

proc update_PARAM_VALUE.V_tip { PARAM_VALUE.V_tip } {
	# Procedure called to update V_tip when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_tip { PARAM_VALUE.V_tip } {
	# Procedure called to validate V_tip
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.W_numberOnes { PARAM_VALUE.W_numberOnes } {
	# Procedure called to update W_numberOnes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_numberOnes { PARAM_VALUE.W_numberOnes } {
	# Procedure called to validate W_numberOnes
	return true
}

proc update_PARAM_VALUE.W_numberTens { PARAM_VALUE.W_numberTens } {
	# Procedure called to update W_numberTens when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_numberTens { PARAM_VALUE.W_numberTens } {
	# Procedure called to validate W_numberTens
	return true
}

proc update_PARAM_VALUE.W_tetris { PARAM_VALUE.W_tetris } {
	# Procedure called to update W_tetris when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_tetris { PARAM_VALUE.W_tetris } {
	# Procedure called to validate W_tetris
	return true
}

proc update_PARAM_VALUE.W_tip { PARAM_VALUE.W_tip } {
	# Procedure called to update W_tip when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_tip { PARAM_VALUE.W_tip } {
	# Procedure called to validate W_tip
	return true
}

proc update_PARAM_VALUE.centerH { PARAM_VALUE.centerH } {
	# Procedure called to update centerH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.centerH { PARAM_VALUE.centerH } {
	# Procedure called to validate centerH
	return true
}

proc update_PARAM_VALUE.centerV { PARAM_VALUE.centerV } {
	# Procedure called to update centerV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.centerV { PARAM_VALUE.centerV } {
	# Procedure called to validate centerV
	return true
}

proc update_PARAM_VALUE.sEasy { PARAM_VALUE.sEasy } {
	# Procedure called to update sEasy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sEasy { PARAM_VALUE.sEasy } {
	# Procedure called to validate sEasy
	return true
}

proc update_PARAM_VALUE.sHard { PARAM_VALUE.sHard } {
	# Procedure called to update sHard when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sHard { PARAM_VALUE.sHard } {
	# Procedure called to validate sHard
	return true
}

proc update_PARAM_VALUE.sHome { PARAM_VALUE.sHome } {
	# Procedure called to update sHome when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sHome { PARAM_VALUE.sHome } {
	# Procedure called to validate sHome
	return true
}

proc update_PARAM_VALUE.sNormal { PARAM_VALUE.sNormal } {
	# Procedure called to update sNormal when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sNormal { PARAM_VALUE.sNormal } {
	# Procedure called to validate sNormal
	return true
}

proc update_PARAM_VALUE.size { PARAM_VALUE.size } {
	# Procedure called to update size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.size { PARAM_VALUE.size } {
	# Procedure called to validate size
	return true
}

proc update_PARAM_VALUE.speedEasy { PARAM_VALUE.speedEasy } {
	# Procedure called to update speedEasy when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.speedEasy { PARAM_VALUE.speedEasy } {
	# Procedure called to validate speedEasy
	return true
}

proc update_PARAM_VALUE.speedHard { PARAM_VALUE.speedHard } {
	# Procedure called to update speedHard when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.speedHard { PARAM_VALUE.speedHard } {
	# Procedure called to validate speedHard
	return true
}

proc update_PARAM_VALUE.speedNormal { PARAM_VALUE.speedNormal } {
	# Procedure called to update speedNormal when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.speedNormal { PARAM_VALUE.speedNormal } {
	# Procedure called to validate speedNormal
	return true
}

proc update_PARAM_VALUE.speedUp { PARAM_VALUE.speedUp } {
	# Procedure called to update speedUp when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.speedUp { PARAM_VALUE.speedUp } {
	# Procedure called to validate speedUp
	return true
}


proc update_MODELPARAM_VALUE.sHome { MODELPARAM_VALUE.sHome PARAM_VALUE.sHome } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sHome}] ${MODELPARAM_VALUE.sHome}
}

proc update_MODELPARAM_VALUE.sEasy { MODELPARAM_VALUE.sEasy PARAM_VALUE.sEasy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sEasy}] ${MODELPARAM_VALUE.sEasy}
}

proc update_MODELPARAM_VALUE.sNormal { MODELPARAM_VALUE.sNormal PARAM_VALUE.sNormal } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sNormal}] ${MODELPARAM_VALUE.sNormal}
}

proc update_MODELPARAM_VALUE.sHard { MODELPARAM_VALUE.sHard PARAM_VALUE.sHard } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sHard}] ${MODELPARAM_VALUE.sHard}
}

proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.speedEasy { MODELPARAM_VALUE.speedEasy PARAM_VALUE.speedEasy } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.speedEasy}] ${MODELPARAM_VALUE.speedEasy}
}

proc update_MODELPARAM_VALUE.speedNormal { MODELPARAM_VALUE.speedNormal PARAM_VALUE.speedNormal } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.speedNormal}] ${MODELPARAM_VALUE.speedNormal}
}

proc update_MODELPARAM_VALUE.speedHard { MODELPARAM_VALUE.speedHard PARAM_VALUE.speedHard } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.speedHard}] ${MODELPARAM_VALUE.speedHard}
}

proc update_MODELPARAM_VALUE.speedUp { MODELPARAM_VALUE.speedUp PARAM_VALUE.speedUp } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.speedUp}] ${MODELPARAM_VALUE.speedUp}
}

proc update_MODELPARAM_VALUE.size { MODELPARAM_VALUE.size PARAM_VALUE.size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.size}] ${MODELPARAM_VALUE.size}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.H_FP { MODELPARAM_VALUE.H_FP PARAM_VALUE.H_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FP}] ${MODELPARAM_VALUE.H_FP}
}

proc update_MODELPARAM_VALUE.H_PW { MODELPARAM_VALUE.H_PW PARAM_VALUE.H_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_PW}] ${MODELPARAM_VALUE.H_PW}
}

proc update_MODELPARAM_VALUE.H_BP { MODELPARAM_VALUE.H_BP PARAM_VALUE.H_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BP}] ${MODELPARAM_VALUE.H_BP}
}

proc update_MODELPARAM_VALUE.H_TOT { MODELPARAM_VALUE.H_TOT PARAM_VALUE.H_TOT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_TOT}] ${MODELPARAM_VALUE.H_TOT}
}

proc update_MODELPARAM_VALUE.HEIGHT { MODELPARAM_VALUE.HEIGHT PARAM_VALUE.HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT}] ${MODELPARAM_VALUE.HEIGHT}
}

proc update_MODELPARAM_VALUE.V_FP { MODELPARAM_VALUE.V_FP PARAM_VALUE.V_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FP}] ${MODELPARAM_VALUE.V_FP}
}

proc update_MODELPARAM_VALUE.V_PW { MODELPARAM_VALUE.V_PW PARAM_VALUE.V_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_PW}] ${MODELPARAM_VALUE.V_PW}
}

proc update_MODELPARAM_VALUE.V_BP { MODELPARAM_VALUE.V_BP PARAM_VALUE.V_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BP}] ${MODELPARAM_VALUE.V_BP}
}

proc update_MODELPARAM_VALUE.V_TOT { MODELPARAM_VALUE.V_TOT PARAM_VALUE.V_TOT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOT}] ${MODELPARAM_VALUE.V_TOT}
}

proc update_MODELPARAM_VALUE.H_tetris { MODELPARAM_VALUE.H_tetris PARAM_VALUE.H_tetris } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_tetris}] ${MODELPARAM_VALUE.H_tetris}
}

proc update_MODELPARAM_VALUE.V_tetris { MODELPARAM_VALUE.V_tetris PARAM_VALUE.V_tetris } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_tetris}] ${MODELPARAM_VALUE.V_tetris}
}

proc update_MODELPARAM_VALUE.L_tetris { MODELPARAM_VALUE.L_tetris PARAM_VALUE.L_tetris } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L_tetris}] ${MODELPARAM_VALUE.L_tetris}
}

proc update_MODELPARAM_VALUE.W_tetris { MODELPARAM_VALUE.W_tetris PARAM_VALUE.W_tetris } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_tetris}] ${MODELPARAM_VALUE.W_tetris}
}

proc update_MODELPARAM_VALUE.H_tip { MODELPARAM_VALUE.H_tip PARAM_VALUE.H_tip } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_tip}] ${MODELPARAM_VALUE.H_tip}
}

proc update_MODELPARAM_VALUE.V_tip { MODELPARAM_VALUE.V_tip PARAM_VALUE.V_tip } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_tip}] ${MODELPARAM_VALUE.V_tip}
}

proc update_MODELPARAM_VALUE.L_tip { MODELPARAM_VALUE.L_tip PARAM_VALUE.L_tip } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L_tip}] ${MODELPARAM_VALUE.L_tip}
}

proc update_MODELPARAM_VALUE.W_tip { MODELPARAM_VALUE.W_tip PARAM_VALUE.W_tip } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_tip}] ${MODELPARAM_VALUE.W_tip}
}

proc update_MODELPARAM_VALUE.V_numberTens { MODELPARAM_VALUE.V_numberTens PARAM_VALUE.V_numberTens } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_numberTens}] ${MODELPARAM_VALUE.V_numberTens}
}

proc update_MODELPARAM_VALUE.V_numberOnes { MODELPARAM_VALUE.V_numberOnes PARAM_VALUE.V_numberOnes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_numberOnes}] ${MODELPARAM_VALUE.V_numberOnes}
}

proc update_MODELPARAM_VALUE.H_numberTens { MODELPARAM_VALUE.H_numberTens PARAM_VALUE.H_numberTens } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_numberTens}] ${MODELPARAM_VALUE.H_numberTens}
}

proc update_MODELPARAM_VALUE.H_numberOnes { MODELPARAM_VALUE.H_numberOnes PARAM_VALUE.H_numberOnes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_numberOnes}] ${MODELPARAM_VALUE.H_numberOnes}
}

proc update_MODELPARAM_VALUE.L_numberTens { MODELPARAM_VALUE.L_numberTens PARAM_VALUE.L_numberTens } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L_numberTens}] ${MODELPARAM_VALUE.L_numberTens}
}

proc update_MODELPARAM_VALUE.L_numberOnes { MODELPARAM_VALUE.L_numberOnes PARAM_VALUE.L_numberOnes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L_numberOnes}] ${MODELPARAM_VALUE.L_numberOnes}
}

proc update_MODELPARAM_VALUE.W_numberTens { MODELPARAM_VALUE.W_numberTens PARAM_VALUE.W_numberTens } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_numberTens}] ${MODELPARAM_VALUE.W_numberTens}
}

proc update_MODELPARAM_VALUE.W_numberOnes { MODELPARAM_VALUE.W_numberOnes PARAM_VALUE.W_numberOnes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_numberOnes}] ${MODELPARAM_VALUE.W_numberOnes}
}

proc update_MODELPARAM_VALUE.TetrisBlockSize { MODELPARAM_VALUE.TetrisBlockSize PARAM_VALUE.TetrisBlockSize } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TetrisBlockSize}] ${MODELPARAM_VALUE.TetrisBlockSize}
}

proc update_MODELPARAM_VALUE.BeginH { MODELPARAM_VALUE.BeginH PARAM_VALUE.BeginH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BeginH}] ${MODELPARAM_VALUE.BeginH}
}

proc update_MODELPARAM_VALUE.BeginV { MODELPARAM_VALUE.BeginV PARAM_VALUE.BeginV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BeginV}] ${MODELPARAM_VALUE.BeginV}
}

proc update_MODELPARAM_VALUE.OuterH { MODELPARAM_VALUE.OuterH PARAM_VALUE.OuterH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OuterH}] ${MODELPARAM_VALUE.OuterH}
}

proc update_MODELPARAM_VALUE.InnerH { MODELPARAM_VALUE.InnerH PARAM_VALUE.InnerH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.InnerH}] ${MODELPARAM_VALUE.InnerH}
}

proc update_MODELPARAM_VALUE.OuterV { MODELPARAM_VALUE.OuterV PARAM_VALUE.OuterV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OuterV}] ${MODELPARAM_VALUE.OuterV}
}

proc update_MODELPARAM_VALUE.InnerV { MODELPARAM_VALUE.InnerV PARAM_VALUE.InnerV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.InnerV}] ${MODELPARAM_VALUE.InnerV}
}

proc update_MODELPARAM_VALUE.centerV { MODELPARAM_VALUE.centerV PARAM_VALUE.centerV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.centerV}] ${MODELPARAM_VALUE.centerV}
}

proc update_MODELPARAM_VALUE.centerH { MODELPARAM_VALUE.centerH PARAM_VALUE.centerH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.centerH}] ${MODELPARAM_VALUE.centerH}
}

