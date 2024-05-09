#include <conio.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char *fun(char tt[])
{
   int i;
   for(i=0;tt[i];i++)
/************found************/
      if(('a'<=tt[i])||(tt[i]<='z'))
/************found************/
        tt[i]+=32;
   return(tt);
}

main()
{
  int i;
  char tt[81];
  system("cls");
  printf("\nPlease enter a string:");
  gets(tt);
  printf("\nThe result string is:\n%s",fun(tt));
}
   
