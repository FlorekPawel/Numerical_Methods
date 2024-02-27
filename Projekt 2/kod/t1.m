A1 = randi([-10, 10],3);
B1 = randi([-10, 10],3);

imagesc(bladAX(A1, B1));

set(gca, 'XTick', []);
set(gca, 'YTick', []);


%A1_1 = randi([-10, 10],100);
%B1_1 = randi([-10, 10],100);

%imagesc(bladAX(A1_1, B1_1));

%set(gca, 'XTick', []);
%set(gca, 'YTick', []);