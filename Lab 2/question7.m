% Clear command window and workspace variables
clc; clear;

[signal, Fs] = audioread('speech.wav');

L = length(signal); % number of samples in the signal
T = 1 / Fs; % sampling period in seconds
t = [0:L - 1] * T; % time vector in seconds

Te = 100.0; % echo delay in msec
alpha = 0.9; % reduced amplitude factor
Ne = 5; % number of echoes

L_shift = round((Te / 1000) / T); % number of samples to delay by
IR = [1; zeros(Ne * L_shift - 1, 1); alpha ^ Ne]; % impulse response

for i = 1:Ne - 1 % iterate to Ne - 1 because we already did the last impulse
    IR(i * L_shift + 1) = alpha ^ i;
end

signalplusreverb = conv(IR, signal);
signalplusreverb = signalplusreverb / max(abs(signalplusreverb));
audiowrite('speechwithreverb.wav', signalplusreverb, Fs);
