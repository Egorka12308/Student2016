function f = func11(A,T1,T2,t)%������� ������� 7

if t < 0
f (t) = 0;
end
if t >= 0
f  = A * ((exp(-t/T1))-(exp(-t/T2)));


end



