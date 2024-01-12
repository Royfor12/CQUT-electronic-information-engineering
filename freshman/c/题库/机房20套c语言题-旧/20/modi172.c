#include <stdio.h>
#include <ctype.h>
#include <conio.h>
#include <stdlib.h>
void  fun (char  *s)
{
/**********found***********/
  while(*s!='@')
  {  if(*s>='A' & *s<='Z' || *s>='a' && *s<='z')
     {  if(*s=='Z')  *s='A';
        else if(*s=='z')  *s='a';
        else              *s += 1;
     }
/**********found***********/
     (*s)++;
  }
}
main()
{  char  s[80];
   system("cls");
   printf("\n  Enter a string with length < 80.  :\n\n  "); gets(s);
   printf("\n  The  string :  \n\n  ");  puts(s);
   fun ( s );
   printf ("\n\n  The  Cords :\n\n  ");  puts(s);
}

