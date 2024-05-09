-lrts.lib
-stack 0xc00
-heap  0x400   


MEMORY
{
  PAGE 0:
    
    P_VECT(RIX)   : origin = 07f80h  length = 00080h
    PROG0(RWX)    : origin = 00100h  length = 1f00h
  PAGE 1:
    BLOCKMEM:      origin = 02400h        len = 0600h  	
    DATA0(RWX)    : origin = 03000h  length = 01800h
    DATA1(RWX)    : origin = 04800h  length = 02000h
     
    DATASD(RWX)		:origin =07000h  length =1000h  
} 

SECTIONS
{

  .vectors: > P_VECT	PAGE 0
  .text   : > PROG0 	PAGE 0
  .cinit  : > PROG0 	PAGE 0
  .stack  : > DATASD 	PAGE 1
  .heap	  : > DATASD 	PAGE 1	
  .bss    : > DATA1 	PAGE 1
  .cio    : > DATA1 	PAGE 1
  .const  : > DATA1 	PAGE 1
  .sysmem : > DATA1 	PAGE 1 
  .mculist: > PROG0 	PAGE 0
  sine1    : align (1024)	{} 	> BLOCKMEM	PAGE 1 
  cosine1  : align (1024) 	{}	> BLOCKMEM	PAGE 1
  d_input : > DATA0 	PAGE 1
  fft_data: align (2048) 	{} > DATA0 	PAGE 1
  fft_out : > DATA0 	PAGE 1    
}
