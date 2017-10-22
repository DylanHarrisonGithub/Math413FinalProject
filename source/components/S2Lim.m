%S2Max
f = @(x, e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2)) .* (e .* x - x .^ 2);
i = -0.02:0.0001:0.02;
y = f(i,0.001);
hold on;
grid on;
axis([-0.005, 0.01, -0.2, 0.7]);
plot(i, y, 'k');
line([0.0005,0.0005], [0,max(y)])
hold on;
#print("S2LIM.jpg");