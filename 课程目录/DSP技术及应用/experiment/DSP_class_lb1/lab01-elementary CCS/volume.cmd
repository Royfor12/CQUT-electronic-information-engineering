MEMORY
{
	PAGE 0:
		VECT : o=80h,l=80h
		PRAM : o=100h,l=1f00h	
	PAGE 1:                  
		DRAM : o=2000h,l=1000h 
}
SECTIONS
{
	.text   : {}> PRAM PAGE 0
	.data   : {}> PRAM PAGE 0
	.cinit  : {}> PRAM PAGE 0
	.switch : {}> PRAM PAGE 0
	.const  : {}> DRAM PAGE 1
	.bss    : {}> DRAM PAGE 1
	.stack  : {}> DRAM PAGE 1
	.vectors: {}> VECT PAGE 0	
}
