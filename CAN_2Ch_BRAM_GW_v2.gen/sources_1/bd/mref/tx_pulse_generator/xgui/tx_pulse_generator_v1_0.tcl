# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "c_clkfreq" -parent ${Page_0}


}

proc update_PARAM_VALUE.c_clkfreq { PARAM_VALUE.c_clkfreq } {
	# Procedure called to update c_clkfreq when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c_clkfreq { PARAM_VALUE.c_clkfreq } {
	# Procedure called to validate c_clkfreq
	return true
}


proc update_MODELPARAM_VALUE.c_clkfreq { MODELPARAM_VALUE.c_clkfreq PARAM_VALUE.c_clkfreq } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c_clkfreq}] ${MODELPARAM_VALUE.c_clkfreq}
}

