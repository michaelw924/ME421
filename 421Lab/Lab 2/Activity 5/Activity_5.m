%% Activity 5
% 3/5/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% I created a simplified excel table that includes the times and averaged
% values as two, simple columns, and import it here with xlsread.
data = xlsread('SimplifiedData.xlsx');
time = data(:,1); voltage = data(:,2);

% Isolating the data to the first curve (contained in first 0.2 seconds)
calculationData = voltage(time <= 0.2);
calculationTime = time(time <= 0.2);

% Finding the time constant using the 63.2% method
maxValue = max(calculationData);
timeConstantValue = maxValue*0.632;
absDiffList = abs(calculationData-timeConstantValue);
timeConstantPoint = ...
    [calculationTime(absDiffList == min(absDiffList)),...
     calculationData(absDiffList == min(absDiffList))];
 
% Define parameters to be used
Kt = 7.68e-3;
Kb = 7.68e-3;
L = 0.18e-3;
J = 3.9e-7;
bm = 8.148e-7;
Ra = 2.6;
Va = 4;

% Import data from other activities
w = 397.1749;
timeConstant_Act2 = 0.016463;
timeConstant_Act3 = 0.0177;

% Calculate beq from derived equation
beq = (1-exp(-1))*(Kt/(Ra*w));

% Calculate jeqs using time constant - beq relationship
jeq2 = timeConstant_Act2*beq;
jeq3 = timeConstant_Act3*beq;
jeqLab = timeConstantPoint(1)*beq;

% Display results
disp(strcat("The value of Beq is ",num2str(beq)));
disp(strcat("The value of Jeq for Activity 2 is ",num2str(jeq2)));
disp(strcat("The value of Jeq for Activity 3 is ",num2str(jeq3)));
disp(strcat("The value of Jeq from the lab data is ",num2str(jeqLab)));