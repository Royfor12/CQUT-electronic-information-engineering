#include <stdio.h>

float  fun ( int n )
{
/************found************/
   float  A=___1___ ; int i;
/************found************/
   for (i=1; i<= ___2___; i++)
     A = 1.0/(1+A);
/************found************/
   ___3___ ;
}

main( )
{  int  n ;

   printf("\nPlease enter n: ") ;
   scanf("%d", &n ) ;
   printf("A%d=%f\n", n, fun(n) ) ;
}

