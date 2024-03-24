%cw 1.2

k=4

L=[k];
M=[1 2 2 1];

t=linspace(0,2*pi,800);
x=cos(t);
y=sin(t);
plot(x,y);
hold;
om=-5:0.001:5;
nyquist(L,M,om);
grid on;
