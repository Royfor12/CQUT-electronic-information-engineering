%实验要求四：MFCC计算程序
clear all; clc; close all;

[x1,fs]=audioread('C3_4_y_4.wav');                            % 读入信号C3_4_y_4.wav
wlen=200;                                                                  % 帧长
inc=80;                                                                     % 帧移
num=8;                                                                      %Mel滤波器个数
x1=x1/max(abs(x1));                                                 % 幅值归一化
time=(0:length(x1)-1)/fs;
subplot 211; plot(time,x1,'b') 
title('(a)语音信号');
ylabel('幅值'); xlabel(['时间/s' ]);  
ccc1=Nmfcc(x1,fs,num,wlen,inc);
fn=size(ccc1,1)+4;                                                  %前后各有两帧被舍弃
cn=size(ccc1,2);
z=zeros(1,cn);
ccc2=[z;z;ccc1;z;z];
frameTime=FrameTimeC(fn,wlen,inc,fs);               % 求出每帧对应的时间
subplot 212; plot(frameTime,ccc2(:,1:cn/2),'b')      % 画出每通道的MFCC系数
title('(b)MFCC系数');
ylabel('幅值'); xlabel(['时间/s' ]);  

