function y = trap_filter(i, k, l, t1, t2, M)
% define filter functions
    function y = r(i)
        y = p(i) + M * d(i);
    end
    function y = s(i)
        if i < 0
            y = 0;
        else
            y = s(i - 1) + r(i);
        end
    end
    function y = d(i)
        if i < 0
            y = 0;
        else
            y = func(i, t1, t2) - func(i - k, t1, t2) - func(i - l, t1, t2) + func(i - k - l, t1, t2);
        end
    end
    function y = p(i)
        if i < 0
            y = 0;
        else
            y = p(i - 1) + d(i);
        end
    end
% calculate filter
    y = s(i);
end