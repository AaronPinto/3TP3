% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Question 3
% Read in the signal from the audio file
[signal, Fs] = audioread('tones2020.wav');
L = length(signal);
T = 1 / Fs;
t = [0:L - 1] * T;

% Plot the signal for t_plot msec
t_plot = 5;
msec_per_sec = 1000;
numSamples = t_plot * Fs / msec_per_sec;
plot(msec_per_sec * t(1:numSamples), signal(1:numSamples));
title('Plot of Input Signal');
xlabel('time (milliseconds)');
grid('minor');

% Question 5
% Take the DFT
Y = fft(signal) / L;
f = Fs / 2 * linspace(0, 1, L / 2 + 1);

% Plot the single-sided magnitude spectrum.
plot(f, 2 * abs(Y(1:L / 2 + 1)));
title('Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0, Fs / 2, 0, .5]);
grid('minor');
