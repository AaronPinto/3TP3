% Clear command window and workspace variables
clc; clear;

[signal, Fs] = audioread('speech.wav');

L = length(signal); % number of samples in the signal
T = 1 / Fs; % sampling period in seconds
t = [0:L - 1] * T; % time vector in seconds

Te = 1000.0; % echo delay in msec
alpha = 0.05; % reduced amplitude factor

L_shift = round((Te / 1000) / T); % number of samples to shift by

signalplusecho = [signal; zeros(L_shift, 1)];
signalplusecho(L_shift + 1:end) = signalplusecho(L_shift + 1:end) + alpha .* signal;

signalplusecho = signalplusecho / max(abs(signalplusecho));
audiowrite('speechwithecho.wav', signalplusecho, Fs);
