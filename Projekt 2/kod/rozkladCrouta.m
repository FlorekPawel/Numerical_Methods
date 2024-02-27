function [L, U] = rozkladCrouta(A)

% Funkcja służy wyznaczaniu rozkładu Crouta dla macierzy A, 
% gdzie dim(A) = n x n i A ma elementy rzeczywiste
% Output: 
% L - macierz trójkątna dolna, 
% U - macierz trójkątna górna z jedynkami na głównej przekątnej

n = size(A, 1);

L(:, 1) = A(:, 1);
U = diag(ones(1,n));
U(1, 2:n) = A(1, 2:n)/L(1, 1);

for i = 2:n
    for j = i:n
        L(j, i) = (A(j, i) - L(j, 1:i-1) * U(1:i-1, i));
    end
     
    for j = i+1:n
        U(i, j) = (A(i, j) - L(i, 1:i-1) * U(1:i-1, j));
        if L(i,i) ~= 0
        U(i,j) = U(i,j)/ L(i,i);
    end
    end
    
end
end