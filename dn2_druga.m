f = @(x)[sin(x)/(1+x^2)];
a = -1;
b = 2;
dolzina_intervala = b-a;
st_osnovnih_pravil = 20;
st_osnovnih_pravil2 = 10;
n = st_osnovnih_pravil * 3;
m = st_osnovnih_pravil2 * 3;
h = dolzina_intervala/n;
h2 = dolzina_intervala/m;
tocke = a:h:b;
tocke2 = a:h2:b
I1 = 0;
I2 = 0;
while(length(tocke)>1)
  i=1;
  I1 = I1 + 3*h*(f(tocke(i))+3*f(tocke(i+1))+3*f(tocke(i+2))+f(tocke(i+3)))/8;
  tocke(1:3) = [];
endwhile
while(length(tocke2)>1)
  i=1;
  I2 = I2 + 3*h2*(f(tocke2(i))+3*f(tocke2(i+1))+3*f(tocke2(i+2))+f(tocke2(i+3)))/8;
  tocke2(1:3) = [];
endwhile
I = (16*I1-I2)/15
Iu = quad(f,a,b)
I-Iu
