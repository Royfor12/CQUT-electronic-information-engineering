function frameTime=FrameTimeC(frameNum,framelen,inc,fs)
% 分帧后计算每帧对应的时间
frameTime=(((1:frameNum)-1)*inc+framelen/2)/fs;

