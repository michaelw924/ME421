%% Activity 7
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we will use ode45 to solve a simple, first order
% differential equation along t, which ranges from 0 to 5. The function is
% also given an initial value of x0 = 2.

% Setup initial variables
t = [0 5];
x0 = 2;

% Solve the ODE
[t,x] = ode45(@(t,x) (10/5)*sin(2*t)-(15/5)*x,t,x0);

% Plot and label results
figure;
hold on;
plot(t,x);
title('Activity 7: Amplitude (mm) vs. Time (s)');
xlabel('Time (s)');
ylabel('Amplitude (mm)');