#!/usr/local/bin/wish

proc GetPlatform {} {
	global tcl_platform

	set cpu  $tcl_platform(machine)

	switch $cpu {
		intel -
		i*86* {
			set cpu ix86
		}
		x86_64 {
			if {$tcl_platform(wordSize) == 4} {
				set cpu ix86
			}
		}
	}

	switch $tcl_platform(platform) {
		windows {
			if {$cpu == "amd64"} {
				# Do not check wordSize, win32-x64 is an IL32P64 platform.
				set cpu x86_64
			}
			if {$cpu == "x86_64"} {
				return "nt64"
			} else {
				return "nt"
			}
		}
		unix {
			if {$tcl_platform(os) == "Linux"}  {
				if {$cpu == "x86_64"} {
					return "lin64"
				} else {
					return "lin"
				}
			} else  {
				return "sol"
			}
		}
	}
	return "nt"
}

set platformpath [GetPlatform]
set Para(sbp_path) [file dirname [info script]]
set Para(install_dir) $env(TOOLRTF)
set Para(FPGAPath) "[file join $Para(install_dir) ispfpga bin $platformpath]"
set Para(bin_dir) "[file join $Para(install_dir) bin $platformpath]"

set Para(ModuleName) "pll"
set Para(Module) "PLL"
set Para(libname) machxo2
set Para(arch_name) xo2c00
set Para(PartType) "LCMXO2-4000HC"

set Para(tech_syn) machxo2
set Para(tech_cae) machxo2
set Para(Package) "CSBGA132"
set Para(SpeedGrade) "4"
set Para(FMax) "100"
set fdcfile "$Para(sbp_path)/$Para(ModuleName).fdc"

#create LSE project file(*.synproj)
proc CreateSynprojFile {} {
	global Para

	if [catch {open $Para(ModuleName).synproj w} synprojFile] {
		puts "Cannot create LSE project file $Para(ModuleName).synproj."
		exit -1
	} else {
		puts $synprojFile "-a \"$Para(tech_syn)\"
-d $Para(PartType)
-t $Para(Package)
-s $Para(SpeedGrade)
-frequency 200
-optimization_goal Balanced
-bram_utilization 100
-ramstyle auto
-romstyle auto
-use_carry_chain 1
-carry_chain_length 0
-force_gsr auto
-resource_sharing 1
-propagate_constants 1
-remove_duplicate_regs 1
-mux_style Auto
-max_fanout 1000
-fsm_encoding_style Auto
-twr_paths 3
-fix_gated_clocks 1
-use_io_insertion 0
-resolve_mixed_drivers 0
-use_io_reg 1

-lpf 1
-p $Para(sbp_path)
-ver \"$Para(install_dir)/cae_library/synthesis/verilog/$Para(tech_cae).v\"
\"$Para(install_dir)/cae_library/synthesis/verilog/pmi_def.v\"
\"$Para(sbp_path)/$Para(ModuleName).v\"
-top $Para(ModuleName)
-ngo \"$Para(sbp_path)/$Para(ModuleName).ngo\"
		"
		close $synprojFile
	}
}

#LSE
CreateSynprojFile
set ldcfile "$Para(sbp_path)/$Para(ModuleName).ldc"
set synthesis "$Para(FPGAPath)/synthesis"
if {[file exists $ldcfile] == 0} {
	set Para(result) [catch {eval exec $synthesis -f \"$Para(ModuleName).synproj\" -gui} msg]
} else {
	set Para(result) [catch {eval exec $synthesis -f \"$Para(ModuleName).synproj\" -sdc \"$ldcfile\" -gui} msg]
}
#puts $msg

#ngdbuild
set ngdbuild "$Para(FPGAPath)/ngdbuild"
set Para(result) [catch {eval exec $ngdbuild -addiobuf -dt -a $Para(arch_name) $Para(ModuleName).ngo $Para(ModuleName).ngd} msg]
#puts $msg
