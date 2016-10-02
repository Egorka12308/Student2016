clearvars 
show_plot() % draw 1 plot
% Constants
M = 16; 
k = 8;
A = 1;
l = 5;
y = [];
t1 = 16;
t2 = 5;
% apply filter
for i = 0:100
    y = [y trap_filter(i, k, l, t1, t2, M)];
end
% draw 2 plot
figure
plot(t, y)
