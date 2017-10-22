%*note: this file may take several minutes to execute.
format long;

hold on;
grid on;
axis([-0.2, 1.2, -0.1, 0.1]);

average_error = [];
max_error = [];
max_error_epsilon = [];

e = 0.001:0.001:1;


#f in C_2(e)
k_approx = @(e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2));
f = @(x, e) k_approx(e).*(e .* x - x .^ 2);
df = @(x, e) k_approx(e).*(e-2*x);

sqrt_df_squared_plus_one = @(x, e) (df(x, e).^2 + 1).^(1/2);
aL = @(e) quad(@(x)sqrt_df_squared_plus_one(x,e), 0, e) - 1;

y = [];
for i = 0.001:0.001:1;
  y = [y, aL(i)];
end
plot(e, y, 'k')

error = abs(y);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.001 + 0.001;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/numel(error)];

#f in C_3(e)
k_approx = @(e) (3*sqrt(3))*(((1 - e.^ 2).^(1 / 2))./(e.^3)); 
f = @(x, e) -k_approx(e).*x.*(x-(e./2)).*(x-e);
df = @(x, e) k_approx(e).*(1/2).*(-(e.^2) + 6.*e.*x - 6.*x.^2);

sqrt_df_squared_plus_one = @(x, e) (df(x, e).^2 + 1).^(1/2);
aL = @(e) quad(@(x)sqrt_df_squared_plus_one(x,e), 0, e) - 1;

y = [];
for i = 0.001:0.001:1;
  y = [y, aL(i)];
end
plot(e, y, 'k')

error = abs(y);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.001 + 0.001;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/numel(error)];

#f in C_4(e)
k_approx = @(e) (648/41)*(((1 - e.^ 2).^(1 / 2))./(e.^4)); 
f = @(x, e) -k_approx(e).*x.*(x-(e./3)).*(x-((2*e)./3)).*(x-e);
df = @(x, e) k_approx(e).*( (2/9).*e.^3 - (22/9).*(e.^2).*x + 6.*e.*(x.^2) - 4.*(x.^3) );

sqrt_df_squared_plus_one = @(x, e) (df(x, e).^2 + 1).^(1/2);
aL = @(e) quad(@(x)sqrt_df_squared_plus_one(x,e), 0, e) - 1;

y = [];
for i = 0.001:0.001:1;
  y = [y, aL(i)];
end
plot(e, y, 'k')

error = abs(y);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.001 + 0.001;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/numel(error)];

#f in C_5(e)
k_approx = @(e) (50.6917760748139884)*(((1 - e.^ 2).^(1 / 2))./(e.^5)); 
f = @(x, e) -k_approx(e).*x.*(x-(e./4)).*(x-((2*e)./4)).*(x-((3*e)./4)).*(x-((3*e)./4)).*(x-e);
df = @(x, e) k_approx(e).*( (-3/32).*e.^4 + (50/32).*(e.^3).*x - (105/16).*(e.^2).*(x.^2) + (20/2).*e.*(x.^3) -5*x.^4);

sqrt_df_squared_plus_one = @(x, e) (df(x, e).^2 + 1).^(1/2);
aL = @(e) quad(@(x)sqrt_df_squared_plus_one(x,e), 0, e) - 1;

y = [];
for i = 0.001:0.001:1;
  y = [y, aL(i)];
end
plot(e, y, 'k')

error = abs(y);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.001 + 0.001;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/numel(error)];

#f in C_6(e)
k_approx = @(e) (164.7668005)*(((1 - e.^ 2).^(1 / 2))./(e.^6)); 
f = @(x, e) -k_approx(e).*x.*(x-(e./5)).*(x-((2*e)./5)).*(x-((3*e)./5)).*(x-((4*e)./5)).*(x-e);
df = @(x, e) k_approx(e).*( (24/625).*e.^5 - (548/625).*(e.^4).*x + (27/5).*(e.^3).*(x.^2) - (68/5).*(e.^2).*(x.^3) + 15*e.*x.^4 - 6*x.^5);

sqrt_df_squared_plus_one = @(x, e) (df(x, e).^2 + 1).^(1/2);
aL = @(e) quad(@(x)sqrt_df_squared_plus_one(x,e), 0, e) - 1;

y = [];
for i = 0.001:0.001:1;
  y = [y, aL(i)];
end
plot(e, y, 'k')

error = abs(y);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.001 + 0.001;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/numel(error)];

max_error
max_error_epsilon
average_error

print("DelFn.jpeg")
hold off;
