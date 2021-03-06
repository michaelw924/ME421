%% Take Home Case 4
% 2/12/21
% Michael White
% Section 3 / Online
close all;
clear all;
clc;

% Generate the i vector
i = 1:1000;
% Sum the i vector multiplied by its shifted, flipped value
s = sum(i.*(fliplr(i)-1));