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

proc GetCmdLine {lpcfile} {
	global Para

	if [catch {open $lpcfile r} fileid] {
		puts "Cannot open $para_file file!"
		exit -1
	}

	seek $fileid 0 start
	set default_match 0
	while {[gets $fileid line] >= 0} {
		if {[string first "\[Command\]" $line] == 0} {
			set default_match 1
			continue
		}
		if {[string first "\[" $line] == 0} {
			set default_match 0
		}
		if {$default_match == 1} {
			if [regexp {([^=]*)=(.*)} $line match parameter value] {
				if [regexp {([ |\t]*;)} $parameter match] {continue}
				if [regexp {(.*)[ |\t]*;} $value match temp] {
					set Para($parameter) $temp
				} else {
					set Para($parameter) $value
				}
			}
		}
	}
	set default_match 0
	close $fileid

	return $Para(cmd_line)
}

set platformpath [GetPlatform]
set Para(sbp_path) [file dirname [info script]]
set Para(install_dir) $env(TOOLRTF)
set Para(FPGAPath) "[file join $Para(install_dir) ispfpga bin $platformpath]"

set scuba "$Para(FPGAPath)/scuba"
set modulename "pll"
set lang "verilog"
set lpcfile "$Para(sbp_path)/$modulename.lpc"
set arch "xo2c00"
set cmd_line [GetCmdLine $lpcfile]
set fdcfile "$Para(sbp_path)/$modulename.fdc"
if {[file exists $fdcfile] == 0} {
	append scuba " " $cmd_line
} else {
	append scuba " " $cmd_line " " -fdc " " \"$fdcfile\"
}
set Para(result) [catch {eval exec "$scuba"} msg]
#puts $msg
