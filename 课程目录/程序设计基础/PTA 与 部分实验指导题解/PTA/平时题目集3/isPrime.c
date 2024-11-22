编写程序，找到并输出整数1~100以内所有的素数。

请绘制解决该问题的流程图、编写并调试源代码。

流程图可以用图片的形式粘贴提交。代码直接拷贝进文本框提交。

#pragma GCC optimize(3)
#include <stdio.h>
#include <math.h>
int isPrime(int i) {
    for(int k = 2; k <= sqrt(i); k++)
    {
        if(i % k == 0)
        {
            return 0;
        }
    }
    return 1;
}

int main() {
    for(int i = 2; i <= 100; i++)
    {
        if(isPrime(i))
        {
            printf("%d ",i);
        }
    }
    return 0;
}