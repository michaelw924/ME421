%% Activity 6
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we are writing code to generate y, a function of x,
% where x goes from 0 to 10 in steps defined by h, which is 0.1. The
% initial value of y will also be set to 1. To assure the function is built
% correctly, the sizes of x and y will be compared (make sure they are the
% same length.

% Setup initial variables
h = 0.1;
x = 0:h:10;

% Generate y
for i = 1:length(x)
    if i > 1
        y(i) = y(i-1)+h*x(i);
    else
        y(i) = 1+h*x(i);
    end
end

if length(x) == length(y)
    disp('Activity complete...');
else
    disp('Check code, activity incomplete');
end