%% Activity 10
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we are solving an ODE within a simulink model, but
% calling that model again from a script and pushing the results to the
% workspace. From there, the results are taken to be graphed, just like
% what was done on Activiy 9. This activity result can also be compared to
% the result found in Activity 7, and doing so shows that these scripts are
% both successful.

% Run simulation for Activity 10 and output results to 'simout'
simout = sim('White_Activity10_sim');

% Generate figure and plot/label results
figure;
hold on;
plot(simout.time,simout.amplitude);
title('Activity 10: Amplitude (mm) vs. Time (s)');
xlabel('Time (s)');
ylabel('Amplitude (mm)');