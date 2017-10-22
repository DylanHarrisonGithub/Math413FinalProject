#this file finds the coefficient K(e) that gives f_n an 
#arc length of one via numerical means, and measures
#the error of the c_n(e) approximant, and plots them both
#for each f_n
#
#*note, this m file may require a minute or two to execute.
format long;
hold on;
grid on;
axis([0, 1.2, -0.5, 1000]);
average_error = [];
max_error = [];
max_error_epsilon = [];

#f in C_2(e)
f = @(x, e, c) c.*(e .* x - x .^ 2);
df = @(x, e, c) c.*(e-2*x);
k_approx = @(e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2));

sqrt_df_squared_plus_one = @(x, e, c) (df(x, e, c).^2 + 1).^(1/2);
arcLength_minus_one = @(e, c) quad(@(x)sqrt_df_squared_plus_one(x,e,c), 0, e) - 1;

e = 0.01:0.01:1;
y_approx = k_approx(e);

y_numerical = [];
for i = 0.01:0.01:1
  fun = @(c) arcLength_minus_one(i,c);
  y_numerical = [y_numerical, fzero(fun, k_approx(i))];
end

error = abs(y_approx) - abs(y_numerical);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.01 + 0.01;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/((1-0.01)/0.01)];

plot(e, y_approx, 'b');
plot(e, y_numerical, 'r');

#f in C_3(e)
f = @(x, e, c) c.*x.*(x-(e./2)).*(x-e);
df = @(x, e, c) c.*(1/2).*(-(e.^2) + 6.*e.*x - 6.*x.^2);
k_approx = @(e) (3*sqrt(3))*(((1 - e.^ 2).^(1 / 2))./(e.^3)); 

sqrt_df_squared_plus_one = @(x, e, c) (df(x, e, c).^2 + 1).^(1/2);
arcLength_minus_one = @(e, c) quad(@(x)sqrt_df_squared_plus_one(x,e,c), 0, e) - 1;

e = 0.01:0.01:1;
y_approx = k_approx(e);

y_numerical = [];
for i = 0.01:0.01:1
  fun = @(c) arcLength_minus_one(i,c);
  y_numerical = [y_numerical, fzero(fun, k_approx(i))];
end

error = abs(y_approx) - abs(y_numerical);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.01 + 0.01;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/((1-0.01)/0.01)];

plot(e, y_approx, 'b');
plot(e, y_numerical, 'r');

#f in C_4(e)
f = @(x, e, c) c.*x.*(x-(e./3)).*(x-((2*e)./3)).*(x-e);
df = @(x, e, c) c.*( (2/9).*e.^3 - (22/9).*(e.^2).*x + 6.*e.*(x.^2) - 4.*(x.^3) );
k_approx = @(e) (648/41)*(((1 - e.^ 2).^(1 / 2))./(e.^4)); 

sqrt_df_squared_plus_one = @(x, e, c) (df(x, e, c).^2 + 1).^(1/2);
arcLength_minus_one = @(e, c) quad(@(x)sqrt_df_squared_plus_one(x,e,c), 0, e) - 1;

e = 0.01:0.01:1;
y_approx = k_approx(e);

y_numerical = [];
for i = 0.01:0.01:1
  fun = @(c) arcLength_minus_one(i,c);
  y_numerical = [y_numerical, fzero(fun, k_approx(i))];
end

error = abs(y_approx) - abs(y_numerical);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.01 + 0.01;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/((1-0.01)/0.01)];

plot(e, y_approx, 'b');
plot(e, y_numerical, 'r');

#f in C_5(e)
f = @(x, e, c) c.*x.*(x-(e./4)).*(x-((2*e)./4)).*(x-((3*e)./4)).*(x-((3*e)./4)).*(x-e);
df = @(x, e, c) c.*( (-3/32).*e.^4 + (50/32).*(e.^3).*x - (105/16).*(e.^2).*(x.^2) + (20/2).*e.*(x.^3) -5*x.^4);
k_approx = @(e) (50.6917760748139884)*(((1 - e.^ 2).^(1 / 2))./(e.^5)); 

sqrt_df_squared_plus_one = @(x, e, c) (df(x, e, c).^2 + 1).^(1/2);
arcLength_minus_one = @(e, c) quad(@(x)sqrt_df_squared_plus_one(x,e,c), 0, e) - 1;

e = 0.01:0.01:1;
y_approx = k_approx(e);

y_numerical = [];
for i = 0.01:0.01:1
  fun = @(c) arcLength_minus_one(i,c);
  y_numerical = [y_numerical, fzero(fun, k_approx(i))];
end

error = abs(y_approx) - abs(y_numerical);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.01 + 0.01;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/((1-0.01)/0.01)];

plot(e, y_approx, 'b');
plot(e, y_numerical, 'r');

#f in C_6(e)
f = @(x, e, c) c.*x.*(x-(e./5)).*(x-((2*e)./5)).*(x-((3*e)./5)).*(x-((3*e)./5)).*(x-((4*e)./5)).*(x-e);
df = @(x, e, c) c.*( (24/625).*e.^5 - (548/625).*(e.^4).*x + (27/5).*(e.^3).*(x.^2) - (68/5).*(e.^2).*(x.^3) + 15*e.*x.^4 - 6*x.^5);
k_approx = @(e) (164.7668005)*(((1 - e.^ 2).^(1 / 2))./(e.^6)); 

sqrt_df_squared_plus_one = @(x, e, c) (df(x, e, c).^2 + 1).^(1/2);
arcLength_minus_one = @(e, c) quad(@(x)sqrt_df_squared_plus_one(x,e,c), 0, e) - 1;

e = 0.01:0.01:1;
y_approx = k_approx(e);

y_numerical = [];
for i = 0.01:0.01:1
  fun = @(c) arcLength_minus_one(i,c);
  y_numerical = [y_numerical, fzero(fun, k_approx(i))];
end

error = abs(y_approx) - abs(y_numerical);
[max_e, epsilon] = max(error);
epsilon = epsilon*0.01 + 0.01;
max_error = [max_error, max_e];
max_error_epsilon = [max_error_epsilon, epsilon];
average_error = [average_error, sum(error)/((1-0.01)/0.01)];

plot(e, y_approx, 'b');
plot(e, y_numerical, 'r');
%print("CnError.jpeg");
max_error
max_error_epsilon
average_error
hold off;
