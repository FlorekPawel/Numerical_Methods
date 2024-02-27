function[w] = generujWielomian(n)
% generuje wielonomian w stopnia n
% współczynniki z przedziału [-5,5]
% w jest wektorem współczynników, w(i) to wspołczynnik przy x^(i-1)

w = randi([-5, 5], 1, n + 1);

end