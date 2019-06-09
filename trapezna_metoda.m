function [y] = trapezna_metoda(xn,yn,F,h,n)
  y = eksplicitni_euler(xn,yn,F,h); % prediktor
  for i = 1:n
    x = xn + h
    y = yn + h*(F(xn,yn) + F(x,y))/2;
  end
endfunction