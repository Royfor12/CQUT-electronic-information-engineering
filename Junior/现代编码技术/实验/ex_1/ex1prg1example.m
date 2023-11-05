% ex1prg1example.m
clear;
R=100; L=2e-3; C=1e-7; % 设置电路元件的参数
ts=2e-6; 
t_start=-1e-4;
t_end=4e-4;
t=t_start:ts:t_end; % 设置求解的离散时间点序列
i_L0=0; u_C0=0; % 系统初始状态为零
x0=[i_L0;u_C0]; % 系统状态变量初始赋值
tic
[t_out, x_out]=ode45('ex1statefun',t, x0,[],R,L,C);% 仿真计算
toc
s_t_simu=x_out(:,2); % 阶跃响应仿真结果
h_t_simu=x_out(:,1)./C; % 等价的冲激响应仿真结果
figure(1);plot(t_out, s_t_simu, 'k-');
grid on; xlabel('时间 t ');ylabel('电容电压 ');
axis([t_start,t_end, 1.1*min(s_t_simu) ,1.1*max(s_t_simu)]);
legend('单位阶跃响应仿真结果');
figure(2);plot(t_out, h_t_simu, 'k.');
axis([t_start,t_end, 1.1*min(h_t_simu) ,1.1*max(h_t_simu)]);
hold on;
%--理论结果
alfa=R/(2*L);
beta=sqrt(1/(L*C)-(R^2)/(4*L^2));
h_t=(L*C*beta)^(-1)*exp(-alfa*t).*sin(beta*t).*(t>=0);% 冲激响应
plot(t,h_t,'k'); legend('冲激响应仿真数值结果','冲激响应理论计算结果');
grid on; xlabel('时间 t ');ylabel('电容电压 ');