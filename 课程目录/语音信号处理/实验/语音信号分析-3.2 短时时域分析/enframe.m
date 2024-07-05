function frameout=enframe(x,win,inc)

nx=length(x(:));            % 取数据长度
nwin=length(win);           % 取窗长
if (nwin == 1)              % 判断窗长是否为1，若为1，即表示没有设窗函数
   len = win;               % 是，帧长=win
else
   len = nwin;              % 否，帧长=窗长
end
if (nargin < 3)             % 如果只有两个参数，设帧inc=帧长
   inc = len;
end
nf = fix((nx-len+inc)/inc); % 计算帧数
frameout=zeros(nf,len);            % 初始化
indf= inc*(0:(nf-1)).';     % 设置每帧在x中的位移量位置
inds = (1:len);             % 每帧数据对应1:len
frameout(:) = x(indf(:,ones(1,len))+inds(ones(nf,1),:));   % 对数据分帧
if (nwin > 1)               % 若参数中包括窗函数，把每帧乘以窗函数
    w = win(:)';            % 把win转成行数据
    frameout = frameout .* w(ones(nf,1),:);  % 乘窗函数
end

