#include <conio.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
int fun(int s)
{


}

main()   /*主函数*/
{   int n;
    system("cls");
	n=1000;
    printf("n=%d,f=%d\n",n,fun(n));
   NONO();
}

NONO (  )
{/* 本函数用于打开文件，输入数据，调用函数，输出数据，关闭文件。 */
  FILE *fp, *wf ;
  int i, n, s ;

  fp = fopen("ba06.in","r") ;
  if(fp == NULL) {
    printf("数据文件ba06.in不存在!") ;
    return ;
  }
  wf = fopen("ba06.out","w") ;
  for(i = 0 ; i < 10 ; i++) {
    fscanf(fp, "%d", &n) ;
    s = fun(n) ;
    fprintf(wf, "%d\n", s) ;
  }
  fclose(fp) ;
  fclose(wf) ;
}

