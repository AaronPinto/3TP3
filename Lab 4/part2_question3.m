% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Read in the signal from the audio file
[signal, Fs] = audioread('SecretMessage2020.wav');
L = length(signal);

% Question 5
% Take the DFT
Y = fft(signal) / L;
f = Fs / 2 * linspace(0, 1, L / 2 + 1);

% Plot the single-sided magnitude spectrum.
plot(f, 2 * abs(Y(1:L / 2 + 1)));
title('Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0, Fs / 2, 0, .04]);
grid('minor');
