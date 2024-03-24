% L11 = []
% M11 = []
% G11 = tf(L11,M11)
% 
% L12 = []
% M12 = []
% G12 = tf(L12,M12)
% 
% Lh1 = []
% Mh1 = []
% H1 = tf(Lh1,Mh1)
% 
% G1112 = series(G11, G12)
% 
% Gz=feedback(G1112,H1,-1)


%plot(out.t,out.e, 'g',out.t,out.y,'r')

t = (-1:0.1:75)';


unitstep = t>=0;
plot(out.e,'r')
hold on
plot(t,[unitstep])
