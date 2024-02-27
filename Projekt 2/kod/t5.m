C5 = zeros(2, 8);
for i = 3:10
    A = randi([-10, 10],i);
    B = diag(ones(1,i));
    C5(1,i-2) = mean(bladAX(A,B), 'all');
    C5(2,i-2) = mean(bladXA(A,B), 'all');
end


array2table(C5, 'RowNames', ["Średni błąd  AX", "Średni błąd XA"], 'VariableNames' ...
    , string(3:10))