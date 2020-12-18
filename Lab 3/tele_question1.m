% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Do a plot of a sampled sinusoid with frequency f = 100 Hz
f = 100;

% Sampling frequency and interval
Fs = 8000;
Ts = 1 / Fs;

% Set time duration of plot, i.e., 10 msec
tfinalplot = 10e-3;

% Make the time vector for the plot
nplot = 0:Ts:tfinalplot;

% Sample the sinusoid
xnT = sin(2 * pi * f * nplot);

% Make the plot
fig = figure('units', 'normalized', 'Name', 'Question 1');
stem(nplot, xnT); grid on;
ax = gca;
title(ax, "x[nT] at f = 100Hz"); xlabel("nT"); ylabel("x[nT]");

% Save the graph
exportgraphics(fig, "tele_question1.png");
