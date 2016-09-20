function Pl()
B = 0;
T = 0;
Lt = 100;
St = 1;
A = 1;
t1 = 16;
t2 = 5;
for t = -Lt:St:Lt
    T = [T, t];
    B = [B, f1(A, t, t1, t2)];
end
plot(T, B);
end