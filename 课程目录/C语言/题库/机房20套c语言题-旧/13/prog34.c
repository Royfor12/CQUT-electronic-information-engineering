#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#define N 5
int fun(int a[][N],int n)
{


}

main()
{   int a[N][N],n,i,j;
    system("cls");
    printf("***** The array *****\n");
    for (i=0;i<N;i++)
    {   for (j=0;j<N;j++)
        {  a[i][j]=rand()%10;printf("%4d",a[i][j]);}
          printf("\n");
    }
    do n=rand()%10;while(n>=3);
    printf("n=%4d\n",n);
    fun(a,n);
    printf("***** THE RESULT *****\n");
    for (i=0;i<N;i++)
    { for (j=0;j<N;j++) printf("%4d",a[i][j]);
      printf("\n");
    }
   NONO( );
}

NONO( )
{/* 本函数用于打开文件，输入数据，调用函数，输出数据，关闭文件。 */
  FILE *rf, *wf ;
  int i, j, n, a[5][5] ;

  rf = fopen("bw01.in", "r") ;
  wf = fopen("bw01.out", "w") ;
  for(i = 0 ; i < 5 ; i++)
  for(j = 0 ; j < 5 ; j++)
    fscanf(rf, "%d ", &a[i][j]) ;
  fscanf(rf, "%d", &n) ;
  fun(a, n) ;
  for ( i = 0;  i < 5; i++ ) {
    for ( j = 0; j < 5; j++ ) fprintf(wf, "%4d", a[i][j] );
    fprintf(wf, "\n");
  }
  fclose(rf) ;
  fclose(wf) ;
}

