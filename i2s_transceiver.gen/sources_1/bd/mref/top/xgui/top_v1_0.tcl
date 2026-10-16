# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MCLK_DIVISION" -parent ${Page_0}


}

proc update_PARAM_VALUE.MCLK_DIVISION { PARAM_VALUE.MCLK_DIVISION } {
	# Procedure called to update MCLK_DIVISION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MCLK_DIVISION { PARAM_VALUE.MCLK_DIVISION } {
	# Procedure called to validate MCLK_DIVISION
	return true
}


proc update_MODELPARAM_VALUE.MCLK_DIVISION { MODELPARAM_VALUE.MCLK_DIVISION PARAM_VALUE.MCLK_DIVISION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MCLK_DIVISION}] ${MODELPARAM_VALUE.MCLK_DIVISION}
}

