tau=0.083
n=31
K=0.18
M=[1 0] %%w dla członu proporcjonalnego [1] dla całkującego [1 0] a inercyjny [T 1]
t=0:0.001:2;
om=0:0.001:1000;

g=tf(K,M)
[l,m]=pade(tau,n);
[Lo,Mo]=series(K,M,l,m);

subplot(2,2,1)
step(Lo,Mo,t)
grid on

subplot(1,2,2)
bode(Lo,Mo,om)
grid on

subplot(2,2,3)
nyquist(Lo,Mo,om)
grid on
axis([-0.05 0.05 -0.05 0.05]);