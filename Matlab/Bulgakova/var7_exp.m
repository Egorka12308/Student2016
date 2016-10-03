function [y] = var7_exp(A, t, T1, T2)

          y = A * (exp(-t / T1) - exp(-t / T2));
          
end          