T1 = 16;
T2 = 5;
A = 1;

t = 0 : 1 : 100;

if t < 0
    x = 0;
end

if t >= 0
    x = A * (exp(-t/T1) - exp(-t/T2));
end

plot(t , x)
