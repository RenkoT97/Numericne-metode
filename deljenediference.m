<<<<<<< HEAD
function dd = deljenediference(f, a, b, n)
  h=(b-a)/n;
  tocke = [];
  vrednosti = [];
  for i=0:n
    tocke = [tocke a+i*h];
    vrednosti = [vrednosti f(a+i*h)];
  endfor
  for i in tocke
    for j in tocke
      ddprvi
    endfor
  endfor
end

=======
function dd = deljenediference(f, a, b, n)
  h=(b-a)/n;
  tocke = [];
  vrednosti = [];
  for i=0:n
    tocke = [tocke a+i*h];
    vrednosti = [vrednosti f(a+i*h)];
  endfor
  for i in tocke
    for j in tocke
      ddprvi
    endfor
  endfor
end

>>>>>>> 249c14f25cd9b6c1f390bb48d171d9a76148a365
deljenediference(@(x) (cos(2*x+2))^2,0,1,5)