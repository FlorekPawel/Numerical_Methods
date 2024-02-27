function[d, s] = rozklad(a,b)
% Funkcja wyznacza rozkład Banachiewicza-Cholesky-ego, gdzie A = LLT.
% WE: a - główna diagonala macierzy A, b - wektor wartości pod i pod 
% gł. diagonala
% WY: d - główna diagonala macierzy L, s - wektor wartości pod gł. diagonala

d(1,1) = sqrt(a(1,1));

for i = 1:length(b)
    s(1,i) = b(1,i)/d(1,i);
    d(1,i+1) = sqrt(a(1,i+1)-(s(1,i)^2));
end
end