%% Activity 4
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we will setup a matrix A and use the max function to
% find the maximum value within this matrix. We will then redefine A to a
% completely different row vector and use the diff function to identify the
% differences between all the integers within this row vector A. After
% doing this, we will define a new function activity4 (outside the script)
% and call it, inputting variables defined in this script. 

% Setup initial matrix
A = [4 2;0 9];

% Find max
A_max = max(A,[],'all');

% Re-assign matrix to A
A = [1 5 6 2 85 14 6 4 23];

% Find difference of A
A_diff = diff(A);

% Setup initial functions for function activity4
x = 2;
t = 9;

% Evaluate activity4 with inputs
y = activity4(x,t); %y = 2sin(2t)-3x