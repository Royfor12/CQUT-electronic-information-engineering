%实验要求一：语音分帧显示
clc
clear all
close all

[x,Fs]=audioread('C3_1_y.wav');       % 读入数据文件
wlen=200; inc=100;          % 给出帧长和帧移
N=length(x);                    % 信号长度
time=(0:N-1)/Fs;                % 计算出信号的时间刻度
signal=enframe(x,wlen,inc)';     % 分帧

i=input('请输入起始帧号(i):');
tlabel=i;
subplot 411; plot((tlabel-1)*inc+1:(tlabel-1)*inc+wlen,signal(:,tlabel),'b'); axis tight% 画出时间波形 
xlim([(i-1)*inc+1 (i+2)*inc+wlen])
ylim([-0.1,0.1])
title(['(a)当前波形帧号：', num2str(i)]);
ylabel('幅值'); xlabel('帧长'); 
tlabel=i+1;
subplot 412; plot((tlabel-1)*inc+1:(tlabel-1)*inc+wlen,signal(:,tlabel),'b'); axis tight% 画出时间波形 
xlim([(i-1)*inc+1 (i+2)*inc+wlen])
ylim([-0.1,0.1])
title(['(b)当前波形帧号：', num2str(i+1)]);
ylabel('幅值'); xlabel('帧长'); 
tlabel=i+2;
subplot 413; plot((tlabel-1)*inc+1:(tlabel-1)*inc+wlen,signal(:,tlabel),'b'); axis tight% 画出时间波形 
xlim([(i-1)*inc+1 (i+2)*inc+wlen])
ylim([-0.1,0.1])
title(['(c)当前波形帧号：', num2str(i+2)]);
ylabel('幅值'); xlabel('帧长'); 
tlabel=i+3;
subplot 414; plot((tlabel-1)*inc+1:(tlabel-1)*inc+wlen,signal(:,tlabel),'b'); axis tight% 画出时间波形 
xlim([(i-1)*inc+1 (i+2)*inc+wlen])
ylim([-0.1,0.1])
title(['(d)当前波形帧号：', num2str(i+3)]);
ylabel('幅值'); xlabel('帧长'); 
