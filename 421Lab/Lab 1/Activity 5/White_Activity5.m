%% Activity 5
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Activity Assignment Explanation:
% In this activity, we will use the plot command to plot a sin function
% with a defined time step. We will title the figure and label the axes
% accordingly. A new plot will be made on another figure for a specific
% cosine function and the line characteristics will be edited using the
% appropriate name-value pairs. Finally, a 2x1 subplot will be created and
% populated with a separate equation being plotted in each one. These
% graphs will also be individually labeled with line properties affected on
% both. Also, a legend will be created to label the actual functions.

% Setup initial variables and functions
x = 0:0.1:2;
y = sin(2*pi*x);

x1 = 0:0.1:2;
y1 = cos(2*x1+6);

x2 = 0:0.1:100;
y2 = x2.^2+6*x2-2;

x3 = 0:0.1:100;
y3 = -3*x3.^2-5*x3+2;

% Generate "Activity 5"
figure;
hold on;
plot(x,y);
title('Activity 5');
xlabel('Time (s)');
ylabel('Amplitude (mm)');

% Generate solo figure
figure;
hold on;
plot(x1,y1,'Color','r','Marker','^');
xlabel('Time (s)');
ylabel('Amplitude (mm)');

% Generate subplot figure
figure;
hold on;
sp1 = subplot(2,1,1);
plot(x2,y2,'Color','b');
xlabel('Time (s)');
ylabel('Amplitude (mm)');
legend('Model XYZ');

sp2 = subplot(2,1,2);
plot(x3,y3,'Color','g');
xlabel('Time (s)');
ylabel('Amplitude (mm)');
legend('Model ABC');