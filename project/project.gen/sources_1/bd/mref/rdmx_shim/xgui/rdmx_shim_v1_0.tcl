# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_WBITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UW" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_WBITS { PARAM_VALUE.DATA_WBITS } {
	# Procedure called to update DATA_WBITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WBITS { PARAM_VALUE.DATA_WBITS } {
	# Procedure called to validate DATA_WBITS
	return true
}

proc update_PARAM_VALUE.UW { PARAM_VALUE.UW } {
	# Procedure called to update UW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UW { PARAM_VALUE.UW } {
	# Procedure called to validate UW
	return true
}


proc update_MODELPARAM_VALUE.DATA_WBITS { MODELPARAM_VALUE.DATA_WBITS PARAM_VALUE.DATA_WBITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WBITS}] ${MODELPARAM_VALUE.DATA_WBITS}
}

proc update_MODELPARAM_VALUE.UW { MODELPARAM_VALUE.UW PARAM_VALUE.UW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UW}] ${MODELPARAM_VALUE.UW}
}

