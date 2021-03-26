%% Activity 3
% 3/25/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Define parameters to be used
Kt = 7.68e-3; % Nm/A 
Kb = 7.68e-3; % V/(rad/sec)
L = 0; % H 
J = 3.9e-7; % kg*m^2
bm = 8.148e-7; % Nm/(rad/sec)
Ra = 2.6; % Ohm

% Run the simulation
simout = sim('DC_Motor_Sim_Act3');

% Generate figure and plot results
figure;
hold on;
plot(simout.Speed);
xlabel('Time (sec)');
ylabel('Angular Velocity (rad/sec)');

% Isolating the data to the first curve (contained in first 0.2 seconds)
calculationData = simout.Speed.Data(simout.Speed.Time <= 0.2);
calculationTime = simout.Speed.Time(simout.Speed.Time <= 0.2);

% Finding the time constant using the 63.2% method
maxValue = max(calculationData);
timeConstantValue = maxValue*0.632;
absDiffList = abs(calculationData-timeConstantValue);
timeConstantPoint = ...
    [calculationTime(absDiffList == min(absDiffList)),...
     calculationData(absDiffList == min(absDiffList))];

% Compare this time constant to Activity 2
timeConstant_Act2 = 0.016463;
percentDiff = 100*(abs(timeConstantPoint(1)-timeConstant_Act2)/mean([timeConstant_Act2,timeConstantPoint(1)]));
disp(strcat("The percent difference in time constants between Activity 2 and Activity 3 is ",num2str(percentDiff),"%"));