% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

n = -10:10;

% The given discrete time signal for each part. unitstep(n) and unitimpulse(n) 
% were used wherever u[n] and δ[n] were found, respectively.
q1a = unitstep(n) - 2 .* unitstep(n - 1) + unitstep(n - 4);
q1b = (n + 2) .* unitstep(n + 2) - 2 .* unitstep(n) - n .* unitstep(n - 4);
q1c = unitimpulse(n + 1) - unitimpulse(n) + unitstep(n + 1) - unitstep(n - 2);
q1d = exp(0.8 .* n) .* unitstep(n + 1) + unitstep(n);

% Create a figure and set its size and title
f = figure('units', 'normalized', 'outerposition', [0, 0.08, 1, 0.9], 'Name',...
    'Question 1');

% Set the figure layout to tiled 2x2
t = tiledlayout(2, 2);

% For each plot, graph the given discrete time signal, enable the grid and set
% the title and axes labels
% Top-left plot
ax1 = nexttile; 
stem(ax1, n, q1a); grid on;
title(ax1, "Q1a"); xlabel("n"); ylabel("x[n]");

% Top-right plot
ax2 = nexttile;
stem(ax2, n, q1b); grid on;
title(ax2, "Q1b"); xlabel("n"); ylabel("x[n]");

% Bot-left plot
ax3 = nexttile;
stem(ax3, n, q1c); grid on;
title(ax3, "Q1c"); xlabel("n"); ylabel("x[n]");

% Bot-right plot
ax4 = nexttile;
stem(ax4, n, q1d); grid on;
title(ax4, "Q1d"); xlabel("n"); ylabel("x[n]");

% Make all plots have the same x-axis, and set the layout title and plot spacing
linkaxes([ax1, ax2, ax3, ax4], "x");
title(t, "Aaron Pinto");
t.TileSpacing = "compact"; t.Padding = "compact";

exportgraphics(f, "question1.png");
