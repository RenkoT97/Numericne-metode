f = @(x) (cos(2*x+2))^2;
a = 0;
b = 1;
n = 3;
sez = [];
for i=0:(n+2)
  sez = [sez f(i/(n+2))];
endfor
