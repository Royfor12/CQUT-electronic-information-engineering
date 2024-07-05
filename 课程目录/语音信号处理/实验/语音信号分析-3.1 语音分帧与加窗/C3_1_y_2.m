%实验要求二：不同窗函数的显示
clc
clear all
close all
N=32;nn=0:(N-1);
subplot(311);
w = ones(N,1);                                          %矩形窗实现
stem(nn,w)
xlabel('点数');ylabel('幅度');title('(a)矩形窗')
subplot(312);
 w = 0.54 - 0.46*cos(2*pi*(0:N-1)'/(N-1));     %汉明窗实现
stem(nn,w)
xlabel('点数');ylabel('幅度');title('(b)汉明窗')
subplot(313)
w = 0.5*(1 - cos(2*pi*(0:N-1)'/(N-1)));     %汉宁窗实现
stem(nn,w)
xlabel('点数');ylabel('幅度');title('(c)汉宁窗')
