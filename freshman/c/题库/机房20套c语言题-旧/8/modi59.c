#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#define M 10
int a[M][M]={0};
/************found************/
fun(int **a,int m)
{  int j,k;
   for (j=0;j<m;j++)
        for (k=0;k<m;k++)
/************found************/
          a[j][k]=k*j;
}

main()
{   int i,j,n;
    system("cls");
    printf("Enter n:");scanf("%d",&n);
    fun(a,n);
    for(i=0;i<n;i++)
    {    for(j=0;j<n;j++)
           printf("%4d",a[i][j]);
         printf("\n");
    }
}
