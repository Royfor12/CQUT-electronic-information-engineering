%实验要求二：DCT系数的计算与并恢复
clear all; clc; close all;

f=50;                                               % 信号频率
fs=1000;                                        % 采样频率
N=1000;                                     % 样点总数
n=0:N-1;
xn=cos(2*pi*f*n/fs);                    % 构成余弦序列
y=dct(xn) ;                                     % 离散余弦变换
num=find(abs(y)<5);                     % 寻找余弦变换后幅值小于5的区间
y(num)=0;                                    % 对幅值小于5的区间的幅值都置为0
zn=idct(y);                                     % 离散余弦逆变换
subplot 211; plot(n,xn,'k');                % 绘制xn的图
title('(a)原始信号'); xlabel(['样点' 10 ]); ylabel('幅值');
subplot 212; plot(n,zn,'k');                % 绘制zn的图
title('(b)重建信号'); xlabel(['样点' 10 ]); ylabel('幅值');
% 计算重建率
rp=100-norm(xn-zn)/norm(xn)*100
