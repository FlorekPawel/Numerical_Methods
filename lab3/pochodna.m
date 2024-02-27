function[yPrzyb] = pochodna(x,f,h)
% wyznaczenie przybliżonej pochodnej za pomocą ilorazu...,
% gdzie....

if nargin == 2
    h = 2^-12;
end

yPrzyb = (f(x+h) - f(x-h))./(2*h);

end