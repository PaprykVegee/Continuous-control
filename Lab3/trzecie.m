%cw 1.3
clc;
clear all;

k=4;
L=[k];
M=[1 2 2 1];
[Kd,fi]=margin(L,M);
grid on;
