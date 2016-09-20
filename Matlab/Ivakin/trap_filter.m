function y = trap_filter(i, k, l, t1, t2, M)
% задаём каждую функцию фильтра
    function y = r(i, k, l, t1, t2, M)
        y = p(i, k, l, t1, t2, M) + M * d(i, k, l, t1, t2);
    end
    function y = s(i, k, l, t1, t2, M)
        if i < 0
            y = 0;
        else
            y = s(i - 1, k, l, t1, t2, M) + r(i, k, l, t1, t2, M);
        end
    end
    function y = d(i, k, l, t1, t2)
        if i < 0
            y = 0;
        else
            y = func(i, t1, t2) - func(i - k, t1, t2) - func(i - l, t1, t2) + func(i - k - l, t1, t2);
        end
    end
    function y = p(i, k, l, t1, t2, M)
        if i < 0
            y = 0;
        else
            y = p(i - 1, k, l, t1, t2, M) + d(i, k, l, t1, t2);
        end
    end
% считаем значение, которое даст фильтр
    y = s(i, k, l, t1, t2, M);
end