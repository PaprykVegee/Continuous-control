clc
close all
a=1.4;


figure()
plot(out.we4,out.wy4)
grid on
title('Charakterystyka statyczna członu z rysunku 3a')
xline(-a,'r:','-a')
xline(a,'r:','a')
xlabel('u')
ylabel('y')
ylim([-10 10])



figure()
plot(out.we5,out.wy5)
grid on
title('Charakterystyka statyczna członu z rysunku 3b')
xline(-a,'r:','-a')
xline(a,'r:','a')
xlabel('u')
ylabel('y')
%ylim([-5 5])
%xlim([-5 5])

figure()
plot(out.we6,out.wy6)
title('Charakterystyka statyczna dla członów z Rysunku 4 połączonych szeregowo')
grid on
xlabel('u')
ylabel('y')
ylim([-10 10])
xlim([-10 10])