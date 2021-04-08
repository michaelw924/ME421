%% Lab 3
% 3/25/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Import data table for voltage (cut down to one period)
vData = readtable('voltageData.xlsx');

% Calculate experimental time constant value
R = 4.7e3; %ohm
C = 10e-9; %F
TheoTau = R*C;

% Calculate parameters related to time constant value
maxV = max(vData.ShiftedV);
ExpTau = 0.632*maxV;

% Find the closest point to the calculated time constant value
absDiffList = abs(vData.ShiftedV-ExpTau);
ExpTau = ...
    [vData.ShiftedTime(absDiffList == min(absDiffList)),...
     vData.ShiftedV(absDiffList == min(absDiffList))];
 
% Plot figure of shifted data with time constant point.
figure;
hold on;
plot(vData.ShiftedTime,vData.ShiftedV);
scatter(ExpTau(1),ExpTau(2),'*r');
plot([TheoTau,TheoTau],[0,120]);

% Cleanup graph and add legend, title, and labels
title('Voltage vs. Time (s)');
legend({'Voltage Data','Experimental TC','Theoretical TC'},'Location','southeast');
xlabel('Time (s)');
ylabel('Voltage');
ylim([0,120]);
xlim([0,max(vData.ShiftedTime)]);

% Display results to command window
disp('Theoretical TC =');disp(TheoTau);
disp('Experimental TC =');disp(ExpTau(1));