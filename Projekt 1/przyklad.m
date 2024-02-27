% przykładowy wielomian
w = [3, 2, 5, 4];

% przykładowy przedział
a = 0;
b = 3;

% przykładowa liczba podprzedziałów
N = 60;

% przybliżanie wartości całki metodą Simpsona
s = simpson(w, a, b, N);
% przybliżanie wartości całki metodą Newtona
n = newton(w, a, b, N);

% obliczanie wartości całki wbudowaną funkcją
c = integral(@(x) polyval(w, x), a, b);

% Porównanie wyników
disp("Metoda Simpsona: " +  num2str(s))
disp("Metoda Newtona: " + num2str(n))
disp("Funckja wbudowana: " + num2str(c))

% Wyniki:
% Metoda Simpsona: 113.25
% Metoda Newtona: 113.25
% Funckja wbudowana: 113.25