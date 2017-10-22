k_approx = @(e) 2*(((1 - e .^ 2) .^ (1 / 2)) ./ (e .^ 2));
f = @(x, e) k_approx(e).*(e .* x - x .^ 2);

k_approx = @(e) (3*sqrt(3))*(((1 - e.^ 2).^(1 / 2))./(e.^3)); 
f = @(x, e) -k_approx(e).*x.*(x-(e./2)).*(x-e);

Z = zeros(100, 100);
for y = 1:100
  for x = 1:y
    Z(x,y) = f(x*0.01,y*0.01);
  end  
end
surf(Z);
