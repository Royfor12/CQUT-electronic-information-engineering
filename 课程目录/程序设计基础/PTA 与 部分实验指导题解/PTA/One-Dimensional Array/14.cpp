/**********************************

学生们都非常兴奋——他们终于可以去秋游了！
老师说，单独去有点危险，所以让我们成对旅行吧。
配对规则如下：
排队的第一个人和最后一个人配对，第二个人和倒数第二个人配对，
依此类推，形成一对一的配对。
现在，让我们迅速组织起来！老师一说完，学生们迅速配对，准备出发！

输入格式：
第一行是一个整数 n，表示学生的数量。
(2 <= n <= 50，且 n 为偶数)。 
第二行包含 n 个整数，表示学生的编号，数字之间用空格隔开。

输出格式：
输出 n/2 行，每行包含两个整数，表示一对配对的学生编号，数字之间用空格隔开。

示例输入：
6
5 6 4 12 3 2

示例输出：
5 2
6 3
4 12

***********************************/

#include <stdio.h>

int main(void) {
    int n;
    scanf("%d", &n);

    int arr[n];
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    for (int i = 0; i < n / 2; i++) {
        printf("%d %d\n", arr[i], arr[n - 1 - i]);
    }

return 0;
}