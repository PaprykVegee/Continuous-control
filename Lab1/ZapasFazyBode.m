%l=[0.5];
m=[1 6 1 2];

%l2=[1];

l=[0.5]

om=0.1:0.01:10;
Gz = tf(l,m)
bode(l,m,om)
grid on
%[x1,y1] = ginput (1);
hold on
plot(x1,y1,'o')
