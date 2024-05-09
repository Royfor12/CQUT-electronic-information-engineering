		.title		"cFFT.asm"
		.mmregs
		.global		_cFFT
		.global		_fft_out
		;请编写函数和变量名的全局申明


		.ref        sine
        .ref        cosine
		
;sine		.usect		"sine",512
;cosine		.usect		"cosine",512
fft_data    .usect      "fft_data",2048
d_input     .usect      "d_input",2048
_fft_out     .usect     "fft_out",2048

K_DATA_IDX_1			.set	2
K_DATA_IDX_2			.set	4
K_DATA_IDX_3			.set	8
K_TWID_TBL_SIZE			.set	512
K_TWID_IDX_3			.set	128
K_FLY_COUNT_3			.set	4
;K_FFT_SIZE			.set	256
;K_LOGN				.set	8

		.bss		d_twid_idx,1
		.bss		d_data_idx,1
		.bss		d_grps_cnt,1
;		.bss        input_ptr,1
;		.bss            output_ptr,1
        .bss        k_logn,1
        .bss        k_fft_size,1
		.text			
		
_cFFT:
		PSHM AR1
		PSHM AR6
		PSHM AR7
		SSBX SXM
		SSBX OVM
		SSBX FRCT
		;编写与C语言兼容的程序代码
		STLM		A,AR2
		STM         #d_input,AR3
;		STL         A,*(input_ptr)
		LD          04h,A
		STL         A,*(k_logn)
		LD          *(k_logn),ASM
		LD          #1,B
		LD          #-1,A
		STL         B,ASM,*(k_fft_size)
        MAC         *(k_fft_size),#1,A
        NOP
        RPT         *(AL)
;        RPT         #2*K_FFT_SIZE-1
        MVDD        *AR2+,*AR3+
        nop
        
        .asg        AR2,REORDERED
        .asg        AR3,ORIGINAL_INPUT
        .asg        AR7,DATA_PROC_BUF
        
		LD      #-1,B
        ADD     *(k_fft_size),B
        STLM    B,BRC
        STM         #d_input,ORIGINAL_INPUT
        STM         #fft_data,DATA_PROC_BUF
        MVMM        DATA_PROC_BUF,REORDERED
;        STM		    #K_FFT_SIZE-1,BRC
		RPTBD		bit_rev_end-1
;		STM		    #K_FFT_SIZE,AR0
        MVDM        *(k_fft_size),AR0
		MVDD		*ORIGINAL_INPUT+,*REORDERED+
		MVDD		*ORIGINAL_INPUT-,*REORDERED+
		MAR		    *ORIGINAL_INPUT+0B
		
bit_rev_end:
;FFT Code
		.asg		AR1,GROUP_COUNTER
		.asg		AR2,PX
		.asg		AR3,QX
		.asg		AR4,WR
		.asg		AR5,WI
		.asg		AR6,BUTTERFLY_COUNTER
		.asg		AR7,STAGE_COUNTER
;    stage 1
        LD      #-1,B
        ADD     *(k_fft_size),-1,B
        STLM    B,BRC
		STM		#0,BK
		LD		#-1,ASM
		STM		#fft_data,PX							
		LD		*PX,16,A
		STM		#fft_data+K_DATA_IDX_1,QX
;		STM		#K_FFT_SIZE/2-1,BRC
		RPTBD		stage1end-1
		STM		#K_DATA_IDX_1+1,AR0
		SUB		*QX,16,A,B
		ADD		*QX,16,A
		STH		A,ASM,*PX+
		ST		B,*QX+
		||LD		*PX,A
		SUB		*QX,16,A,B
		ADD		*QX,16,A
		STH		A,ASM,*PX+0%
		ST		B,*QX+0%
		||LD		*PX,A
		
stage1end:
;    stage 2
		STM		#fft_data,PX
		STM		#fft_data+K_DATA_IDX_2,QX
;		STM		#K_FFT_SIZE/4-1,BRC
        LD      #-1,B
        ADD     *(k_fft_size),-2,B
        STLM    B,BRC
		LD		*PX,16,A
		RPTBD		stage2end-1
		STM		#K_DATA_IDX_2+1,AR0
