% Clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

% The given discrete time signals for each part
q1ax = [1, 1, 1]; q1av = [1, 1, 1, 1];
q1bx = [2, 1]; q1bv = [1, 1, 1, 1];
q1cx = [2, 1]; q1cv = [0, 1, 2];

q1a_conv = conv(q1ax, q1av);
q1b_conv = conv(q1bx, q1bv);
q1c_conv = conv(q1cx, q1cv);

% Create a figure and set its size and title
f = figure('units', 'normalized', 'Name', 'Question 1');

% Set the figure layout to tiled 3x3
t = tiledlayout(3, 3);

% For each plot, graph the given discrete time signal, enable the grid, set the
% axes ranges, and set the title and axes labels

% Top-left plot, q1ax
ax1 = nexttile;
stem(ax1, 0:length(q1ax) - 1, q1ax); grid on;
axis(ax1, [-1, 3, -1, 2])
title(ax1, "x[n]"); xlabel("n"); ylabel("x[n]");

% Top-mid plot, q1bx
ax2 = nexttile;
stem(ax2, 0:length(q1bx) - 1, q1bx); grid on;
axis(ax2, [-1, 2, -1, 3])
title(ax2, "x[n]"); xlabel("n"); ylabel("x[n]");

% Top-right plot, q1cx
ax3 = nexttile;
stem(ax3, 0:length(q1cx) - 1, q1cx); grid on;
axis(ax3, [-1, 2, -1, 3])
title(ax3, "x[n]"); xlabel("n"); ylabel("x[n]");

% Middle-left plot, q1av
ax4 = nexttile;
stem(ax4, 0:length(q1av) - 1, q1av); grid on;
axis(ax4, [-1, 4, -1, 2])
title(ax4, "v[n]"); xlabel("n"); ylabel("v[n]");

% Middle-mid plot, q1bv
ax5 = nexttile;
stem(ax5, 0:length(q1bv) - 1, q1bv); grid on;
axis(ax5, [-1, 4, -1, 2])
title(ax5, "v[n]"); xlabel("n"); ylabel("v[n]");

% Middle-right plot, q1cv
ax6 = nexttile;
stem(ax6, 0:length(q1cv) - 1, q1cv); grid on;
axis(ax6, [-1, 3, -1, 3])
title(ax6, "v[n]"); xlabel("n"); ylabel("v[n]");

% Bot-left plot, q1a_conv
ax7 = nexttile;
stem(ax7, 0:length(q1a_conv) - 1, q1a_conv); grid on;
axis(ax7, [-1, 6, -1, 4])
title(ax7, "x[n] * v[n]"); xlabel("n"); ylabel("x[n] * v[n]");

% Bot-mid plot, q1b_conv
ax8 = nexttile;
stem(ax8, 0:length(q1b_conv) - 1, q1b_conv); grid on;
axis(ax8, [-1, 5, -1, 4])
title(ax8, "x[n] * v[n]"); xlabel("n"); ylabel("x[n] * v[n]");

% Bot-right plot, q1c_conv
ax9 = nexttile;
stem(ax9, 0:length(q1c_conv) - 1, q1c_conv); grid on;
axis(ax9, [-1, 4, -1, 6])
title(ax9, "x[n] * v[n]"); xlabel("n"); ylabel("x[n] * v[n]");

% Set the layout title and plot spacing
title(t, "Aaron Pinto");
t.TileSpacing = "compact"; t.Padding = "compact";

exportgraphics(f, "question1.png");
