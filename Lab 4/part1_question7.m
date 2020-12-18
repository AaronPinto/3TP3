% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Make constants same as in Q3
Fs = 16000;
L = Fs * 10; % 10 seconds
T = 1 / Fs;
t = [0:L - 1] * T;

% Obtained from Q5
freqs = [2000, 5000, 6000];
amps = [0.4, 0.2, 0.2];

% Generate signal
y = sum(amps .* sin(2 * pi * freqs .* t'), 2)';

% Plot first 5 msec
num_samples = 5e-3 * Fs;
plot(t(1:num_samples), y(1:num_samples));
title('Plot of Generated Signal');
xlabel('time (ms)');
grid('minor');
