function [P] = heron(a, b, c)
p = (a+b+c)/2;
P = sqrt(p*(p-a)*(p-b)*(p-c));
end