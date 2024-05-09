MEMORY
{
	PAGE 0:
		VECT : o=80h,l=80h
		PRAM : o=?,l=?	
	PAGE 1:                  
		DRAM : o=?,l=? 
}
SECTIONS
{
	/*代码段定义在程序页*/
	.data   : {}> PRAM PAGE 0
	/*未初始化段定义在数据页*/
	.vectors: {}> VECT PAGE 0	
}
