clc, clear all

P = [0.5 0.3 0.2; 0.4 0.5 0.1; 0.4 0.2 0.4];

syms x y z
eqn1 = [x y z]*P  == [x y z];
eqn2 = x + y + z == 1;

sol = solve([eqn1,eqn2],[x y z]);
X = sol.x
Y = sol.y
Z = sol.z