% Jacobi

function [x,i] = jacobi(A,b,x0,e)
re = inf;
s = diag( diag(A) );
T = s - A;
i = 1;
while (re >= e && y <10000)
   x=s \ (b+T*x0);
   re = norm( x-x0,inf )/norm( x,inf );
   x0 = x;
   i = i+1;
end