A = diag(2*ones(100,1)) + diag(-ones(99,1), 1) + diag(-ones(99,1),-1);
sigma = 1;
lambda=1;
k = 0;
z = [1 zeros(1,99)]';
B = inv(A-lambda*diag(ones(100,1)));
y = B*z;
while norm(y-lambda*z,2) > 10^(-10)
  k = k+1;
  z = y / norm(y);
  y = B*z;
  lambda = z'*y;
end
k
lambda = sigma + 1/lambda