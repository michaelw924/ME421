%% Activity 3
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we are creating a row vector v1 using the equal spacing
% command and row vector v2 through linspace. We will also create the
% column vector v3 through transposition. Then we will find matrix A
% through multiplaction of v2 and v3 and use index notation to pull
% variables x, v4, and B from matrix A.


% Create initial vectors
v1 = 2:2:8;
v2 = linspace(1,10,4);
v3 = [3 7 2].';

% Calculate A
A = v2.*v3;

% Data extractions from A
x = A(3,2);
v4 = A(2,:);
B = A(2:3,2:3);