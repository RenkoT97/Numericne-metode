f = @(x)[e^x];
df = @(h,x)[(f(x+h)-f(x-h))/(2*h)];
ddf = @(h,x)[(f(x+h)-2*f(x)+f(x-h))/h^2];
d = [];
dd = [];
napakad = [];
napakadd = [];
for j=2:9
  h = 10^(-j);
  d = [d df(h,0)],
  dd = [dd ddf(h,0)];
  napakad = [napakad abs(e^0-df(h,0))];
  napakadd = [napakadd abs(e^0-ddf(h,0))];
endfor
[napaka, indeks] = min(napakad)