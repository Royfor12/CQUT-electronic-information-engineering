%短时能量计算函数
function para=STEn(x,win,inc)
    X=enframe(x,win,inc)';     % 分帧
    fn=size(X,2);              % 求出帧数
    for i=1 : fn
        u=X(:,i);              % 取出一帧
        u2=u.*u;               % 求出能量
        para(i)=sum(u2);         % 对一帧累加求和
    end
 end