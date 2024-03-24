lo=[30]; %licznik obiektu
m1=[4 2];
m2=conv([1 7], [5 3]);
mo=conv(m1,m2); %mianownik 

gz=tf(lo,mo)