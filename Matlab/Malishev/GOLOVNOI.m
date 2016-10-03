T1 = 16;  T2 = 5; 
A = 1;              %задаём костанты известные

k = 10; l = 5; M=16;

t = 0.0 : 1.0 : 100.0; %ось Х


yk = A * ((exp(-(t - k)/T1))-(exp(-(t - k)/T2)));
yl = A * ((exp(-(t - l)/T1))-(exp(-(t - l)/T2)));
ykl = A * ((exp(-(t - k - l)/T1))-(exp(-(t - k - l)/T2)));
Dkl = f - yk - yl + ykl;  

f = func11(A,T1,T2,t);%функция вариант 7
plot (t,f);

T = Filter (M, Dkl);
plot(t, T);