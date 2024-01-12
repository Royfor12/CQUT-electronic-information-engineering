#include <stdio.h>
/************found************/
fun(char a)
{   if(*a)
    {  fun(a+1)  ;
/************found************/
       printf("%c" *a);
    }
}

main()
{   char s[10]="abcd";
    printf("处理前字符串=%s\n处理后字符串=",s);
    fun(s);printf("\n");
}
