# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Ratio" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sizeStep" -parent ${Page_0}
  ipgui::add_param $IPINST -name "step" -parent ${Page_0}


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

proc update_PARAM_VALUE.Ratio { PARAM_VALUE.Ratio } {
	# Procedure called to update Ratio when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Ratio { PARAM_VALUE.Ratio } {
	# Procedure called to validate Ratio
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

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.sizeStep { PARAM_VALUE.sizeStep } {
	# Procedure called to update sizeStep when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sizeStep { PARAM_VALUE.sizeStep } {
	# Procedure called to validate sizeStep
	return true
}

proc update_PARAM_VALUE.step { PARAM_VALUE.step } {
	# Procedure called to update step when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.step { PARAM_VALUE.step } {
	# Procedure called to validate step
	return true
}


proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.Ratio { MODELPARAM_VALUE.Ratio PARAM_VALUE.Ratio } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Ratio}] ${MODELPARAM_VALUE.Ratio}
}

proc update_MODELPARAM_VALUE.step { MODELPARAM_VALUE.step PARAM_VALUE.step } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.step}] ${MODELPARAM_VALUE.step}
}

proc update_MODELPARAM_VALUE.sizeStep { MODELPARAM_VALUE.sizeStep PARAM_VALUE.sizeStep } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sizeStep}] ${MODELPARAM_VALUE.sizeStep}
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

