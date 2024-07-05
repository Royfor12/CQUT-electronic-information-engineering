function [Dcep,Ccep1,Ccep2]=mel_dist(s1,s2,fs,num,wlen,inc)

ccc1=mfcc_m(s1,fs,num,wlen,inc); % 求取Mel滤波器参数
ccc2=mfcc_m(s2,fs,num,wlen,inc);
fn1=size(ccc1,1);                % 取帧数
Ccep1=ccc1(:,1:num);             % 只取MFCC中前num个参数
Ccep2=ccc2(:,1:num);

for i=1 : fn1                   % 计算s1与s2之间每帧的Mel距离
    Cn1=Ccep1(i,:);
    Cn2=Ccep2(i,:);
    Dstu=0;
    for k=1 : num
        Dstu=Dstu+(Cn1(k)-Cn2(k))^2;
    end
    Dcep(i)=sqrt(Dstu);         % 每帧的Mel距离
end