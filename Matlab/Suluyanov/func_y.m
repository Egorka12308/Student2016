function Mass_y = func_y(A, tmin, dt, tmax, t1, t2)

    Mass_y=[]; % создание пустого массива 
    
for t=tmin:dt:tmax % задание минимального, максимального значений параметра t, значение шага для цикла 
    if t<0;
    Mass_y=[Mass_y 0]; % добавление в массив соответствующего значния, в зависимости от значния t
    else
    Mass_y=[Mass_y A*( exp(-t/t1)-exp(-t/t2) )];
    end 
end
%Mass_y
end


