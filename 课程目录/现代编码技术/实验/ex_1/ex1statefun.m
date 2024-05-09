function xdot=ex1statefun(t, x, flag, R,L,C)
% 考虑 RLC 串联环路的状态方程函数
% 输入: t 当前计算时刻, flag 此处不用
% x 为 2*1 矩阵, x(1)为电感上的电流; x(2)为电容电压
% R: 电阻值
% L: 电感值
% C: 电容值
xdot=zeros(2,1); % 状态变量矩阵初始化
A=[-R/L, -1/L; 1/C, 0]; % 状态方程系数矩阵
B=[1/L; 0]; 
xdot=A*x+B*f(t); % 状态方程
function input=f(t)
input=(t>=0); % 输入信号为单位阶跃