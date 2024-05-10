#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
double fun(int n)
{



}

main()   /*主函数*/
{   system("cls");
    printf("%f\n",fun(10));
    NONO();
}

NONO( )
{/* 请在此函数内打开文件，输入测试数据，调用 fun 函数，
    输出数据，关闭文件。 */
   FILE  *wf;
   wf = fopen("a29.out", "w") ;
   fprintf(wf,"%f\n",fun(10));
   fclose(wf) ;
 }
