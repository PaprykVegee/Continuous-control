L1 = [0 0.630]
M1 = [3 8 3]
G1 = tf(L1,M1)

L2 = [0 0.0349]
M2 = [1 0]
G2 = tf(L2,M2)

[Lz,Mz] = feedback(L1,M1,L2,M2,-1)

Lz = Lz
Mz = Mz

Gz = tf(Lz,Mz)
pzmap(Gz)

%step(Gz)

% %%L1 = [0 0.8300]
% M1 = [2 6  7]
% 
% L2 = [0 1]
% M2 = [1 0]
% 
% eta = 0.4300
% 
% [Lo,Mo] = series(L1,M1,L2,M2)
% 
% Lo = Lo
% Mo = Mo
% 
% rlocus(Lo,Mo)
% sgrid(eta, 10)
%[k, p] = rlocfind(Lo,Mo)