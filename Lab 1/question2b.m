% Clear command window and workspace variables
clc; clear;

csv = readmatrix('course_grades_2020.csv'); % read entire csv

% split csv matrix into student grades and max grade vector
max_grades = csv(1,:);
marks = csv(2:end,:);

avg_student_lab = question2a(marks, max_grades, [2:5]); % cols 2:5 are labs
disp(avg_student_lab);

avg_course_lab = sum(avg_student_lab) / size(avg_student_lab, 1);
disp(avg_course_lab);

avg_student_exam = question2a(marks, max_grades, [7:12]); % cols 7:12 are exam
disp(avg_student_exam);

avg_course_exam = sum(avg_student_exam) / size(avg_student_exam, 1);
disp(avg_course_exam);
