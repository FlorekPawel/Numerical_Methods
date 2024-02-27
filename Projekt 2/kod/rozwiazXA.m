function[X] = rozwiazXA(A, B)

% Funkcja służy do obliczania rozwiązania równania AX = B
% przy użyciu rozkładu LU Crouta, gdzie
% INPUT: 
% A - macierz n x n, 
% B - macierz n x m
% OUTPUT:
% X - macierz wynikowa n x m


n = size(A, 1);
[L, U] = rozkladCrouta(A);

Y = zeros(size(B));
X = zeros(size(B));

for i = 1:n
    Y(:,i) = B(:,i) - Y(:,1:i-1) * U(1:i-1, i);
end

for i = n:-1:1
    X(:,i) = (Y(:,i) - X(:,i+1:n) * L(i+1:n, i))./L(i,i);
end

end