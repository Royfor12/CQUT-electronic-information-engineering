clear all;
clc;

% 使用audioread读取音频文件
[x, fs] = audioread('C6_3_y.wav');
% 使用audioinfo读取音频文件信息
info = audioinfo('C6_3_y.wav');
numbits = info.BitsPerSample;
sign_bit=2;                                     % 两位ADPCM算法
ss=adpcm_encoder(x,sign_bit);
yy=adpcm_decoder(ss,sign_bit)';

% 计算均方误差
nq=sum((x-yy).^2)/length(x);

% 计算信号能量
sq=mean(yy.^2);

% 计算信噪比
snr=(sq/nq);

% 时间轴
t=(1:length(x))/fs;

% 绘制图形
subplot(211)
plot(t,x/max(abs(x)))
axis tight
title('(a)编码前语音')
xlabel('时间/s')
ylabel('幅度')

subplot(212)
plot(t,yy/max(abs(yy)))
axis tight
title('(b)解码后语音')
xlabel('时间/s')
ylabel('幅度')

% 计算并显示量化信噪比
snrq=10*log10(mean(snr));
disp(['Quantization SNR: ', num2str(snrq), ' dB']);