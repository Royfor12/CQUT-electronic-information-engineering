#include<stdio.h>
#include<malloc.h>
typedef int ElemType;
typedef struct node
{
    int data;
    struct node *next;
}LNode,*linklist;//前者表示结点，后者表示一个链表

linklist createlist(int n);//建立单链表
void printlist(linklist L);//输出链表
void swaplist(linklist L);//逆置链表
int main()
{   
    linklist L;
    int n;
    printf("enter the number of elements\n");
    scanf("%d",&n);
    L = createlist(n);
    printlist(L);
    swaplist(L);
    printf("swapped\n");
    printlist(L);
    return 0;
}

linklist createlist(int n)
{
    LNode *head,*p,*q;
    int i;
    head = (LNode*)malloc(sizeof(LNode));
    head->next = NULL;//头结点
    p = head;
    for(i = 0;i<n;i++)
    {
        q = (LNode*)malloc(sizeof(LNode));
        q->data = i+1;//用1-10的自然数作为测试样例
        p->next = q;
        p = q;
    }
    p->next = NULL;
    return head;//返回链表的首地址
}
void printlist(linklist L)
{
    L = L->next;//跳过头结点
    while(L)
    {   
        printf("%d  ",L->data);
        L = L->next;//依次向后移动
    }
    printf("Finish ! \n");
}
void swaplist(linklist L)
{
    LNode *p,*q;
    p = L->next;
    L->next = NULL;
    while(p)
    {
        q = p;
        p = p->next;//后移
        q->next = L->next;
        L->next = q;
    }
}