f =@(x) 3+(x.*(10-x)./10);
t = [0:0.001:10];

%plot(f(t))
max(f(t));

h=@(t) 3*t;
%%
clc
clear all
lambda1 =3;
t=0;
I1=0;
T=10;
S1=[];

while 1
    u=rand;
    x= (-1)./(lambda1.*log(u));
    t=t+x;
    if t>T
        break
    end
    I1=I1+1;
    S1(I1)=t;
end
figure(1)
stairs([0 S1 T],[0,1:I1,I1])


lambda2 = @(t) t.*(10-t)./10;
Lambda2 = @(t) t.^2/2-t.^3/30;

lmax = 2.5;
T=10;
t=0;
I2=0;
S2=[];
while 1
    u=rand;
    x=-1/lmax*log(u);
    t=t+x;
    
    if t>T break
    end
    
    u=rand;
    if u<lambda2(t)/lmax
        I2=I2+1;
        S2(I2)=t;
    end
end

figure(2)
stairs([0 S2 T], [0 1: I2 I2 ])
hold on
tgrid=0:0.01:T;
plot(tgrid,Lambda2(tgrid),'k','Linewidth',3)




 S=[S1 S2];
 
 S=sort(S);
 I = I1+I2;
 figure(3)
 
 stairs([0 S T], [0 1: I I])
 
 


