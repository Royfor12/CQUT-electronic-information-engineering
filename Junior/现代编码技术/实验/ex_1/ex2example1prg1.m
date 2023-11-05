% ex2example1prg1.m
dt=1e-5; % 仿真采样间隔
T=3*1e-3; % 仿真终止时间
t=0:dt:T;
input=2*cos(2*pi*1000*t); % 输入被调信号
carrier=5*cos(2*pi*1e4*t); % 载波
output=(2+0.5*input).*carrier; % 调制输出
% 作图: 观察输入信号, 载波, 以及调制输出
subplot(3,1,1); plot(t,input);xlabel('时间 t');ylabel('被调信号');
subplot(3,1,2); plot(t,carrier);xlabel('时间 t');ylabel('载波');
subplot(3,1,3); plot(t,output);xlabel('时间 t');ylabel('调幅输出');