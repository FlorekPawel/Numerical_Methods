 function[c] = simpson(w, a, b, N)
% liczenie przybliżonej wartości całki wielomianu w na przedziale [a,b],
% metodą simpsona
% w - wektor kolejnych współczynników
% c - pole pod wykresem wielomianu na przedziale [a,b]
% N - liczba podziałów odcinka [a,b]
% wektoryzacja względem w i [a,b]

H = (b-a)./ N;

c = (horner(w, a) + horner(w, b));

s1 = 0;
s2 = horner(w, a + H/2);
for k = 1:N-1
    s1 = s1 + horner(w, a + k*H);
    s2 = s2 + horner(w, a + k*H + H./2);
end

c = (H/6) .* (c + 2 * s1 + 4 * s2);

end