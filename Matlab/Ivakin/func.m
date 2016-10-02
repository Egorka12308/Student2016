function y = func(t, t1, t2)
    if t < 0
        y = 0;
    else
        y = (exp(-t/t1) - exp(-t/t2)); % function from task
    end
end
