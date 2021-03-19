%% Activity 2
% 3/19/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

syms Kt Kb Ra L J b ia w(t)

torque = J*diff(theta,2)+b*diff(theta);
laplace(torque)