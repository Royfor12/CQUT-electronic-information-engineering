/********************************************
    程序名: 求函数f(x)=sinx+ln(1+x^2)在x0=0处的导数
    版  权: 免费
    作  者: 丁朝远
    日  期: 2024-10-23 11:04
    说  明: C语言循环程序设计
*********************************************/
#include <stdio.h>
#include <math.h>
#define error 1e-6

int main() {
	double x0, h = 0.01, f1, f2 = 0, er = 0.5, y0;
	printf("输入待求点的值x0=");
	scanf("%lf", &x0);
	y0 = sin(x0) + log(1 + x0 * x0) ;
	while (er >= error) {
		f1 = f2;
		f2 = sin(x0 + h) + log(1 + (x0 + h) * (x0 + h)) - y0;
		f2 = f2 / h;
		printf("%18.15lf\t%18.15lf\n", x0 + h, f2);
		er = fabs(f2 - f1);
		h = h / 5;
	}
	printf("\n导数数值解;%18.15lf\n", f2);
	y0 = cos(x0) + 2 * x0 / (1 + x0 * x0) ;
	printf("理论导数值:%18.15lf\n", y0 );
	printf("数值解与理论解的差异：%18.15lf", y0 - f2);
	return 0;
}
