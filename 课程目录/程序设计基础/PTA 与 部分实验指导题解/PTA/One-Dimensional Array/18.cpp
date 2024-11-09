/**********************************

一群猴子都有编号，编号是1，2，3 ...n，这群猴子（n只）按照1——n的顺序围坐一圈，
从第1开始顺序数，数到第m个，该猴子就要离开此圈；
从他前一个开始从1 逆序数 ，数到k，该猴子离开此圈；
再从这只猴子的下一只猴子从1 顺序数 ，数到m离开此圈，........
这样依次下来，直到圈中只剩下最后一只猴子，则该猴子为大王。

输入格式:
输入猴子总数n，猴子顺序数数m，猴子逆序数数k。三数之间用空格分隔。n、m、k 不超过200。

输出格式:
输出最后获胜的猴子编号。

输入样例:
在这里给出一组输入。例如：
8 3 5

输出样例:
在这里给出相应的输出。例如：
8

输入样例:
在这里给出一组输入。例如：
8 2 5

输出样例:
在这里给出相应的输出。例如：
1

***********************************/

#include <stdio.h>

int monkey_king(int n, int m, int k) {
    int monkeys[200] = {0};  //猴子数组，0表示在圈中，1表示已离开
    int count = n;  //剩余猴子数量
    int current = 0;  //当前位置
    int forward = 1;  //1表示顺序数，0表示逆序数
    
    //初始化猴子数组
    for(int i = 0; i < n; i++) {
        monkeys[i] = 0;
    }
    
    while(count > 1) {
        if(forward) {
            //顺序数m个
            int steps = m;
            int temp = current;
            while(steps > 0) {
                temp = (temp + 1) % n;
                if(monkeys[temp] == 0) {  //只数还在圈中的猴子
                    steps--;
                }
            }
            current = temp;
            monkeys[current] = 1;  //移除这只猴子
            count--;
            forward = 0;
        } else {
            //逆序数k个
            int steps = k;
            int temp = current;
            while(steps > 0) {
                temp = (temp - 1 + n) % n;
                if(monkeys[temp] == 0) {  //只数还在圈中的猴子
                    steps--;
                }
            }
            current = temp;
            monkeys[current] = 1;
            count--;
            forward = 1;
        }
    }
    
    // 找到最后剩下的猴子
    for(int i = 0; i < n; i++) {
        if(monkeys[i] == 0) {
            return i + 1;  // 因为猴子编号从1开始
        }
    }
    return 0;  // 不应该到达这里
}

int main() {
    int n, m, k;
    scanf("%d %d %d", &n, &m, &k);
    printf("%d\n", monkey_king(n, m, k));
    return 0;
}