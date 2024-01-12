#include <stdio.h>
#define SIZE 20
fun(double *s,double *w)
{  int k,i;  double sum;
   for (k=2,i=0;i<SIZE;i++)
   {  s[i]=k;  k+=2; }
/************found************/
   sun=0.0;
   for(k=0,i=0;i<SIZE;i++)
   {  sum+=s[i];
/************found************/
      if (i+1%5==0)
      {   w[k]=sum/5;sum=0;k++;}
   }
   return k;
}

main()
{  double a[SIZE],b[SIZE/5];
   int i,k;
   k=fun(a,b);
   printf("The original data:\n");
   for (i=0;i<SIZE;i++)
   {  if(i%5==0) printf("\n");
      printf("%4.0f",a[i]);
   }
   printf("\n\nThe result:\n");
   for(i=0;i<k;i++) printf("%6.2f  ",b[i]);
   printf("\n\n");
}
