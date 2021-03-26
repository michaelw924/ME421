%% Activity 4
% 3/25/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Define parameters to be used
Kt = 7.68e-3; % Nm/A 
Kb = 7.68e-3; % V/(rad/sec)
L = 0.18e-3; % H 
J = 3.9e-7; % kg*m^2
bm = 8.148e-7; % Nm/(rad/sec)
Ra = 2.6; % Ohm
Va = 4; % V

% Import data from other activities
w = 397.1749;
timeConstant_Act2 = 0.016463;
timeConstant_Act3 = 0.0177;

% Calculate beq from derived equation
beq = (1-exp(-1))*(Kt/(Ra*w));

% Calculate jeqs using time constant - beq relationship
jeq2 = timeConstant_Act2*beq;
jeq3 = timeConstant_Act3*beq;

% Display results
disp(strcat("The value of Beq is ",num2str(beq)));
disp(strcat("The value of Jeq for Activity 2 is ",num2str(jeq2)));
disp(strcat("The value of Jeq for Activity 3 is ",num2str(jeq3)));