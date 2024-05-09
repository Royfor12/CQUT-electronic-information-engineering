	.global start	; 定义全局标号
	.mmregs

DDAT0   .set 0060H

        .data
table   .word 11,12,13,14
        .word 8,6,4,2

	.text
start:
	NOP
	;用直接寻址，在绝对地址201H开始的四个单元存入数据1，2，3，4
	LD      #4,DP			; 直接寻址，装载DP值
	ST		#1,1		; 绝对地址201H开始的四个单元存1，2，3，4
	ST		#2,2    		
	ST		#3,3			 
	ST		#4,4

	
       ;用间接寻址和RPT指令，将绝对地址205H开始的4个单元存成1234H
	STM		#205h,AR1		
	RPT		#3	; 重复执行下条语句4次
	ST      #1234H,*AR1+   		; 完成数据存储
							
	
        ;下面将201H开始的8个数读出存到2000H开始的8个单元						
	STM		#7h,AR3			; 循环计数器=7（8次循环）
	STM		#201h,AR1		; 源起始地址
	STM		#2000h,AR2		; 目的起始地址
loop:
	LD		*AR1+,T 		; 将ar1指向单元内容读入T寄存器，AR1的值+1
    ST		T,*AR2+				; 将T寄存器的值转存到AR2指向的目的地址，AR2的值+1
	BANZ    loop, *AR3-				; 用BANZ语句完成循环
	
	
	;用累加器寻址和直接寻址方式把table程序存储器单元的值传给绝对地址20AH数据存储单元
	LD 		#table,A;（你的代码）
    READA 	0AH;（你的代码）

    	
	;用MVDK指令完成把201h单元的值复制到DDAT0单元
	MVDK 	1H,*(DDAT0)			; 直接寻址和绝对地址(dmad)寻址

    
	;用MVPD和RPT指令完成把起始地址为table的8个程序存储器数据复制到起始地址为2011H的数据存储器
	STM 	#2011H,AR0				
	RPT		 #7   			
	MVPD     table,*AR0+				

xh:
	B 		xh			; 空循环
	.end

	
