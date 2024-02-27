function[c] = newton(w, a, b, N)
% liczenie przybliżonej wartości całki wielomianu w na przedziale [a,b],
% metodą newtona (trzech ósmych)
% w - wektor kolejnych współczynników
% c - pole pod wykresem wielomianu na przedziale [a,b]
% N - liczba podziałów odcinka [a,b]
% wektoryzacja względem w i [a,b]

H = (b-a)./N;

c = (horner(w, a) + horner(w, b));

s1 = 0;
s2 = 0;

for k = 1:N-1
    if mod(k, 3) == 0
        s1 = s1 + horner(w, a + k*H);
    else
        s2 = s2 + horner(w, a + k*H);
    end
end

c = (3*H/8) .*(c + 2*s1 + 3*s2);

end