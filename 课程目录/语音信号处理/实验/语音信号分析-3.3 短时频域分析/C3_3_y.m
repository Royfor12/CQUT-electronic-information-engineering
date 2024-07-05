%实验要求二：基于短时傅里叶函数的语谱图显示
clear all;
clc; 
close all;

[x,fs]=audioread('C3_3_y.wav');       % 读入数据文件
wlen=256;
nfft=wlen;
win=hanning(wlen);
inc=128;          % 给出帧长和帧移

y=STFFT(x,win,nfft,inc);        %求短时傅里叶变换

fn=size(y,2);                           %帧数

freq=(0:wlen/2)*fs/wlen;                % 计算FFT后的频率刻度

frameTime=FrameTimeC(fn,wlen,inc,fs); % 计算每帧对应的时间
imagesc(frameTime,freq,20*log10(abs(y)+eps)); % 画出Y的图像  
axis xy; ylabel('频率/Hz');xlabel('时间/s');
title('能量谱图');
colormap(jet)
