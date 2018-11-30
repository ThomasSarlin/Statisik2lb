clc, clear all, format long

P = [0.5 0.3 0.2; 0.4 0.5 0.1; 0.4 0.2 0.4];
bil = [0,0,0];
Tid = zeros(1000,3);

for i = 1:1000
    bil = [0,0,0];
    bil(ceil(rand*3)) = 1;
    P365 = bil*P^365;
    Tid(i,:) = [P365];
end

ans = mean(Tid)

% 1 north carolina 2 virginia 3 south carolina