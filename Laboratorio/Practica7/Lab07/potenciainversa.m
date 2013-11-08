
function [lambda,v] = potenciainversa(A,x0,tol,maxiter)
relerr = inf;
nt = 1;
while relerr > tol && nt < maxiter,
   z = x0/norm(x0,2);
   [L,U]=lu(A);
   y=L\z;
   x=U\y;
   l=z'*x;
   nt = nt+1;
end
lambda= abs(1/l);
v=z;
end
