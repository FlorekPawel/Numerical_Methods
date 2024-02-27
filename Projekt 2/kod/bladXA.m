function[C] = bladXA(A, B, X)
% wyznacza błąd bezwzględny naszej funkcji

if nargin < 3
    X = rozwiazXA(A, B);
end 

C = abs(B * inv(A) - X);

end