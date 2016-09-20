clearvars 
show_plot() % вызываем функцию прорисовки графики первого
% Константы
M = 16; 
k = 8;
A = 1;
l = 5;
y = [];
t1 = 16;
t2 = 5;
% Применяем фильтр
for i = 0:100
    y = [y trap_filter(i, k, l, t1, t2, M)];
end
% Рисуем график фильтра
figure
plot(t, y)
