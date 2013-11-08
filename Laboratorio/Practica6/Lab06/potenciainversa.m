
function [l1,x] = potenciainversa(A,x0,tol,maxiter)
relerr = inf;
nt = 1;
x0= x0/norm(x0);
Y=LU(A);
y = Y\x0;
l1 = x0'*y;
    while relerr > tol && nt < maxiter,
       x=y;
       x=x/norm(x);
       y=A*x;
       l2=x'*y;
       l1=l2;
       nt = nt+1;
    end
    l1=abs(l1);
end