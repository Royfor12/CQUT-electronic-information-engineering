% APDCM解码函数
function y=adpcm_decoder(code,sign_bit)
len=length(code);
y = zeros(1,len);
ss2 = zeros(1,len); 
ss2(1) = 1; 

currentIndex =1; 
index = [-1 4]; 
startval = 1; 
endval = 127;
base = exp( log(2)/8 ); 
% 近似步长 
const = startval/base; 
numSteps = round( log(endval/const) / log(base) ); 
n = 1:numSteps; 
base = exp( log(endval/startval) / (numSteps-1) ); 
const = startval/base; 
table2 = round( const*base.^n ); 
for n = 2:len 
% 计算量化距离 
    neg = code(n) >= sign_bit; 
    if (neg) 
        temp = code(n) - sign_bit; 
    else 
        temp = code(n); 
    end 
    temp2 = (temp+.5)*ss2(n-1); 
    if (neg) 
        temp2 = -temp2; 
    end 

    y(n) = y(n-1) + temp2; 
    if (y(n) > 127)
        y(n) = 127;
    elseif (y(n) < -127) 
        y(n) = -127; 
    end 
    % 计算新的步长
    temp = temp + 1; 
    currentIndex = currentIndex + index(temp); 
    if (currentIndex < 1) 
        currentIndex = 1; 
    elseif (currentIndex > numSteps) 
        currentIndex = numSteps; 
    end 
    ss2(n) = table2(currentIndex); 
end 
y = y/128; 