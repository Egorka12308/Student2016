
k = 10; l = 5; M=16;

yk = A * ((exp(-(t - k)/T1))-(exp(-(t - k)/T2)));
yl = A * ((exp(-(t - l)/T1))-(exp(-(t - l)/T2)));
ykl = A * ((exp(-(t - k - l)/T1))-(exp(-(t - k - l)/T2)));

Dkl = y - yk - yl + ykl;

for n = 1.0:100.0
p(n)= p(n - 1) + Dkl;
r(n)= p(n) + M * Dkl;
s(n) = s(n-1) + r(n);
end