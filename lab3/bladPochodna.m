function [w] = bladPochodna(x, f, fd, h)

w = blad(pochodna(x, f, h), fd(x));

end