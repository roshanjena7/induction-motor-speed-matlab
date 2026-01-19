clc;
clear;
close all;

J = 0.2;
B = 0.02;
T_e = 300;
T_L = 100;

tspan = [0 5];
omega0 = 0;

f = @(t, w) (T_e - T_L - B*w)/J;

[t, w] = ode45(f, tspan, omega0);

plot(t, w, 'LineWidth', 2);
grid on;
xlabel('Time (s)');
ylabel('Speed (rad/s)');
title('ODE45 Test');
