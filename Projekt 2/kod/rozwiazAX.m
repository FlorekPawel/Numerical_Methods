function[X] = rozwiazAX(A, B)

% Funkcja służy do obliczania rozwiązania równania XA = B
% przy użyciu rozkładu LU Crouta, gdzie
% INPUT: 
% A - macierz n x n, 
% B - macierz m x n
% OUTPUT:
% X - macierz wynikowa m x n


n = size(A, 1);
[L, U] = rozkladCrouta(A);

Y = zeros(size(B));
X = zeros(size(B));

for i = 1:n
    Y(i,:) = (B(i,:) - L(i, 1:i-1) * Y(1:i-1,:))./L(i,i);
end

for i = n:-1:1
    X(i,:) = (Y(i,:) - U(i, i+1:n) * X(i+1:n,:));
end

end