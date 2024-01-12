#include <stdio.h>
/************found************/
__________________
double fun(int m)
{   int i;double t,y=0;
    for (i=1;i<=m;i++)
    {t=1/sqrt(i);
     y=y+t;
    }
    return y;
}
main()
{ int m;double y;
  printf("Enter m: ");scanf("%d",&m);
  printf("\ny=%f\n",fun(m));
}
