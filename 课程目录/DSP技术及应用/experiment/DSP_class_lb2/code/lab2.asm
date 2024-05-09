	.global start	; 定义全局标号
    .mmregs
	.data
	.bss	x,1         ; 开设全局变量（非初始化段）
	.bss	y,1         ; 三个变量各为一个字（16位）
	.bss	z,1

;以下程序完成z=x+y
                .text
start:
                ST  #1, *(x)                       
;y=2(你的代码）
                 LD   *(x), A
                 ADD  *(y), A
                 STL   A, *(z)                                                                          
xh:	
	 B   xh                       ; 空循环, 程序不跑飞
	.end
	
