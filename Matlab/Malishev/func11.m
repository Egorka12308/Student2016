function [f] = func11(A,T1,T2,t)%������� ����������

if t < 0
f = 0;
else
f  = A * ((exp(-t/T1))-(exp(-t/T2))); %��������� �������� ������� ����������

end

end