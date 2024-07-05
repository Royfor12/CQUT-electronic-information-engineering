%短时平均幅度差函数
function para=STAmdf(X)
    para=zeros(size(X));
    fn=size(X,2);              % 求出帧数
    wlen=size(X,1);
    for i=1 : fn
        u=X(:,i);              % 取出一帧
        for k=1:wlen
            para(:,k)=sum(abs(u(k:end)-u(1:end-k+1)));      %求每个样本点的幅度差
        end
    end
 end