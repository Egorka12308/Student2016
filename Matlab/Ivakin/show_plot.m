t = 0:100; % time array
y = [];
for i = 0:100
    y = [y func(i, 16, 5)]; % add values to array
end
plot(t, y) 