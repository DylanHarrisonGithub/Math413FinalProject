%C(e)
f = @(e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2));
i = -1.5:0.01:1.5;

y1 = f(i);
y2 = -f(i);

grid on;
axis([-1.5, 1.5, -10, 10]);
hold on;
plot(i, y1, 'k');
plot(i, y2, 'k');
%print("C2OFE.jpg");
hold off;
