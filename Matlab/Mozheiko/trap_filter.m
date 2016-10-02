function y = trap_filter(k, l, M, t1, t2, t)
%%%% прописываем функции для фильтра %%%%
    function x = d(t)
       if t >= 0
           x = func_exp(t1, t2, t) - func_exp(t1, t2, t-k) - func_exp(t1, t2, t-l) + func_exp(t1, t2, t-k-l)
       else
           x = 0
       end
    end
    function x = p(t)
        if t >= 0
            x = p(t-1) + d(t)
        else
            x = 0
        end
    end
    function x = r(t)
       x = p(t) + M*d(t)
    end
    function x = s(t)
        if t >= 0
            x = s(t-1) + r(t)
        else
            x = 0
        end
    end
    y = s(t) % конечная функция для фильтра
end