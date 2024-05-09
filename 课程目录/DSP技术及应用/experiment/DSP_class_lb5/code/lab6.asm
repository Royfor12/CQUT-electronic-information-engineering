

      	.title "ex6.asm" 
   	
      	.def _c_int00
      	.mmregs
      	
      	.bss	a,3
      	.bss	b,3
      	.bss	c,1
      	.bss	d,1
      	.bss	e,1
      	.bss	x,1
      	
   	  	.data      	
table:  .word 2,3,4,5,7,9,6,8,10
	 
       	.text
_c_int00:                   
************数据传递，为数组或变量（a,b,c,d,e）赋值************
           STM	#a,AR1
           RPT	?
           MVPD	?, ?
************计算乘累加，结果为43h************           
           STM   #a,  AR2       ; AR2指向a的存储单元首地址
           ??                ; AR3指向b的存储单元首地址
           RPTZ  A, #2        
           ??               ;重复执行乘累加操作，结果放入A
           STL   A, *(x)         
************计算减法：前次运算结果减c ************           
           STM    #c,  AR4
           SUB     ?, ?
           STL      A, *(x)          
************计算加法：前次运算结果加d ************           
           STM  #d,  AR5
           ADD     ?, ?
           STL      A, *(x)      
************计算乘法：前次运算结果乘e ***********           
           LD	       *(x),  ?
           MPY      *(e), A
           STL         A, *(x) 
           
stop:      B		stop
          .end

