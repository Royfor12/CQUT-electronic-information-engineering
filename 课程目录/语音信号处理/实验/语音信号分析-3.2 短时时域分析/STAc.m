%短时自相关函数
function para=STAc(X)
    para=zeros(size(X));
    fn=size(X,2);                            % 求出帧数
    wlen=size(X,1);                         %求帧长
    for i=1 : fn
        u=X(:,i);                               % 取出一帧
        R=xcorr(u);                         %短时自相关计算
        para(:,i)=R(wlen,end);          %只取k为正值的自相关函数
    end
 end