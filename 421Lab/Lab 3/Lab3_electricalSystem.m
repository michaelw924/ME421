%% Lab 3
% 3/25/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Import data table for voltage
vData = readtable('voltageData.xlsx');

% Calculate parameters related to time constant value
maxV = max(vData.V);
minV = min(vData.V);
Vpp = maxV-minV;
TauVal = 0.632*Vpp;

% Find the closest point to the calculated time constant value
absDiffList = abs(vData.ShiftedV-TauVal);
TauPoint = ...
    [vData.ShiftedTime(absDiffList == min(absDiffList)),...
     vData.ShiftedV(absDiffList == min(absDiffList))];
 
% Plot figure of shifted data with time constant point.
figure;
hold on;
plot(vData.ShiftedTime,vData.ShiftedV);
scatter(TauPoint(1),TauPoint(2));
legend('Voltage Data','Time Constant');

