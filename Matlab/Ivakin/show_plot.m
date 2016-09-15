t = 0:100;
y = [];
for i = 0:100
    y = [y func(i, 1, 16, 5)];
end
plot(t, y)