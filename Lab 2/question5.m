% Clear command window and workspace variables
clc; clear;

[signal, Fs] = audioread('speech.wav');

L = length(signal); % number of samples in the signal
T = 1 / Fs; % sampling period in seconds

Te = 1000.0; % echo delay in msec
alpha = 1; % reduced amplitude factor

L_shift = round((Te / 1000) / T); % number of samples to shift by

IR = [1; zeros(L_shift - 1, 1); alpha]; % impulse response
signalplusecho_conv = conv(IR, signal);

signalplusecho_conv = signalplusecho_conv / max(abs(signalplusecho_conv));
audiowrite('speechwithecho_conv.wav', signalplusecho_conv, Fs);
