
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Debounce_Switch, Debounce_Switch, Debounce_Switch, Debounce_Switch, Debounce_Switch, Debounce_Switch, VGA_timings, buttonCtrl, mainPattern

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART tul.com.tw:pynq-z2:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set iClk [ create_bd_port -dir I -type clk iClk ]
  set iGameRst [ create_bd_port -dir I iGameRst ]
  set iPushDown [ create_bd_port -dir I iPushDown ]
  set iPushLeft [ create_bd_port -dir I iPushLeft ]
  set iPushRight [ create_bd_port -dir I iPushRight ]
  set iPushUp [ create_bd_port -dir I iPushUp ]
  set iRst [ create_bd_port -dir I iRst ]
  set oBlue [ create_bd_port -dir O -from 3 -to 0 oBlue ]
  set oGreen [ create_bd_port -dir O -from 3 -to 0 oGreen ]
  set oHS [ create_bd_port -dir O oHS ]
  set oLEDDown [ create_bd_port -dir O oLEDDown ]
  set oLEDLeft [ create_bd_port -dir O oLEDLeft ]
  set oLEDRight [ create_bd_port -dir O oLEDRight ]
  set oLEDUp [ create_bd_port -dir O oLEDUp ]
  set oRed [ create_bd_port -dir O -from 3 -to 0 oRed ]
  set oVS [ create_bd_port -dir O oVS ]

  # Create instance: Debounce_Switch_0, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_0
  if { [catch {set Debounce_Switch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Debounce_Switch_Down, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_Down
  if { [catch {set Debounce_Switch_Down [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_Down eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Debounce_Switch_Left, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_Left
  if { [catch {set Debounce_Switch_Left [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_Left eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Debounce_Switch_Right, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_Right
  if { [catch {set Debounce_Switch_Right [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_Right eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Debounce_Switch_Rst, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_Rst
  if { [catch {set Debounce_Switch_Rst [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_Rst eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Debounce_Switch_Up, and set properties
  set block_name Debounce_Switch
  set block_cell_name Debounce_Switch_Up
  if { [catch {set Debounce_Switch_Up [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debounce_Switch_Up eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: VGA_timings_0, and set properties
  set block_name VGA_timings
  set block_cell_name VGA_timings_0
  if { [catch {set VGA_timings_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VGA_timings_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: buttonCtrl_0, and set properties
  set block_name buttonCtrl
  set block_cell_name buttonCtrl_0
  if { [catch {set buttonCtrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $buttonCtrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {312.659} \
   CONFIG.CLKOUT1_PHASE_ERROR {245.713} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {36.500} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {36.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: mainPattern_0, and set properties
  set block_name mainPattern
  set block_cell_name mainPattern_0
  if { [catch {set mainPattern_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mainPattern_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Debounce_Switch_0_o_Switch [get_bd_pins Debounce_Switch_0/o_Switch] [get_bd_pins buttonCtrl_0/iGameRst] [get_bd_pins mainPattern_0/iGameRst]
  connect_bd_net -net Debounce_Switch_4_o_Switch [get_bd_pins Debounce_Switch_Rst/o_Switch] [get_bd_pins VGA_timings_0/iRst] [get_bd_pins buttonCtrl_0/iRst] [get_bd_pins mainPattern_0/iRst]
  connect_bd_net -net Debounce_Switch_Down_o_Switch [get_bd_pins Debounce_Switch_Down/o_Switch] [get_bd_pins buttonCtrl_0/iPushDown]
  connect_bd_net -net Debounce_Switch_Left_o_Switch [get_bd_pins Debounce_Switch_Left/o_Switch] [get_bd_pins buttonCtrl_0/iPushLeft]
  connect_bd_net -net Debounce_Switch_Right_o_Switch [get_bd_pins Debounce_Switch_Right/o_Switch] [get_bd_pins buttonCtrl_0/iPushRight]
  connect_bd_net -net Debounce_Switch_Up_o_Switch [get_bd_pins Debounce_Switch_Up/o_Switch] [get_bd_pins buttonCtrl_0/iPushUp]
  connect_bd_net -net VGA_timings_0_oCountH [get_bd_pins VGA_timings_0/oCountH] [get_bd_pins mainPattern_0/iCountH]
  connect_bd_net -net VGA_timings_0_oCountV [get_bd_pins VGA_timings_0/oCountV] [get_bd_pins mainPattern_0/iCountV]
  connect_bd_net -net VGA_timings_0_oHS [get_bd_pins VGA_timings_0/oHS] [get_bd_pins mainPattern_0/iHS]
  connect_bd_net -net VGA_timings_0_oVS [get_bd_pins VGA_timings_0/oVS] [get_bd_pins mainPattern_0/iVS]
  connect_bd_net -net buttonCtrl_0_oLEDDown [get_bd_ports oLEDDown] [get_bd_pins buttonCtrl_0/oLEDDown]
  connect_bd_net -net buttonCtrl_0_oLEDLeft [get_bd_ports oLEDLeft] [get_bd_pins buttonCtrl_0/oLEDLeft]
  connect_bd_net -net buttonCtrl_0_oLEDRight [get_bd_ports oLEDRight] [get_bd_pins buttonCtrl_0/oLEDRight]
  connect_bd_net -net buttonCtrl_0_oLEDUp [get_bd_ports oLEDUp] [get_bd_pins buttonCtrl_0/oLEDUp]
  connect_bd_net -net buttonCtrl_0_oLeft [get_bd_pins buttonCtrl_0/oLeft] [get_bd_pins mainPattern_0/iLeft]
  connect_bd_net -net buttonCtrl_0_oRight [get_bd_pins buttonCtrl_0/oRight] [get_bd_pins mainPattern_0/iRight]
  connect_bd_net -net buttonCtrl_0_oShapeSize [get_bd_pins buttonCtrl_0/oShapeSize] [get_bd_pins mainPattern_0/iShapeSize]
  connect_bd_net -net buttonCtrl_0_oShapeX [get_bd_pins buttonCtrl_0/oShapeX] [get_bd_pins mainPattern_0/iShapeX]
  connect_bd_net -net buttonCtrl_0_oShapeY [get_bd_pins buttonCtrl_0/oShapeY] [get_bd_pins mainPattern_0/iShapeY]
  connect_bd_net -net buttonCtrl_0_oSpeedUp [get_bd_pins buttonCtrl_0/oSpeedUp] [get_bd_pins mainPattern_0/iSpeedUp]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports iClk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins Debounce_Switch_0/i_Clk] [get_bd_pins Debounce_Switch_Down/i_Clk] [get_bd_pins Debounce_Switch_Left/i_Clk] [get_bd_pins Debounce_Switch_Right/i_Clk] [get_bd_pins Debounce_Switch_Rst/i_Clk] [get_bd_pins Debounce_Switch_Up/i_Clk] [get_bd_pins VGA_timings_0/iClk] [get_bd_pins buttonCtrl_0/iClk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mainPattern_0/iClk]
  connect_bd_net -net i_Switch_0_1 [get_bd_ports iRst] [get_bd_pins Debounce_Switch_Rst/i_Switch]
  connect_bd_net -net i_Switch_0_2 [get_bd_ports iPushUp] [get_bd_pins Debounce_Switch_Up/i_Switch]
  connect_bd_net -net i_Switch_0_3 [get_bd_ports iPushDown] [get_bd_pins Debounce_Switch_Down/i_Switch]
  connect_bd_net -net i_Switch_0_4 [get_bd_ports iPushLeft] [get_bd_pins Debounce_Switch_Left/i_Switch]
  connect_bd_net -net i_Switch_0_5 [get_bd_ports iPushRight] [get_bd_pins Debounce_Switch_Right/i_Switch]
  connect_bd_net -net i_Switch_0_6 [get_bd_ports iGameRst] [get_bd_pins Debounce_Switch_0/i_Switch]
  connect_bd_net -net mainPattern_0_oBlue [get_bd_ports oBlue] [get_bd_pins mainPattern_0/oBlue]
  connect_bd_net -net mainPattern_0_oGreen [get_bd_ports oGreen] [get_bd_pins mainPattern_0/oGreen]
  connect_bd_net -net mainPattern_0_oHS [get_bd_ports oHS] [get_bd_pins mainPattern_0/oHS]
  connect_bd_net -net mainPattern_0_oPage [get_bd_pins buttonCtrl_0/iPage] [get_bd_pins mainPattern_0/oPage]
  connect_bd_net -net mainPattern_0_oRed [get_bd_ports oRed] [get_bd_pins mainPattern_0/oRed]
  connect_bd_net -net mainPattern_0_oVS [get_bd_ports oVS] [get_bd_pins mainPattern_0/oVS]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


