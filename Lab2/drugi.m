clear all

n=30;
K11=1;
K22=2;
T1=1;
T2=0.1;
T3=0.3;
Tau1=0.54;
Tau2=1.37;
Tau3=2.77;
a=[1 0];
b=[1 T3];

l1=K11;
m1=conv(a,b);
l2=K22;
[l1o,m1o]=pade(Tau1,n);
[l2o,m2o]=pade(Tau2,n);
[l3o,m3o]=pade(Tau3,n);

%Dla k11
[lc1,mc1]=series(l1,m1,l1o,m1o);
[lc2,mc2]=series(l1,m1,l2o,m2o);
[lc3,mc3]=series(l1,m1,l3o,m3o);
G1=tf(lc1,mc1);
G2=tf(lc2,mc2);
G3=tf(lc3,mc3);
Gm=tf(1,1);
g1=feedback(G1,Gm,-1);
g2=feedback(G2,Gm,-1);
g3=feedback(G3,Gm,-1);
% Dla k22
[lc11,mc11]=series(l2,m1,l1o,m1o);
[lc22,mc22]=series(l2,m1,l2o,m2o);
[lc33,mc33]=series(l2,m1,l3o,m3o);
G11=tf(lc11,mc11);
G22=tf(lc22,mc22);
G33=tf(lc33,mc33);

g11=feedback(G11,Gm,-1)
g22=feedback(G22,Gm,-1)
g33=feedback(G33,Gm,-1)


subplot(1,2,1);
nyquist(lc22,mc22);
hold on
plot(-1,0,'ro') 
legend('charakterystyka','Punkt (-1,0)')
hold off
subplot(1,2,2);
step(g22,[0:0.001:1]);
