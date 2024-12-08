#include <stdio.h>
#include <string.h>

int judge(char *idno) {
    if (strlen(idno) != 18) {
        printf("身份证号码长度错误。\n");
        return 0;
    }

    int birth_year = (idno[6] - '0') * 1000 + (idno[7] - '0') * 100 + (idno[8] - '0') * 10 + (idno[9] - '0');
    int birth_month = (idno[10] - '0') * 10 + (idno[11] - '0');
    int birth_day = (idno[12] - '0') * 10 + (idno[13] - '0');

    // 固定当前日期为2022年1月1日
    int current_year = 2022;
    int current_month = 1;
    int current_day = 1;

    // 计算年龄
    int age = current_year - birth_year;
    if (current_month < birth_month || (current_month == birth_month && current_day < birth_day)) {
        age--; // 如果当前日期还未到生日，年龄减一
    }

    return age >= 18 ? 1 : 0;
}

int main() {
    char idno[19];

    printf("按 Ctrl+C 终止本程序：\n");
    while (1) {
        printf("请输入身份证号码：");
        scanf("%18s", idno);

        int result = judge(idno);
        printf("%d\n", result);
    }

    return 0;
}