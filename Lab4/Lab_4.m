L1 = [0 0.630]
M1 = [3 8 3]
G1 = tf(L1,M1)

L2 = [0 1]
M2 = [1 0]
G2 = tf(L2,M2)

[Lo,Mo] = series(L1,M1,L2,M2)

Lo = Lo
Mo = Mo

Go = tf(Lo,Mo)
eta = 1

rlocus(Lo,Mo)
sgrid(eta, 10)

%[k, p] = rlocfind(Lo,Mo)
