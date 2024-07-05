%实验要求一：短时傅里叶变换函数
function d=STFFT(x,win,nfft,inc)
xn=enframe(x,win,inc)';
y=fft(xn,nfft);
d=y(1:(1+nfft/2),:);