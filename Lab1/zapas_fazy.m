function K = zapas_fazy(num,den,df)
for i=1.27:0.01:2
[L,M]=cloop(num*i,den,-1);
[Kd,gamma,omega_pi,omega_fi]=margin(L,M);
disp(gamma)
disp(i)
if ceil(gamma) == df
    K=i
    break
end
end