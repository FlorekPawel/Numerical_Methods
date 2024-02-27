C5 = zeros(2, 6);
for i = 1:3
    A = randi([-10, 10],10^i);
    B = randi([-10, 10],10^i);

    T = triu(randn(10^i, 10^i));
    tic
    linsolve(A,B);
    C5(1,2*i- 1) = toc;
    
    tic
    rozwiazAX(A, B);
    C5(2,2*i-1) = toc;

    tic
    linsolve(T,B);
    C5(1,2*i) = toc;
    
    tic
    rozwiazAX(T, B);
    C5(2,2*1) = toc;
end

C5
array2table(C5, 'RowNames', ["Czas MATLAB", "Czas rozkladCrouta + rozwiazAX"] ...
    ,'VariableNames', ["Zwykła 10x10", "Trójkątna 10x10", "Zwykła 10x100", ...
    "Trójkątna 100x100", "Zwykła 1000x1000", "Trójkątna 1000x1000"])




