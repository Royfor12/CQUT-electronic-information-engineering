% 实验要求三：绘制Mel滤波器组的频率响应曲线
clear all; clc; close all;

% 调用melbankm函数,在0-0.5区间设计24个Mel滤波器,用三角形窗函数
bank=melbankm(24,256,8000,0,0.5,'t');
bank=full(bank);
bank=bank/max(bank(:));              % 幅值归一化

df=8000/256;                         % 计算分辨率
ff=(0:128)*df;                       % 频率坐标刻度
for k=1 : 24                         % 绘制24个Mel滤波器响应曲线
    plot(ff,bank(k,:),'k'); hold on;
end
hold off; grid;
xlabel('频率/Hz'); ylabel('相对幅值')
title('Mel滤波器组频率响应曲线')