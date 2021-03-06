s=tf('s'); % define the s variable
sys = 1/(s^2+2*s+1); % define the transfer function
t = [0:0.01:20]; % define the simulation time
y1 = 0.1*impulse(sys, t); % simulate the system's response to an impulse with magnitude of 5
y2 = 0.1*step(sys, t);% simulate the system's response to a step with magnitude of 5
plot(t, y1); % plot the simulated resposne (output) with time
hold on
plot(t, y2)
xlabel('time [second]')
ylabel('Response')
title ('Simulated Response')
legend('Response to Impulse', 'Response to Step')
