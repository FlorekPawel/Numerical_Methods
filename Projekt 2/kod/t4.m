% A = randi([-10 0], 10, 10);
% B = randi([-10 0], 10, 10);

% C1 = bladAX(A,B);
% 
% imagesc(C1);
% 
% title('Błąd AX = B')
% set(gca, 'XTick', []);
% set(gca, 'YTick', []);

C2 = bladXA(A,B);

imagesc(C2);
title('Błąd XA = B')
set(gca, 'XTick', []);
set(gca, 'YTick', []);
