%c
x = [0:pi/6:2*pi];
h = 2^-10;
w = bladPochodna(x', @func1, @funcDokl, h)

%d
n = [-2, -6, -10, - 15, -20];
xx = pi/3;
hh = 2.^n;
ww = bladPochodna(xx, @func1, @funcDokl, hh')

W = bladPochodna(x, @func1, @funcDokl, hh')

colnames = ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13"];
rownames = ["h1", "h2", "h3", "h4", "h5"];

c = array2table(W, "VariableNames", colnames, "RowNames", rownames);
