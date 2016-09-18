function y = graph(t1, t2, low, high, step)
t = low:step:high
    if t < 0
        y = 0;
    else
        y = exp(-t/t1)-exp(-t/t2);
    end
plot(t,y)