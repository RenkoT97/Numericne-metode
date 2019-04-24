A = diag([0.1 0.2 0.3 0.4 0.5]) + diag([0 7 2 2], 1);
rand('state', 0);
X = rand(5);
B = X*A*inv(X);
C = hess(B);
D = hess(B);
k = 0;
while any(abs(diag(B, -1)) >= 10^(-8))
  k = k+1;
  [Q,R] = qr(B);
  B = R*Q;
end
k
n = 0;
while any(abs(diag(C, -1)) >= 10^(-8))
  n = n+1;
  sigma = C(5,5);
  [q,r] = qr(C - sigma * eye(5));
   C = r*q + sigma * eye(5);
end
n
i = 0;
while any(abs(diag(D, -1)) >= 10^(-8))
  i = i+1;
  a = eig(D(4:5,4:5));
  sigma1 = a(1);
  sigma2 = a(2);
  [q,r] = qr(D - sigma1 * eye(5));
   D = r*q + sigma1 * eye(5);
   [Q,R] = qr(D - sigma2*eye(5));
   D = R*Q+sigma2*eye(5);
end
i