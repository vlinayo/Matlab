% Seidel

function [x,numiter] = gausseid(A,b,x0,e)
re = inf;
s = tril(A);
t = s - A;
numiter = 1;

while re >= e 
   x= s \ (b+t*x0);
   re = norm( x-x0,inf )/norm( x,inf );
   x0 = x;
   numiter = numiter+1 ;
end


