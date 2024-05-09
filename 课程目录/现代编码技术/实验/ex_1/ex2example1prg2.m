% ex2example1prg2.m
dt=1e-6; % 仿真采样间隔
T=2*1e-3; % 仿真的帧周期
for N=0:500 % 总共仿真的帧数
 t=N*T+(0:dt:T); % 帧中的取样时刻
 input=2*cos(2*pi*1005*t); % 输入被调信号
 carrier=5*cos(2*pi*(1e4)*t+0.1*randn); % 载波
 output=(2+0.5*input).*carrier; % 调制输出
 noise=randn(size(t)); % 噪声
 r=output+noise; % 调制信号通过加性噪声信道
 % 作图: 观察输入信号, 载波, 以及调制输出
 subplot(3,1,1); plot([0:dt:T],input);xlabel('时间 t');
 ylabel('被调信号');text(T*2/3,1.5,['当前帧数： N=',num2str(N)]);
 subplot(3,1,2); plot([0:dt:T],carrier);
 xlabel('时间 t');ylabel('载波');
 subplot(3,1,3); plot([0:dt:T],r);
 xlabel('时间 t');ylabel('调幅输出');
 set(gcf,'DoubleBuffer','on'); % 双缓冲避免作图闪烁
 drawnow;
end