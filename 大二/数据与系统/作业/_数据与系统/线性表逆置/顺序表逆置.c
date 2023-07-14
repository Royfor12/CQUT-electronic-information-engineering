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
                                        
   电子信息四班 姚鑫   Using GBK encoding  
   Electronic Information Class four Yao Xin                                
*/
#include<stdio.h>
#define LIST_SIZE 1024
typedef int ElemType;
typedef struct
{
    ElemType data[LIST_SIZE];
    int last;
}Sqlist;
void initlist(Sqlist *L);//初始化顺序表
void createlist(Sqlist *L,int n);//写入测试样例
void swap(Sqlist *L,int first,int last);//交换函数
void printlist(Sqlist *L);//输出元素
int main()
{
    int n = 0;
    int first = 0,last;
    Sqlist *L = NULL;
    Sqlist list;
    L = &list;
    initlist(L);//初始化
    printf("enter the number of elements\n");
    scanf("%d",&n);
    last = n-1;
    createlist(L,n);//写入测试数据
    printf("test data:");
    printlist(L);//打印测试数据
    swap(L,first,last);
    printf("swapped\n");
    printlist(L);
    return 0;
}

void initlist(Sqlist *L)
{
    L->last = 0;
}
void createlist(Sqlist *L,int n)
{
    int i;
    L->last = n;
    for(i = 0;i < n;i++)
    {
        L->data[i]=i+1;
    }
    printf("Finish ! \n");
}
void swap(Sqlist *L,int first,int last)
{   
    int temp = 0;
    for(int i = first,j = last;i < j;i++,j--)
    {
        temp = L->data[i];
        L->data[i] = L->data[j];
        L->data[j] = temp;
    }
}
void printlist(Sqlist *L)
{
    int i;
    printf("the elements are:\n");
    for(i = 0;i <L->last;i++)
        printf("%d  ",L->data[i]);
    putchar('\n');
}