%% Activity 2
% 3/5/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Define parameters to be used
Kt = 7.68e-3;
Kb = 7.68e-3;
L = 0.18e-3;
J = 3.9e-7;
bm = 8.148e-7;
Ra = 2.6;

% Run the simulation
simout = sim('Activity_2_sim');

% Generate figure and plot results
figure;
hold on;
plot(simout.Speed);