%% Activity 2
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we are making a new script to make two variables, t and
% x, and assign them initial values. We will then use these variables to
% evaluate v and display the result using the display function. The output
% value will also be concatenated with a character vector to provide context.

% Setup initial variables
t = 0.4;
x = 2;

% Calculate output
v = (sin(2*pi*t)+x)^2+2*x+exp(t);

% Format output
t_char = num2str(t);
v_char = num2str(v);
output_char = strcat("The value at ",t_char," seconds is ",v_char);

% Display output
disp(output_char);