/*
 $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$$\ 
$$  __$$\ $$  __$$\ $$ |  $$ |\__$$  __|
$$ /  \__|$$ /  $$ |$$ |  $$ |   $$ |   
$$ |      $$ |  $$ |$$ |  $$ |   $$ |   
$$ |      $$ |  $$ |$$ |  $$ |   $$ |   
$$ |  $$\ $$ $$\$$ |$$ |  $$ |   $$ |   
\$$$$$$  |\$$$$$$ / \$$$$$$  |   $$ |   
 \______/  \___$$$\  \______/    \__|   
               \___|                    
                                        
   电子信息一班 姚鑫   Using gbk encoding  
   Electronic Information Class One Yao Xin                                
*/
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define LONG 100
typedef char datatype;
typedef struct
{
    datatype data[LONG];
    int top;
}stack;
void initstack(stack *p);//初始化
stack* pushstack(stack *p, datatype a);//入栈
datatype popstack(stack *p);//出栈
int main()
{
	stack *p = NULL;
    char str[LONG];
    int i = 0,flag = 1,length,mid;
    printf("input string\n");
    fgets(str, (sizeof str / sizeof str[0]), stdin);
    length = strlen(str);
    p = (stack *)malloc(sizeof(stack));//申请一个栈
    initstack(p);
    if(length%2==0)
        mid = length/2-1;
    else
        mid = length/2;
    for(;i<mid;i++)//将字符串的前一半压入栈中
    {  printf("i=%d\n",i);
        p = pushstack(p,str[i]);    
    }

    for(i = 1;i<length/2;i++)
    {
        if(str[mid + i] == popstack(p))//字符串后一半与弹出栈的元素比较
            flag = 1;
        else
        {
        flag = 0;break;
        }
    }
    if(flag == 1)
        printf("YES !\n");
    else
        printf("NO !\n");
	return 0;
}

void initstack(stack *p)
{
    p->top = -1;
}

stack* pushstack(stack *p, datatype a)
{

    if(p->top == LONG-1)
    {
        printf("fstack overflow !\n");
        return NULL;
    }
    else
    {
        p->top++;
        p->data[p->top] = a;
       // printf("%d\n",p->top);
    }     
    return p;
}

datatype popstack(stack *p)
{
    if(p->top == -1)
    {
        printf("empty stack\n");
        return 0;
    }
    else
    {
        return (p->data[p->top--]);
    }
}