%% Take Home Case 5
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Run the simulation and write the results to "simout"
simout = sim('White_TakeHomeCase5_sim');

% Generate the figure and plot the results
figure;
hold on;
plot(simout.amplitude);

% Cleanup the plot by adding a title, axes labels, and adjusting y-axis
title('Take Home Case #5');
xlabel('Time');
ylabel('Input');
ylim([-1,6]);