function [y] = var7_exp(A, t, T1, T2)% ������ ������� 
 if t >= 0 %�������, ��� ������� ������ �������������� �������
          y = A * (exp(-t / T1) - exp(-t / T2));% ���� �������
 else 
     y = 0
 end
end          