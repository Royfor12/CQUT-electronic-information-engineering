#include <stdio.h>
void fun(int *a, int *n)
{
  int i, j = 0 ;

  for(i = 1 ; i <= 1000 ; i++) {
/**************found**************/
    if(((i % 7 == 0) || (i % 11 == 0)) && i % 77 != 0) a[j++] = ___1___ ;
  }
/**************found**************/
  *n = ___2___ ;
}

main()
{  int aa[1000], n, k ;

/**************found**************/
   fun ( ___3___ ) ;
   for ( k = 0 ; k < n ; k++ )
      if((k + 1) % 10 == 0) printf("\n") ;
      else printf("%5d", aa[k]) ;
}

