function[C] = bladAX(A, B, X)
% wyznacza błąd bezwzględny naszej funkcji

if nargin < 3
    X = rozwiazAX(A, B);
end 

C = linsolve(A, B);
C = abs(C - X);

end