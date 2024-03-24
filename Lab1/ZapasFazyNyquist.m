l = [0.5];
m=[1 6 1 2];
om=0.25:0.02:5;
nyquist(l,m,om)

hold on
w = linspace(0,2*pi,800);
x = cos(w);
y = sin(w);
plot(x,y)


% [x1,y1] = ginput (1);
% [x2,y2] = ginput (1);
% gama = atand(y1/x1)
% K=-1./x2
% hold on
% plot(x1,y1,'o')
% hold on
% plot(x2,y2,'o')
