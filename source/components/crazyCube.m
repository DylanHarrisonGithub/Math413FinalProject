%crazyCube

cc = @(c_3, e, x) c_3.*(-2*(e.^2)*x + 3*e*x.^2 - x.^3)

i = -1:0.01:3;

grid on;
#axis([-0.2, 1.2, -0.1, 0.1]);
hold on;
for j = 0:9 
  y = cc(10, 1\j, i);
  plot(i, y, 'k');
end


 