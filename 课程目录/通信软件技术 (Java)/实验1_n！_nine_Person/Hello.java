package helloworld; 
import java.util.Scanner;				//引入Scanner包
public class Hello 
{
	static int factorial (int n )         //调用递归函数
	{
		int a = n - 1;
		if (n == 1)
		{
			return 1;
		}
		else {
			System.out.printf("*"+a);
			a--;
			return n * factorial(n-1);
		}
	}
public static void main (String [] args)
{
	Scanner input = new Scanner(System.in);
	System.out.printf("please input n :");
	int n = input.nextInt();
	int n1 = n,n2 = n,n3 = n,n4 = n;
	int i,j = n - 1,k = n - 1;
	
	//For循环实现n的阶乘
	System.out.printf("for循环计算得n!=" + n);
	for (i = n - 1;i > 0;i--)
	{
		n1 = n1 * i;
		System.out.printf("*" + i);
	}
	System.out.printf("=" + n1);
	System.out.printf("\n");
	
	//while循环实现n的阶乘
	System.out.printf("while循环计算n!=" + n);
	while (j > 0)
	{
		n2=n2 * j;
		System.out.printf("*" + j);
		j--;
	}
	System.out.printf("=" + n2);
	System.out.printf("\n");
	
	//do while循环实现n的阶乘
	System.out.printf("do while循环计算n!=" + n);
	do
	{
		n3 = n3 * k;
		System.out.printf("*" + k);
		k--;
	}
	while (k > 0);
	System.out.printf("=" + n3);
	System.out.printf("\n");
	
	//递归实现n的阶乘，递归函数写在前面
	System.out.printf("递归计算n!=" + n);
	n4 = factorial(n);
	System.out.printf("=" + n4);
	

    input.close(); //保持完整性
}
}


