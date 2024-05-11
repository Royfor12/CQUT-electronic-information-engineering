#include <stdio.h>
#include <math.h>
void  fun(int  a,int  *b,int  *c)
{  int  i,j,d,y;
   for(i=3;i<=a/2;i=i+2) {
/**************found**************/
      y=0;
      for(j=2;j<=sqrt((double)i);j++)
         if(i%j==0)  y=0;
      if(y==1) {
/**************found**************/
         d=i-a;
         for(j=2;j<=sqrt((double)d);j++)
            if(d%j==0)  y=0;
         if(y==1)
         {  *b=i;  *c=d;  }
      }
   }
}
main()
{  int  a,b,c;
   do
   {  printf("\nInput a:  ");  scanf("%d",&a); }
   while(a%2);
   fun(a,&b,&c);
   printf("\n\n%d = %d + %d\n",a,b,c);
}

