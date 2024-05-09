#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
int fun(int *x,int y)
{
    int t;
/************found************/
    t=x;x=y;
/************found************/
    return(y);
}

main()
{
    int a=3,b=8;
    system("cls");
    printf("%d  %d\n",a,b);
    b=fun(&a,b);
    printf("%d   %d\n",a,b);
}