;	1st bufferfly
		SUB		*QX,16,A,B
		ADD		*QX,16,A
		STH		A,ASM,*PX+
		ST		B,*QX+
		||LD		*PX,A
		SUB		*QX,16,A,B
		ADD		*QX,16,A
		STH		A,ASM,*PX+
		STH		A,ASM,*QX+
;	2st bufferfly
		MAR		*QX+
		ADD		*PX,*QX,A
		SUB		*PX,*QX-,B
		STH		A,ASM,*PX+
		SUB		*PX,*QX,A
		ST		B,*QX
		||LD		*QX+,B
		ST		A,*PX
		||ADD		*PX+0%,A
		ST		A,*QX+0%
		||LD		*PX,A
stage2end:
;    stage 3 through stage logN
		STM		#K_TWID_TBL_SIZE,BK
		ST		#K_TWID_IDX_3,*(d_twid_idx)
		STM		#K_TWID_IDX_3,AR0
		STM		#cosine,WR
		STM		#sine,WI
        LD      *(k_logn),B
        ADD     #-3,B
        STLM    B,STAGE_COUNTER
;		STM		#K_LOGN-2-1,STAGE_COUNTER
		LD      #-1,B
        ADD     *(k_fft_size),-3,B
        STL     B,*(d_grps_cnt)
;		ST		#K_FFT_SIZE/8-1,*(d_grps_cnt)
		STM		#K_FLY_COUNT_3-1,BUTTERFLY_COUNTER
		ST		#K_DATA_IDX_3,*(d_data_idx)
stage:
		STM		#fft_data,PX
		LD		*(d_data_idx),A
		ADD		 *(PX),A
		STLM		A,QX
		MVDM		*(d_grps_cnt),GROUP_COUNTER
group:
		MVMD		BUTTERFLY_COUNTER,BRC
		NOP
		RPTB		bufferflyend-1
		LD		*WR,T
		MPY		*QX+,A
		NOP
		MACR		*WI+0%,*QX-,A
		ADD		*PX,16,A,B
		NOP
		NOP
		ST		B,*PX
		||SUB		*PX+,B
		NOP
		NOP
		ST		B,*QX
		||MPY		*QX+,A
		NOP
		NOP
		MASR		*QX,*WR+0%,A
		ADD		*PX,16,A,B
		NOP
		NOP
		ST		B,*QX+
		||SUB		*PX,B
		NOP
		NOP
		LD		*WR,T
		ST		B,*PX+
		||MPY		*QX,A
bufferflyend:
;	Update pointers for next group
		PSHM		AR0
		MVDM		*(d_data_idx),AR0
        NOP
		MAR		*PX+0
		MAR		*QX+0
		BANZD		group,*GROUP_COUNTER-
		POPM		AR0
		nop
;		MAR		*QX-
;	Update counters and indices for next stage
		LD		*(d_data_idx),A
		SUB		#1,A,B
		STLM		B,BUTTERFLY_COUNTER
		STL		A,1,*(d_data_idx)
;		NOP
		LD		*(d_grps_cnt),A
		NOP
		STL		A,ASM,*(d_grps_cnt)
		LD		*(d_twid_idx),A			
		STL		A,ASM,*(d_twid_idx)
		nop
		BANZD		stage,*STAGE_COUNTER-
		MVDM		*(d_twid_idx),AR0
		
fft_end:
		LD      #-1,B
        ADD     *(k_fft_size),B
        STLM    B,BRC
;		STM		#K_FFT_SIZE-1,BRC
		STM		#fft_data,AR2
		STM     #_fft_out,AR4
;		RSBX    FRCT
		RPTB	power_end-1
		SQUR	*AR2+,A
		SQURA	*AR2+,A
;		SFTA    A,-10
;        EXP     A
;        NOP
;        ST      T,*AR4+
		DST		A,*AR4+
;        NOP
;		LD      *AR4,16,A
;		STH     A,-1,*AR4+
		
;        MVDD    *AR2+,*AR4+
;        MAR     *AR2+

power_end:
		RSBX SXM
		RSBX OVM
		RSBX FRCT
		POPM AR7
		POPM AR6
		POPM AR1
		;编写与C语言兼容的程序代码

		RET		
		
		
				
				
														