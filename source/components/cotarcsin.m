%cot(arcsin(x))
i = -1.5:0.01:1.5
g = @(x) ((1-x.^2).^(1/2))./x

y1 = g(i)
y2 = -g(i)

grid on;
axis([-1.5, 1.5, -10, 10]);
hold on;
plot(i, y1, 'k');
plot(i, y2, 'k');
print("cotarcsin.jpg");
hold off;
