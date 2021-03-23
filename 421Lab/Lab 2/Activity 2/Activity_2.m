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
xlabel('Time (sec)');
ylabel('Angular Velocity (rad/sec)');

% Isolating the data to the first curve (contained in first 0.4 seconds)
calculationData = simout.Speed.Data(simout.Speed.Time <= 0.4);
calculationTime = simout.Speed.Time(simout.Speed.Time <= 0.4);

% Finding the time constant using the 63.2% method
maxValue = max(calculationData);
timeConstantValue = maxValue*0.632;
absDiffList = abs(calculationData-timeConstantValue);
timeConstantPoint = ...
    [calculationTime(absDiffList == min(absDiffList)),...
     calculationData(absDiffList == min(absDiffList))];