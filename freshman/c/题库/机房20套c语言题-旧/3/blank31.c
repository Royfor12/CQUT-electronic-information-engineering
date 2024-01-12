#include <stdio.h>
void fun(int x, int pp[], int *n)
{
  int i, j = 0 ;

  for(i = 1 ; i <= x ; i +=2 )
/**************found**************/
     if((x % i) == 0) pp[j++] = i;
/**************found**************/
  *n =j ;
}

main()
{ int  x, aa[1000], n, i ;
  printf( "\nPlease enter an integer number:\n" ) ; scanf("%d", &x) ;
/**************found**************/
  fun(x,aa,&n) ;
  for( i = 0 ; i < n ; i++ ) printf("%d ", aa[i]) ;
  printf("\n") ;
}

