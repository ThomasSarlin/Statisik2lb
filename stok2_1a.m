clear all
clc
P=[0.5 0.3 0.2; 0.4 0.5 0.1; 0.4 0.2 0.4];
n=365;
N=10000;
X=zeros(N,n+1);
X(:,1)=randi(3);

for j=1:N
    
    for i=2:n+1
        X(j,i)=InverseTransform(P(X(j,i-1),:));
    end
end
stairs(X,'-o')

axis([0, n 0 4])

T=mean(X(:,n+1)==[1,2,3])