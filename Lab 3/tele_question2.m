% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% Create vector of frequencies
freqs = [100, 200, 400, 800];

% Sampling frequency and interval
Fs = 8000;
Ts = 1 / Fs;

% Set time duration of plot, i.e., 10 msec
tfinalplot = 10e-3;

% Make the time vector for the plot
nplot = 0:Ts:tfinalplot;

% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound = 0:Ts:tfinal;
xnT = zeros(size(nsound, 2), 4);

% Make the plot
fig = figure('units', 'normalized', 'Name', 'Question 2');
t = tiledlayout(2, 2);

for i = 1:size(freqs, 2)
    ax = nexttile;
    frequency = freqs(i);
    
    % Sample the sinusoid
    xnT(:, i) = sin(2 * pi * frequency * nsound);
    
    % Plot 10ms of the sinusoid
    plot(ax, nplot, xnT(1:size(nplot, 2), i)'); grid on;
    title(ax, sprintf("f = %dHz", frequency));
    xlabel("nT"); ylabel("x[nT]");
end

% Save xnT as a wav sound file
s = xnT(:);
audiowrite('tele_q2sound.wav', s, Fs, 'BitsPerSample', 8);
% sound(s, Fs, 8);

% Save the graph
exportgraphics(fig, "tele_question2.png");
