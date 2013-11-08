function [lambda,v] = ptraslado(A,s,x,tol,maxiter)
relerr = inf;
nt = 1;
I = eye(size(A));
while relerr >= tol && nt < maxiter,
   z = x/norm(x,2);
   x = (A-s*I)*z;
   l1 = z'*x;
   nt = nt+1;
end
lambda= s+l1 ;
v= z;
end