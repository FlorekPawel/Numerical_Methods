% przykładowe dane
A = [2 1 -1; -4 -1 3; 6 1 -3];
B = [1 1 3; -1 1 2; 3 -1 1];

% wyznaczanie rozkladu Crouta
[L, U] = rozkladCrouta(A)
% L =
%    2     0     0
%   -4     1     0
%    6    -2     2
% U =
%   1.0000    0.5000   -0.5000
%        0    1.0000    1.0000
%        0         0    1.0000

rozwiazAX(A, B)
% ans =
%   1.0000         0    1.5000
%        0    2.0000    4.0000
%   1.0000    1.0000    4.0000

bladAX(A, B)
% ans =
%  1.0e-15 *
%        0    0.0370         0
%        0    0.2220    0.4441
%        0         0         0

rozwiazXA(A, B)
% ans =
%   3.0000    3.5000    1.5000
%   2.5000    1.5000         0
%  -1.0000    2.5000    2.5000

bladXA(A, B)
% ans =
%  1.0e-15 *
%        0         0         0
%        0         0    0.2220
%   0.4441         0    0.4441

