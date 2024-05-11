#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
int fun(int n)
{



}

main()   /*主函数*/
{   system("cls");
    printf("%d\n",fun(120));
    NONO();
}

NONO( )
{/* 请在此函数内打开文件，输入测试数据，调用 fun 函数，
    输出数据，关闭文件。 */
   FILE  *wf;
   wf = fopen("a30.out", "w") ;
   fprintf(wf,"%d\n",fun(120));
   fclose(wf) ;
 }
