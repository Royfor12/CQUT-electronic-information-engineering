% 函数voice用于改变声音的基频
% 输入参数x为原始声音信号，f为频率变换因子
% 输出参数Y为变换后的声音信号
function Y=voice(x,f) %更改采样率使基频改变 f>1降低（女变男）;f<1升高（男变女)
    % 将频率变换因子f转换为整数，以便后续处理
    f=round(f*1000);    
    % 使用resample函数对声音信号x进行重采样，以改变其基频
    d=resample(x,f,1000); %时长整合使语音文件恢复原来时长    
    % 定义窗长及相关参数，用于计算自相关函数和进行窗函数处理
    W=400;  
    Wov=W/2;    
    Kmax=W*2;   
    Wsim=Wov;    
    xdecim=8;    
    kdecim=2; 
    % 将重采样后的信号转置，以便进行列操作
    X=d';    
    % 将输入的频率变换因子转换为与采样率相关的值
    F=f/1000;   
    % 计算窗函数的起始和结束位置
    Ss =W-Wov;    
    % 计算变换后的声音信号的长度
    xpts = size(X,2);    
    ypts = round(xpts / F);    
    % 初始化变换后的声音信号
    Y = zeros(1, ypts);    
    % 定义窗函数形状，用于窗函数处理
    xfwin = (1:Wov)/(Wov+1);    
    % 计算窗函数的重叠位置和新样本的位置
    ovix = (1-Wov):0; newix = 1:(W-Wov);    
    % 为计算自相关函数添加零值填充
    simix = (1:xdecim:Wsim) - Wsim;    
    % 对原始信号进行零值填充，以便进行自相关函数的计算
    padX = [zeros(1, Wsim), X, zeros(1,Kmax+W-Wov)];   
    % 将原始信号的前Wsim个样本复制到变换后的声音信号中
    Y(1:Wsim) = X(1:Wsim); lastxpos = 0; km = 0;   
    % 对每个窗口进行处理，改变声音的基频
    for ypos = Wsim:Ss:(ypts-W)        
        % 计算当前窗口在原始信号中的位置
        xpos = round(F * ypos);        
        % 预测当前窗口在变换后的声音信号中的位置
        kmpred = km + (xpos - lastxpos);        
        lastxpos = xpos;        
        % 如果预测位置在有效范围内，则直接使用该位置
        if (kmpred <= Kmax)        
            km = kmpred;       
        else        
            % 如果预测位置超出有效范围，则计算自相关函数，寻找最佳匹配位置
            ysim = Y(ypos + simix);        
            rxy = zeros(1, Kmax+1);        
            rxx = zeros(1, Kmax+1);        
            Kmin = 0;        
            for k = Kmin:kdecim:Kmax        
                xsim = padX(Wsim + xpos + k + simix);            
                rxx(k+1) = norm(xsim);            
                rxy(k+1) = (ysim * xsim');        
            end        
            % 根据自相关函数计算归一化相关系数
            Rxy = (rxx ~= 0).*rxy./(rxx+(rxx==0));        
            % 找到最大相关系数的位置，作为当前窗口在变换后的声音信号中的位置
            km = min(find(Rxy == max(Rxy))-1);        
        end        
        % 根据找到的位置，进行窗函数处理，完成基频的改变
        xabs = xpos+km;       
        Y(ypos+ovix) = ((1-xfwin).*Y(ypos+ovix)) + (xfwin.*padX(Wsim+xabs+ovix));        
        Y(ypos+newix) = padX(Wsim+xabs+newix);    
    end
end