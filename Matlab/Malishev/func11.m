

T1 = 16;  T2 = 5; 

A = 1;

t = 0.0 : 1.0 : 100.0;
    
if t < 0
y (t) = 0;
end

if t >= 0
y  = A * ((exp(-t/T1))-(exp(-t/T2)));

end

plot(t, y)
