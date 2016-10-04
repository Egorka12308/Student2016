function [f] = func11(A,T1,T2,t)%функция экспоненты

if t < 0
f = 0;
else
f  = A * ((exp(-t/T1))-(exp(-t/T2))); %вычисляем значения функции экспоненты

end

end