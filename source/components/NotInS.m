%not in S_4(e)
f = @(x) (-x.*(x-1).*(x.^2 + 1/8))
i = -1:0.01:2;
y1 = f(i,0.8);
hold on;
grid on;
axis([-0.5, 1.5, -0.2, 0.2]);
plot(i, y1, 'k');
print("NotInS.jpg");
hold off;