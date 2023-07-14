[ActiveSupport MAP]
Device = LCMXO2-4000HC;
Package = CSBGA132;
Performance = 4;
LUTS_avail = 4320;
LUTS_used = 138;
FF_avail = 4425;
FF_used = 86;
INPUT_LVCMOS33 = 5;
OUTPUT_LVCMOS33 = 3;
IO_avail = 105;
IO_used = 8;
EBR_avail = 10;
EBR_used = 1;
; Begin EBR Section
Instance_Name = u4/u1/rom_0_0_0;
Type = DP8KC;
Width_A = 8;
Depth_A = 256;
REGMODE_A = OUTREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
ASYNC_RESET_RELEASE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = ENABLED;
MEM_INIT_FILE = sin.mem;
MEM_LPC_FILE = rom.lpc;
; End EBR Section
