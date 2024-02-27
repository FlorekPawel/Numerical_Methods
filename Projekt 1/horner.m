function[y] = horner(w, x)
% liczy wartość wielomianu w w punkcie x, metodą hornera
% wektoryzacja względem w i x

n = length(w);
y(1,:) = w(1);

for k = 2:n
    p = w(:,k) + x.*y;
    y = p;
end
end