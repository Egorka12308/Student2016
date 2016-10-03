function [f] = var7_filter_B(T1, T2, M, k, l, t)

function [f] = dkl(t)
f = var7_exp(t, T1, T2) - var7_exp(t - k, T1, T2) - var7_exp(t - l, T1, T2) + var7_exp(t - k - l, T1, T2);
end

  function [f] = p(t)
    if t >= 0
        f = p(t - 1) + dkl(t);
    else
        f = 0;
    end
end
        
    function [f] = r(t)
        f = r(t) + M * dkl(t);
    end

      function [f] = s(t)
        if t >= 0
          f = s(t - 1) + r(t);
        else 
          f = 0;
        end
      end
  
  f = s(t);
end
  
        
        