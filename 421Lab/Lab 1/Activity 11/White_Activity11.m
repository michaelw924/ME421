%% Activity 11
% 2/12/21
% Michael White
% Section 3 / Section 3 Group B
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we use the lab equipment to generate a .csv file from
% LabView, which is reading the real-world signals from our lab equipment.
% This system is viewable in the screenshot taken below. The .csv file is 
% then taken into this MATLAB code and pulled apart into usable data. This 
% data is then plotted and labeled appropriately.

% Import table data from Activity11.csv
data = readtable('Activity11.csv');

% Setup data values from table
Amplitude = data(:,2);
Time = data(:,1);

% Convert tables to array
Amplitude = table2array(Amplitude);
Time = table2array(Time);

% Shift Time by starting value
Time = Time - Time(1);

% Plot data
figure;
hold on;
plot(Time,Amplitude);
xlabel('Time');
ylabel('Amplitude (V)');