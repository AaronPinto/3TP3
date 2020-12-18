% clear command window, workspace variables and close all previously opened
% figures
clc; clear; close all;

img = imread('ee3tp3picture2020.png');
img_of_doubles = double(img);

%% part a
[n_elements, centers] = hist(img_of_doubles(:), 20);

% create a figure and set its title
f = figure('units', 'normalized', 'Name', 'Question 3a');

% show a bar graph of the data, enable the grid and set the title and axis label
bar(centers, n_elements); xlim([0, 255]); grid on;
title("Aaron Pinto");
ylabel("Number of pixels"); xlabel("Pixel value");
exportgraphics(f, "question3a.png");

%% part b
orig_img = uint8(img_of_doubles);
figure('units', 'normalized', 'Name', 'Question 3b');
imshow(uint8(img_of_doubles));
imwrite(orig_img, 'question3b.png');

%% part c
% https://stackoverflow.com/a/929107/6713362
% OldRange = (OldMax - OldMin)  
% NewRange = (NewMax - NewMin)  
% NewValue = (((OldValue - OldMin) * NewRange) / OldRange) + NewMin
old_min = min(img_of_doubles, [], 'all');
old_range = max(img_of_doubles, [], 'all') - old_min;
new_range = 255; % 255 - 0

alpha = new_range / old_range; beta = -old_min * alpha;
img_of_doubles = img_of_doubles .* alpha + beta;

%% part d
[n_elements, centers] = hist(img_of_doubles(:), 20);

% create a figure and set its title
f = figure('units', 'normalized', 'Name', 'Question 3d');

% show a bar graph of the data, enable the grid and set the title and axis label
bar(centers, n_elements); xlim([0, 255]); grid on;
title("Aaron Pinto");
ylabel("Number of pixels"); xlabel("Pixel value");
exportgraphics(f, "question3d.png");

%% part e
final_img = uint8(img_of_doubles);
figure('units', 'normalized', 'Name', 'Question 3e');
imshow(final_img);
imwrite(final_img, 'question3e.png');
