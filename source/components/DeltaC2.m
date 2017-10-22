
format long
c_2 = @(e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2));
delta = @(x) ( x.*c_2(x).*( (x.*c_2(x)).^(2) + 1 ).^(1/2) + asinh(x.*c_2(x)))./(2*c_2(x)) - 1;

i = 0:0.001:1;

y1 = delta(i);

grid on;
axis([-0.2, 1.2, -0.1, 0.1]);
hold on;
plot(i, y1, 'k');

#print("DeltaC2e.jpg");
hold off;
[y, x] = max(y1)
x*0.001
