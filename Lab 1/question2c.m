% clear command window and workspace variables
clc; clear; close all;

csv = readmatrix('course_grades_2020.csv'); % read entire csv

% split csv matrix into student grades and max grade vector
max_grades = csv(1,:);
marks = csv(2:end,:);

avg_student_lab = question2a(marks, max_grades, [2:5]); % cols 2:5 are labs
avg_student_mid = question2a(marks, max_grades, [6]); % col 6 is midterm
avg_student_exam = question2a(marks, max_grades, [7:12]); % cols 7:12 are exam

% calculate weighted final grade and sort in descending order
final_student_grades = avg_student_lab .* 0.3 + avg_student_mid .* 0.3 + ...
    avg_student_exam .* 0.4;
desc_final_grades = sort(final_student_grades, 'descend');

% create a figure and set its title
f = figure('units', 'normalized', 'Name', 'Question 2c');

% show a bar graph of the data, enable the grid and set the title and axis label
bar(desc_final_grades); grid on;
title("Aaron Pinto"); ylabel("Final grade");
exportgraphics(f, "question2c.png");
