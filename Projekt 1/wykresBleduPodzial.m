function[] = wykresBleduPodzial(w, a, b)
% funkcja tworzy wykres błedu w zależności liczby podpodziałów
% w - wielomian
% a,b - przedział całkowania

N= 1:100;
sim = zeros(1, length(N));
new = zeros(1, length(N));


for k = N
    sim(k) = simpson(w, a, b, k);
    new(k) = newton(w, a, b, k);
end

c = integral(@(x) polyval(w, x), a, b);    
y1 = abs(sim - c);
y2 = abs(new - c);

figure;
semilogx(N, y1, "r", N, y2, "b");
grid on;
title('Zależność błędu bezwzględnego od liczby podpodziałów');
axis manual;
xlabel('Liczba przedziałów');
ylabel('Błąd bezwzględny');
legend("Metoda Simpsona", "Metoda Newtona");
set(gca, 'Color', "#D3D3D3")

end