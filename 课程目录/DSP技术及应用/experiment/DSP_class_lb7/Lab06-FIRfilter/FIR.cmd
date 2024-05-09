MEMORY
{
	PAGE 0:
		PROG:	o= 100h,l= 2000h 
	PAGE 1:
		DATA1:	o= 2600h, 	l= 1000h
		DATA2:	o= 2100h,  	l= 100h
		DATA3:	o= 2200h,	l= 100h
		DATA4:	o= 2300h,	l= 100h
		DATA5:	o= 2400h,	l= 100h
		DATA6:	o= 2500h,	l= 100h		
}
SECTIONS
{
	coff_fir : {}>   PROG	PAGE 0
	fir_prog : {}>	 PROG	PAGE 0
	fir_vars : {}>   DATA1	PAGE 1
    fir_coff : {}>   DATA2	PAGE 1
    fir_bfr  : {}>	 DATA3	PAGE 1	



}
