#include<stdio.h>
#include<malloc.h>
typedef int ElemType;
typedef struct LNode
{
    ElemType data;
    struct LNode *next;
}LNode,*linklist;//前者代表结点，后者代表链表

linklist initlist(ElemType a[],int n);//建立链表
void inserlist(linklist L,int m);//插入元素
void printlist(linklist L);//输出元素
int main()
{
    int n = 0;//数组长度
    int m = 0;//插入元素
    int *pr;
    linklist C;
    printf("enter the number of elements:\n");
    scanf("%d",&n);
    pr = (int *)malloc(sizeof(int)*n);//c99已支持动态数组
    printf("enter the test data:\n");
    for(int i = 0;i<n;i++)
       { 
            scanf("%d",&pr[i]);
       }
    C = initlist(pr,n);
    free(pr);
    printlist(C);
    printf("enter insert element:\n");
    scanf("%d",&m);
    inserlist(C,m);
    printf("inserting\n");
    printlist(C);
    return 0;
}
linklist initlist(ElemType a[],int n)
{
    LNode *head,*p,*q;
    head = (LNode*)malloc(sizeof(LNode));
    head->next = NULL;//头结点赋空
    p = head;
    for(int i = 0;i <=n;i++)
    {
        q = (LNode*)malloc(sizeof(LNode));//生成一个结点
        q->data = a[i];//赋值
        p->next = q;
        p = q;//链接
    }
    p->next = NULL;
    return head;
}
void inserlist(linklist L,int m)
{
    linklist p = L;
    while(p->next)
    {
        if((m>=p->data)&&(m<=p->next->data))//寻找插入位置
        {
            LNode *s = (LNode*)malloc(sizeof(LNode));
            s->data = m;//赋值
            s->next = p->next;//链接
            p->next = s;
            break;//插入完成后无需判断后续元素，故跳出循环
        }
        else
        {
            p = p->next;
        }
    }
}
void printlist(linklist L)
{
    LNode *p = L->next;//跳过头结点
    while(p->next)
    {
        printf("%d ",p->data);
        p = p->next;
    }
    printf("Finish ! \n");
}