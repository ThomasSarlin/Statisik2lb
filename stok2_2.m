(* ::Package:: *)

clear all
clc
T=10;
sigma=0.1;
dt=0.001;
t=0:dt:T;
N=T/dt;
n=1000;
S0=100;
r=0.04;
V=zeros(N+1,n);

for i=1:n
    Z=randn(1,N);
    W=[0,cumsum(sqrt(dt)*Z)];
    
    S(:,i) = S0*exp((r-sigma.^2/2).*t+sigma.*W);
end

plot(t,S)

result=zeros(1,n);
for j=1:n
    S(:,j);
    result(j)=S(N+1,j)-100;
    for i=1:N+1
        if(S(i,j)>150)
            result(j)=50;
            break;
        end
    end
    
end

v=result==50;


Mres = mean(result);

SEr = std (result)./sqrt(N);

ResUpper= Mres + 1.96*SEr;
ReLow = Mres - 1.96*SEr;

IntervalRes= [ReLow, Mres, ResUpper]

Mprob = mean(v);

SEp = std (v)./sqrt(N);

ProbUpper = Mprob + 1.96*SEp;
ProbLower= Mprob - 1.96*SEp;

IntervalProb = [ProbLower, Mprob, ProbUpper]




