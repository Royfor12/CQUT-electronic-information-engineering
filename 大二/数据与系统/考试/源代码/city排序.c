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
                                        
   电子信息四班 姚鑫   Using gbk encoding                             
*/
#include<stdio.h>
#define N 21

void selection_sort(int a[], int len);
void putname(int t);//输出城市
int main()
{
int a[N]={85131,12292,14312,16605,5911,152629,6344,16310,12759,60423,12232,7134,20257,12514,5386,7440,5326,15303,13271,5757,4382,};
/*char *name[N]={"阿坝州","巴中市","成都市","达州市","德阳市","甘孜州","广安市","广元市","乐山市","凉山州",
"泸州市","眉山市","绵阳市","南充市","内江市","攀枝花市","遂宁市","雅安市","宜宾市","资阳市","自贡市"};*/
int i;
selection_sort(a, N);
printf("the right sort is :");
for(i=0;i<N;i++)
{   
    putname(a[i]);
    printf("%d<",a[i]);
}
    return 0;
}

void selection_sort(int a[], int len)//选择排序
{
    int i,j,temp;
    for (i = 0 ; i < len - 1 ; i++) 
    {
        int min = i;// 记录最小值，第一个元素默认最小
        for (j = i + 1; j < len; j++)// 访问未排序的元素
        {
            if (a[j] < a[min])// 找到目前最小值
            {
                min = j;// 记录最小值
            }
        }
        if(min != i)
        {
            temp=a[min];// 交换两个变量
            a[min]=a[i];
            a[i]=temp;
        }
    }
}
void putname(int t)
{
    switch(t)
    {
        case 85131:printf("阿坝州：");break;
        case 12292:printf("巴中市：");break;
        case 14312:printf("成都市：");break;
        case 16605:printf("达州市：");break;
        case 5911:printf("德阳市：");break;
        case 152629:printf("甘孜州：");break;
        case 6344:printf("广安市：");break;
        case 16310:printf("广元市:");break;
        case 12759:printf("乐山市:");break;
        case 60423:printf("凉山州:");break;
        case 12232:printf("泸州市:");break;
        case 7134:printf("眉山市:");break;
        case 20257:printf("绵阳市:");break;
        case 12514:printf("南充市:");break;
        case 5386:printf("内江市:");break;
        case 7440:printf("攀枝花市:");break;
        case 5326:printf("遂宁市:");break;
        case 15303:printf("雅安市:");break;
        case 13271:printf("宜宾市:");break;
        case 5757:printf("资阳市:");break;
        case 4382:printf("自贡市:");break;
        default:printf("unknown");break;
    }
}
