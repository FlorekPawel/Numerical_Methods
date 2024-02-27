function[] = wykresPola(w, a, b)
% funkcja tworzy wykres wartości w zależności liczby podpodziałów
% w - wielomian
% a,b - przedział całkowania


N= 1:100;
sim = zeros(1, length(N));
new = zeros(1, length(N));


for k = N
    sim(k) = simpson(w, a, b, k);
    new(k) = newton(w, a, b, k);
end
c = zeros(1, length(N)) + integral(@(x) polyval(w, x), a, b);

figure;
p = semilogx(N, sim, N, new, N, c);
p(1).Color = 'r';
p(2).Color = "b";
p(3).Color = "c";
p(3).LineStyle = "--";

grid on;
title('Zależność przybliżenia pola całki od liczby podpodziałów');
xlabel('Liczba przedziałów');
ylabel('Przybliżona wartość całki');
legend("Metoda Simpsona", "Metoda Newtona", "Wartość dokładna");
set(gca, 'Color', "#D3D3D3")

end