% Metodo de la Potencia Inversa, calcula el menor de los autovalores

function [lambda,v] = potinv(A,x,tol,maxiter)

relerr = inf;
niter = 1;

while relerr >= tol && niter < maxiter,
   z = x/norm(x,2);
   x = A\z;
   y = z'*x;
   niter = niter+1;
end
lambda = 1/y;
v = z;