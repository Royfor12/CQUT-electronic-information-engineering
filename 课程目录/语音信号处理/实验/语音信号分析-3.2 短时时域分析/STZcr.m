%短时过零率计算函数
function para=STZcr(x,win,inc)
    X=enframe(x,win,inc)';        % 分帧
    fn=size(X,2);                       % 求出帧数
    wlen=length(win);               % 求出帧长
    para=zeros(1,fn);                 % 初始化
    for i=1:fn
        z=X(:,i);                           % 取得一帧数据
        for j=1: (wlen- 1) ;            % 在一帧内寻找过零点
             if z(j)* z(j+1)< 0         % 判断是否为过零点
                 para(i)=para(i)+1;   % 是过零点，记录1次
             end
        end
    end
 end