function [y] = implicitni_euler(xn,yn,F,h,n)
  y = yn; 
  for i = 1:n
    x = xn + h;
    y = yn + h*F(x,y);
  end
endfunction