#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#define  N  5
double fun ( int w[][N] )
{



}

main ( )
{  int a[N][N]={0,1,2,7,9,1,9,7,4,5,2,3,8,3,1,4,5,6,8,2,5,9,1,4,1};
   int i, j;
   double s ;
   system("cls");
   printf("***** The array *****\n");
   for ( i =0;  i<N; i++ )
   {  for ( j =0; j<N; j++ )
     {  printf( "%4d", a[i][j] ); }
        printf("\n");
   }
   s = fun ( a );
   printf ("***** THE  RESULT *****\n");
   printf( "The sum is :  %lf\n",s );
   NONO( );
}

NONO( )
{/* 本函数用于打开文件，输入数据，调用函数，输出数据，关闭文件。 */
  FILE *rf, *wf ;
  int i, j, a[5][5]; double s ;

  rf = fopen("b170.in", "r") ;
  wf = fopen("b170.out", "w") ;
  for(i = 0 ; i < 5 ; i++)
  for(j = 0 ; j < 5 ; j++) fscanf(rf, "%d ", &a[i][j]) ;
  s = fun(a) ;
  fprintf(wf, "%lf\n", s);
  fclose(rf) ;
  fclose(wf) ;
}

