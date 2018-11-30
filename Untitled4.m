clc, clear all

syms x y z
eqn1 = -0.5*x + 0.4*y + 0.4*z  == 0;
eqn2 = 0.3*x + -0.5*y + 0.2*z == 0;
eqn3 =  x + y + z == 1;

sol = solve([eqn1, eqn2, eqn3], [x, y, z]);
X = sol.x
Y = sol.y
Z = sol.z