#include <stdio.h>
#define    N    80
void  fun(int  *w, int  p, int  n)
{



}
main()
{  int  a[N]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
   int  i,p,n=15;
   printf("The original data:\n");
   for(i=0; i<n; i++)printf("%3d",a[i]);
   printf("\n\nEnter  p:  ");scanf("%d",&p);
   fun(a,p,n);
   printf("\nThe data after moving:\n");
   for(i=0; i<n; i++)printf("%3d",a[i]);
   printf("\n\n");
   NONO();
}
NONO()
{/* 请在此函数内打开文件，输入测试数据，调用 fun 函数，输出数据，关闭文件。 */
  FILE *rf,*wf ; int a[N], i, j, p, n ;
  rf = fopen("bc179.in", "r") ;
  wf = fopen("bc179.out", "w") ;
  for(i = 0 ; i < 5 ; i++) {
    fscanf(rf, "%d %d", &n, &p) ;
    for(j = 0 ; j < n ; j++) fscanf(rf, "%d", &a[j]) ;
    fun(a, p, n) ;
    for(j = 0 ; j < n ; j++) fprintf(wf, "%3d", a[j]) ; fprintf(wf, "\n") ;
  }
  fclose(rf) ; fclose(wf) ;
}

