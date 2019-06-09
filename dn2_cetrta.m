k1 = h * F(xn,yn);
k2 = h * F(xn + h/2, yn + k1/2);
k3 = h * F(xn + h/2, yn + k2/2);
k4 = h * F(xn + h, yn + k3);
y = Yn + k1/6 + k2/3 + k3/3 + k4/6