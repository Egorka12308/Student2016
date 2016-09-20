function y = triangle_filter(i, t1, t2, K, L, M)
    %Последовательно декларируем функции для фильтра, в качестве аргумента
    %выбираем i, что упрощает декларацию итогового значения.
    function y = d(i)
        y = func_exp(1, i, t1, t2)- func_exp(1, i - K, t1, t2) - func_exp(1, i - L, t1, t2) + func_exp(1, i - K - L, t1, t2);
    end
    function y = p(i)
        if i < 0
            y = 0;
        else
            y = p(i - 1) + d(i);
        end  
    end
    function y = r(i)
        y = p(i) + M*d(i);
    end
    function y = s(i)
        if i < 0
            y = 0;
        else
            y = s(i - 1) + r(i);
        end
    end
%Вычисляем результат итогового выражения
y = s(i);
end
