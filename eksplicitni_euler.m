function [y] = eksplicitni_euler(xn,yn,F,h)
  y = yn + h*F(xn,yn);
endfunction