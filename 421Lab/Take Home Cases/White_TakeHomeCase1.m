%% Take Home Case 1
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Setting up a sample graph based on a sine function from t = 0:10
t = 0:0.01:5; % This can be any time interval
y = sin(t); % This can be any function

% Find the extrema of y and the associated time values using the min and 
% max functions. For both these lines, the first value of the vector is
% indexing the time location to the point where the y function is equal to
% its minimum/maximum, then the second value is the magnitude of that
% minimum/maximum
global_min = [t(y == min(y)), min(y)];
global_max = [t(y == max(y)), max(y)];

% Generate a figure
figure;
hold on;
% Plot the function y, and the global minimum and maximum. Use the LineSpec 
% options to change the appearance of the minimum and maximum
plot(t,y);
plot(global_min(1),global_min(2),'sb');
plot(global_max(1),global_max(2),'^r');