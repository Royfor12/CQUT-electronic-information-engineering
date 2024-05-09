;HIGHPASS	.set	0            ;if you want to use ,please set the value to 1
;BANDPASS	.set	0
LOWPASS		.set	1
	.global	start,fir
	.mmregs
COFF_FIR_START: .sect  "coff_fir"
	.if LOWPASS	
	.include	"lowpass\lowpass.inc"
	.elseif BANDPASS
	.include	"bandpass\bandpass.inc"
	.else 
	.include	"highpass\highpass.inc"	
	.endif

K_FIR_BFFR		.set	32
d_data_buffer	.usect	"fir_bfr",64
FIR_DP			.usect	"fir_vars",0
d_filin			.usect	"fir_vars",1
input			.usect  "fir_vars",1
output			.usect	"fir_vars",1

d_filout 		.usect	"fir_vars",100h
stacksize .set 256
stack .usect "fir_vars",stacksize

	.asg	AR4,FIR_DATA_P
	.asg	AR6,INBUF_P
	.asg	AR7,OUTBUF_P
	.asg	AR3,OUTBUF
	.asg	AR2,INBUF
	.sect	"fir_prog"    
	nop
start:
	stm     #stack+stacksize,SP
	LD      #FIR_DP,DP	
	STM     #d_data_buffer,FIR_DATA_P
	RPTZ    A,#K_FIR_BFFR-1
	STL     A,*FIR_DATA_P+
	STM	#d_filin,INBUF_P
	STM	#d_filout,OUTBUF_P  
	STM	#input,INBUF
        STM	#output,OUTBUF
	STM	#100h,BK
fir_loop: 
	NOP    ;Add Breakpoint & porbe point
	LD	*INBUF_P,A
	STL	A,*INBUF
	CALL	fir
	STH	A,*OUTBUF_P+%
	STH	A,*OUTBUF
main_end:
	B	fir_loop   
		
fir:
        SSBX    FRCT 
	
        ;采样的最新样本存入缓冲区顶部
        ;指针指向最老样本（缓冲区底部）

fir_task: 
	
	;完成乘累加运算，求出一个y(n)值，结果在累加器A中
	 RET
	.end				
	
