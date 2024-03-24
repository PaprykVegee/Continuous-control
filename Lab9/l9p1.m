clc
close all
a_ns=2.8;
B_n=5;
a_nsn=1.5;
B_nsn=4;

figure()
plot(out.we1,out.wy1)
title('Charakterystyka statyczna członu ze strefą nieczułości')
grid on
xline(a_ns,'r:','a')
xline(-a_ns,'r:','-a')
xlabel('u')
ylabel('y')

figure()
plot(out.we2,out.wy2)
title('Charakterystyka statyczna członu z nasyceniem')
grid on
yline(B_n,'r:','B')
yline(-B_n,'r:','-B')
xlabel('u')
ylabel('y')
ylim([-6 6])

figure()
plot(out.we3,out.wy3)
title('Charakterystyka statyczna członu ze strefą nieczułości i nasyceniem')
grid on
%xlim([-5 5])
ylim([-6 6])
yline(B_nsn,'r:','B')
yline(-B_nsn,'r:','-B')
xline(a_nsn,'r:','a')
xline(-a_nsn,'r:','-a')
xlabel('u')
ylabel('y')