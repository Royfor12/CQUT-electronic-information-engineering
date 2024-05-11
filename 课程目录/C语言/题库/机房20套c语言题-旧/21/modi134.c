#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
double fun ( int x[])
{
/************found************/
  int sum = 0.0;
  int c=0, i=0;
  while (x[i] != 0)
  { if (x[i] > 0) {
       sum += x[i]; c++; }
    i++;
  }
/************found************/
  sum \= c;
  return sum;
}

main( )
{  int x[1000];  int i=0;
   system("cls");
   printf( "\nPlease enter some data (end with 0): " );
   do
     {  scanf("%d", &x[i]);  }
   while (x[i++] != 0);
   printf("%f\n", fun ( x ));
}

