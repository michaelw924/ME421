%% Activity 9
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we will be creating a Simulink model to model the
% equation y = 2*sin(4*t)+m*t. We will then push the signals to the
% workspace to be used in plotting. Specifically, this script will define
% variable m to a value of 4, run the simulink model with the defined 
% function, and plot the results.

% Define initial variables
m = 4;

% Simulate the model
simout = sim('White_Activity9_sim');

% Plot the results
figure;
hold on;
plot(simout.time,simout.amplitude);
title('Activity 9: Amplitude (mm) vs. Time (s)');
xlabel('Time (s)');
ylabel('Amplitude (mm)');

% Note: this lab is having us output the time from the "clock" in the
% simulink environment to graph, but this is unnecessary since "tout" is an output
% from sim inherently