% generuje losowe macierze n x n, n = 1,...,10
% porównuje średnie błędy bezwzględne współczynników macierzy wynikowej

C = zeros(1, 10);
for i = 1:10
    A = randi([-10, 10],i);
    B = randi([-10, 10], i);
    C(1,i) = mean(bladAX(A, B), "all");
    C(2,i) = mean(bladXA(A, B), "all");
end

array2table(C, 'RowNames', ["Średni błąd  AX", "Średni błąd XA"], 'VariableNames', string(1:10))