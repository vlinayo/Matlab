function [lambda,v] = potencia(A,x,tol,maxiter)
relerr = inf;
nt = 1;
while relerr > tol && nt < maxiter,
   z = x/norm(x,2);
   x = A*z;
   l1 = z'*x;
   nt = nt+1;
end
lambda= l1;
v= z;
end