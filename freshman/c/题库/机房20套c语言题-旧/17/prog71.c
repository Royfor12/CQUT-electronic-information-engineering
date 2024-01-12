#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#define M 100
void fun(int m,int *a,int *n)
{



}

main()
{   int aa[M],n,k;
    system("cls");
    fun(50,aa,&n);
    for(k=0;k<n;k++)
      if((k+1)%20==0) printf("\n");
      else printf("%4d",aa[k]);
    printf("\n");
   NONO( );
}

NONO ( )
{/* 本函数用于打开文件，输入数据，调用函数，输出数据，关闭文件。 */
  FILE *fp, *wf ;
  int i, n, j, k, aa[M], sum ;

  fp = fopen("bs05.in","r") ;
  if(fp == NULL) {
    printf("数据文件bs05.in不存在!") ;
    return ;
  }
  wf = fopen("bs05.out","w") ;
  for(i = 0 ; i < 10 ; i++) {
    fscanf(fp, "%d,", &j) ;
    fun(j, aa, &n) ;
    sum = 0 ;
    for(k = 0 ; k < n ; k++) sum+=aa[k] ;
    fprintf(wf, "%d\n", sum) ;
  }
  fclose(fp) ;
  fclose(wf) ;
}


