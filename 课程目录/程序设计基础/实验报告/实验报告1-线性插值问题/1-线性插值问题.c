#include <stdio.h>
	double interpolate(int x0, double y0, int x1, double y1, int x) {
    		return y0 + (double)(x - x0) / (x1 - x0) * (y1 - y0);
	}
	int main() {
		int temps[] = {13, 21, 26, 29, 37, 42, 45, 51, 53};
		double limits[] = {1.105, 1.080, 1.065, 1.061, 1.045, 1.042, 1.035, 1.030, 1.025};
		int n = sizeof(temps) / sizeof(temps[0]);
		int targetTemp;
		printf("请输入整数目标温度：");
		scanf("%d", &targetTemp);
		for (int i = 0; i < n - 1; i++) {
			if (targetTemp >= temps[i] && targetTemp <= temps[i + 1]) {
				double result = interpolate(temps[i], limits[i], temps[i + 1], limits[i + 1], targetTemp);
				printf("估计爆炸下限为: %.3f\n", result);
				return 0;
			}
		}
		printf("输入温度超出已知数据范围！\n");
		return -1;
	}
