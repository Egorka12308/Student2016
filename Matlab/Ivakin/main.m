clearvars 
t = 0:100; % time array
y = [];
for i = 0:100
    y = [y func(i, 16, 5)]; % add values to array
end
plot(t, y)  % draw 1 plot
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
