function [enhanced_speech] = wiener_as(noisy_speech, fs, mu, eta, fr)

% 定义平滑因子，用于更新先验信息
a_dd= 0.98; % smoothing factor in priori update
% 定义帧长度，单位为毫秒
frame_dur= fr; % frame duration (20ms Hamming Window)
% 根据采样率和帧长度计算帧的样本数
L= frame_dur* fs/ 1000; % L is frame length (160 for 8k sampling rate)
% 生成汉明窗
hamming_win= hamming( L); % hamming window
% 计算汉明窗的归一化因子
U= ( hamming_win'* hamming_win)/ L; % normalization factor
% 提取前120毫秒的噪声信号
% first 120 ms is noise only
len_120ms= fs/ 1000* 120;
first_120ms= noisy_speech( 1: len_120ms);

% 使用Welch方法估计噪声的功率谱
% =============now use Welch's method to estimate power spectrum with
% Hamming window and 50% overlap
nsubframes= floor( len_120ms/ (L/ 2))- 1;  % 50% overlap
noise_ps= zeros( L, 1); %noise power spectral
n_start= 1;
for j= 1: nsubframes
    noise= first_120ms( n_start: n_start+ L- 1);
    noise= noise.* hamming_win;
    noise_fft= fft( noise, L); %noise FFT
    noise_ps= noise_ps+ ( abs( noise_fft).^ 2)/ (L* U);
    n_start= n_start+ L/ 2;
end
noise_ps= noise_ps/ nsubframes;
% 处理整个语音信号
% number of noisy speech frames
len1= L/ 2; % with 50% overlap
nframes= floor( length( noisy_speech)/ len1)- 1;
n_start= 1;

for j= 1: nframes
    % 提取当前帧语音信号并应用汉明窗
    noisy= noisy_speech( n_start: n_start+ L- 1);
    noisy= noisy.* hamming_win;
    % 计算当前帧的FFT并估计功率谱
    noisy_fft= fft( noisy, L);
    noisy_ps= ( abs( noisy_fft).^ 2)/ (L* U);
    
    % 声音活动检测（VAD）
    % ============ voice activity detection
    if (j== 1) % initialize posteri
        posteri= noisy_ps./ noise_ps; %posteriori SNR
        posteri_prime= posteri- 1;
        posteri_prime( find( posteri_prime< 0))= 0;
        priori= a_dd+ (1-a_dd)* posteri_prime; %a priori SNR
    else
        posteri= noisy_ps./ noise_ps; %posteriori SNR
        posteri_prime= posteri- 1;
        posteri_prime( find( posteri_prime< 0))= 0;
        priori= a_dd* (G_prev.^ 2).* posteri_prev+ ...
            (1-a_dd)* posteri_prime; %a priori SNR
    end
    % 计算log Sigma_k，用于VAD决策
    log_sigma_k= posteri.* priori./ (1+ priori)- log(1+ priori);
    vad_decision(j)= sum( log_sigma_k)/ L;
    % 根据VAD决策更新噪声功率谱
    if (vad_decision(j)< eta)
        % noise only frame found
        noise_ps= mu* noise_ps+ (1- mu)* noisy_ps;
        vad( n_start: n_start+ L- 1)= 0;
    else
        vad( n_start: n_start+ L- 1)= 1;
    end
    % ===end of vad===
    % 计算增益函数
    G= sqrt( priori./ (1+ priori)); % gain function
    % 增强当前帧语音
    enhanced= ifft( noisy_fft.* G, L);
    % 更新增强语音信号
    if (j== 1)
        enhanced_speech( n_start: n_start+ L/2- 1)= ...
            enhanced( 1: L/2);
    else
        enhanced_speech( n_start: n_start+ L/2- 1)= ...
            overlap+ enhanced( 1: L/2);
    end
    % 计算重叠部分，为下一次拼接做准备
    overlap= enhanced( L/ 2+ 1: L);
    n_start= n_start+ L/ 2;
    % 更新增益和后验信息
    G_prev= G;
    posteri_prev= posteri;
    
end
% 处理最后一段重叠部分
enhanced_speech( n_start: n_start+ L/2- 1)= overlap;
end