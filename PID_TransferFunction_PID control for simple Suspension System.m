clear all;
Kp=12;
Ti=5;
Td=1;
P=tf([Kp],[1]);
I=tf([1],[Ti,0]);
D=tf([Td,0],[1]);
PID=P+I+D;
m=10; % mass in [kg]
k=0.01; % stiffness in [N/m]
d=10; % damping ratio [N*s/m]
Plant=tf([1/m],[1, d/m, k/m]);
% closed loop transfer function
Sys=(PID*Plant)/(1+(PID*Plant));
step(Sys);