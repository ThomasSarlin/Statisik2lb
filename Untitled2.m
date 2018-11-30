clc, clear all

dt = 0.001; %steglängd
T = 10; % sluttid
t=[0:dt:T]; %tid
n= T/dt; % tid

W = [0; cumsum( sqrt(dt).*randn(n,1))]'; %standard brownian motion

X = 100.*exp((0.04-(0.01)/2)*t + 0.1 * W); %geometric brownian motion

plot(t,X)  