C = zeros(2, 2);
A = [1 2 3; 0 4 2; 0 0 1];
B = [1 2 4; 4 1 2; 2 4 1];
[L, U] = rozkladCrouta(A);
rozwiazAX(A, B)
C(1, 1) = mean(bladAX(A, B), 'all');
C(2, 1) = mean(bladXA(A,B), 'all');

A = A.';
[L, U] = rozkladCrouta(A);
rozwiazAX(A, B)
C(1, 2) = mean(bladAX(A, B), 'all');
C(2, 2) = mean(bladXA(A,B), 'all');

T = array2table(C, 'RowNames', ["Średni błąd  AX", "Średni błąd XA"], 'VariableNames' ...
    , ["Macierz trójkątna górna", "Macierz trójkątna dolna"])
writetable(T, "tabela3")