function [f] = var7_filter_B(A, T1, T2, M, k, L, n)%������ �������

%������� ���������� �� ����������� ����� ����������� � ������� ��� �������
%� �������. ����������� �������� ��� �������� �������� "n". �����������
%������� ��� �������
function f = dkL(n)
f = var7_exp(A, T1, T2, n) - var7_exp(A, T1, T2, n - k) - var7_exp(A, T1, T2, n - L) + var7_exp(A, T1, T2, n - k - L);
end

  function f = p(n)
    if n >= 0
        f = p(n - 1) + dkL(n);
    else
        f = 0;
    end
end
        
    function f = r(n)
        f = r(n) + M * dkL(n);
    end

      function f = s(n)
        if n >= 0
          f = s(n - 1) + r(n);
        else 
          f = 0;
        end
      end
%��������� ������ �������  
  f = s(n);
end
  
        
        