a = 0;
b= 10;
N = 100;
ww = zeros(3, 10);

for i=1:10
    w = generujWielomian(i);
    sim(i) = simpson(w, a, b, N);
    new(i) = newton(w, a, b, N);
    calka(i) = integral(@(x) polyval(w, x), a, b);
    w
end

ww(1,:) = sim;
ww(2,:) = new;
ww(3,:) = calka;

wynik = array2table(ww,'RowNames',{'Simpson', 'Newton', 'Całka'},'VariableNames', {'1','2','3','4','5','6','7','8','9','10'});

disp(wynik)