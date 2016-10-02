function y = func_exp(t1, t2, t)
    if t < 0
        y = 0;
    else
        y = exp(-t/t1)-exp(-t/t2);
    end
end
