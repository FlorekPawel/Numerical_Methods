%a
x = 4*10^2;

%b
w1 = linspace(-2, 2, 4/0.2+1)';
w2 = linspace(-2, 2, 4/0.2+1);

%c
A = [-4 6 0; 1 -2 6; 5 9 1];
f = [3 0 8]';

A_size = size(A)
f_size = size(f)

%d
A = rand(4);
B = rand(4);
wyr1 = (A+B)^2 + 2*(A-B)

save lab1.mat;
load lab1.mat;

%e 
A = eye(4);
C = (A+B)'/2

%f
A = rand(3);
B = rand(3);
A = A.^2;
A*B

%g
C = [4 1; 7 2];
x = [1 4];
x*C
C.*x

%h
A = rand(3,5);
B = rand(5,4);
tic;
C = A*B;
toc;

C = zeros(3,4);
tic;
for i = 1:3
    for j = 1:4
        for k = 1:5
            C(i, j) = C(i, j) + A(i, k) * B(k, j);
        end
    end
end
toc;

%i
A = rand(4);
det(A)
eig(A)
poly(A)
rank(A)

%j
w = rand(1,12);
Y = reshape(w, 3, 4)

%k
a = 7/3;
b = 2.33;
n = 0:7;

an = a.^n
bn = b.^n
abs(an - bn)

%l
sin(pi/4)^5
log(sqrt(5))
abs(3-2i)