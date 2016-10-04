function [s] = Filter(f,k,l,M)%функция фильтра

lf=length(f);       % длина массива значений эксп.

for n = 1 : lf;

    dkl(n) = f(n);
    if n > l
        dkl(n) = f(n) - f(n-l);
        if n > k
            dkl(n) = f(n) - f(n - k) - f(n - l);
                if n > k + l
                    dkl(n) = f(n) - f(n - k) - f(n - l) + f(n - k -l);

               end
        end
    end
end


p(1)=dkl(1);        %Задаём начальные значения
r(1)=p(1)+M*dkl(1); %вычисляем начальное значение r
s(1)=r(1);          %вычисляем начальное значение s

for i=2:lf;
    p(i)=p(i-1)+dkl(i);%функции фильтр
    r(i)=p(i)+M*dkl(i);
    s(i)=s(i-1)+r(i);
end

end

