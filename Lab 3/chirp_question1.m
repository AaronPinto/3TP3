% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Set starting frequency and scaling factor
f1 = 100;
u = 2000;

% Sampling frequency and interval
Fs = 32000;
Ts = 1 / Fs;

% Make the sample vector for the plot and the time vector for sampling
nplot = 0:2000;
ntime = 0:Ts:8;

% Sample the sinusoid
cnT = cos(pi * u * ntime .^ 2 + 2 * pi * f1 * ntime + 0);

% Make the plot
fig = figure('units', 'normalized', 'Name', 'Chirp Question 1');
plot(nplot, cnT(1:size(nplot, 2))); grid on;
ax = gca;
title(ax, sprintf("c[nT] at f1 = %dHz, u = %d, fs = %dkHz", f1, u, Fs));
xlabel("nT"); ylabel("c[nT]");

% Save ct as a wav sound file
audiowrite('chirp_q1sound.wav', cnT, Fs, 'BitsPerSample', 8);
% sound(cnT, Fs, 8);

% Save the graph
exportgraphics(fig, "chirp_question1.png");
