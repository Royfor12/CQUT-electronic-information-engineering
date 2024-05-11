#include <stdio.h>
long fun(int g)
{  
/************found************/ 
   switch(g);
    {   case 0:return 0;
/************found************/
        case 1;case 2:return 1;
     }
     return(fun(g-1)+fun(g-2));
}

main()
{  long fib;  int n;
   printf("Input n: ");scanf("%d",&n);printf("n=%d\n",n);
   fib=fun(n);
   printf("fib=%d\n\n",fib);
}
