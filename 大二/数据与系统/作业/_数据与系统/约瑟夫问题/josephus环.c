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
                                        
   电子信息4班 姚鑫   Using GBK encoding  
   Electronic Information Class four Yao Xin                                
*/
#include<stdio.h>
#include<stdlib.h>
typedef int ElemType;
typedef struct LNode
{
    ElemType data;
    struct LNode *next;
}LNode, *linklist;

linklist creatjp(int n);//建立约瑟夫环
void runjp(linklist C,int n,int k);//开始置换

int main()
{
    int n,k;
    linklist C;
    printf("请输入n=? \n k=?\n");
    scanf("%d %d",&n,&k);
    C = creatjp(n);
    printf("the order is :\n");
    runjp(C,n,k);
    printf("按任意键结束\n");
    getch();
    return 0;
}

linklist creatjp(int n)
{
    LNode* t = NULL,*p;
    for(int i = 0;i<n;i++)
    {
        p = (LNode*)malloc(sizeof(LNode));//生成一个结点
        p->data = i + 1;
        if (t)
		{
            p->next = t->next;
			t->next = p;  
            t = t->next;
		}
		else 
        {
			p->next = p;  //头结点
            t = p->next;
		}
    }
    return t;
}
void runjp(linklist C,int n,int k)
{
    int i = 0;
	while (n > 0)
	{
		i = (i + 1) % k;
		if (i)
		{
			C = C->next;
		}
		else {
			LNode* p = C->next;
			C->next = p->next;
			printf("%d  ", p->data);
			free(p);
			n--;
		}
	}
}