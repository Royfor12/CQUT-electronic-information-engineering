#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
long fun(int k)
{
/************found************/
    if k>0
     return (k*fun(k-1));
/************found************/
   else if (k=0)
     return 1L;
}

main()
{int k=10;
system("cls");
printf("%d!=%ld\n",k,fun(k));
}
