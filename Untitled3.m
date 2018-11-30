clc, clear all,

dt = 0.001 %steglängd
S = 100 %startvärde för geo
st = 100 % startvärde för geo BM
T = 10 % sluttid
t=[0:dt:T]; % tid
n= T/dt; % antal tidssteg
Wt = 0 % start standard BM

ww = [0]

for i = 1: n
    Z = randn;
    Wt = Wt + Z .* sqrt(dt);
    ww = [ww Wt]; % standard brownian motion
    Y = (0.04-(0.01)/2).*dt + 0.1 .*Wt;
    st = st.*exp(Y); % geometrisk brownian motion
    S = [S st];
end
figure(1)
plot(t,S)
figure(2)
plot(t,ww)