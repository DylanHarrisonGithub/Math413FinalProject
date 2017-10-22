%plot various members of S_2(e)
f = @(x, e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2)) .* (e .* x - x .^ 2);

i = -1:0.01:2;
%y0 = f(i,0);
y1 = f(i,0.8);
y2 = f(i,0.6);
y3 = f(i,0.4);
y4 = f(i,0.2);
%axis('on');
grid on;
axis([-0.5, 1.5, -0.2, 0.7]);
hold on;
%plot(i, y0);
plot(i, y1, 'k');
plot(i, y2, 'k');
plot(i, y3, 'k');
plot(i, y4, 'k');
print("S2PLOTS.jpg");
hold off;
