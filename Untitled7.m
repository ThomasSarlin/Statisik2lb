clc, clear all

dt = 0.001; %steglängd
T = 10; % sluttid
t=[0:dt:T]; %tid
n= T/dt; % tid
N = 1000;% antal försök

expWin=zeros(1,N);
result=zeros(1,N);
for j = 1:N
    X = 100;
    i = 1;
    GBM = [];
    W = [0; cumsum( sqrt(dt).*randn(n,1))]'; %standard brownian motion
    while (X < 150 && i < n+1)
        X = 100.*exp((0.04-(0.01)/2)*(dt*i) + 0.1 * W(i));
        GBM(i) = X;
        i = i + 1;
    end
    expWin(j)=(GBM(i-1));
    if(i<n+1)
        result(j)=1;
    end
end

mR=mean(result);


mE=mean(expWin-100);

t2 = 1:1:length(GBM);
figure(1)
plot(t2/1000,GBM)

SEr = std(result)./sqrt(N);

Ur=mR+ 1.96*SEr;
Lr=mR-1.96*SEr;

SEe=std(result)./sqrt(N);

Ue=mE+1.96*SEe;
Le=mE-1.96*SEe;
mR
I95result = [Lr Ur]

mE
I95win = [Le Ue]
