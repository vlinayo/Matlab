function [lambda,v] = pottras(A,s,x,tol,maxiter)

relerr = inf;
niter = 1;

I = eye(size(A));

while relerr >= tol && niter < maxiter,
   z = x/norm(x,2);
   x = (A-s*I)\z;
   alpha1 = z'*x;
   niter = niter+1;
end
lambda = s+1/alpha1;
v = z;