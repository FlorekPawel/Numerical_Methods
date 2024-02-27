function [] = pochodnaWykres(x, h)

figure
y1 = func(x);
y2 = funcP(x);
subplot(2, 2, 1)
plot(x, y1, 'r', x, y2, 'g')
title('Wykres 1')
legend('2cos(x)', "2cos(x)")
xlabel('x'), ylabel('y')


subplot(2, 2, 3)
hold on;
color = ['y', 'm', 'c', 'r', 'g'];
y3 = pochodna(x, @func, h');
for i = 1:5
    plot(x, y3(i,:), color(i))
end
title('Wykres 2')
legend('n = -0.1', 'n = -0.3', 'n = -0.7', 'n = -1', 'n = -10')
xlabel('x'), ylabel('y')


subplot(2, 2, [2,4])
hold on;
y4 = bladPochodna(x, @func, @funcP, h');
for i = 1:5
    plot(x, y4(i,:), color(i))
end
title('Wykres 3')
legend('n = -0.1', 'n = -0.3', 'n = -0.7', 'n = -1', 'n = -10')
xlabel('x'), ylabel('błąd')


end