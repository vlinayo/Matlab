%Veronica Liñayo
%08-10615
%Gauss-Seidel

function [x,numiter] = gausseid(A,b,x0,e,maxit)

for k=1:maxit
    re = inf;
    s = tril(A);
    t = s - A;
    numiter=1;
  
    while re >= e && e <10000
        x = s \ (b + (t*x0));
        re = norm( x-x0,inf )/norm( x,inf );
        x0 = x;
        numiter=numiter+1;
    end
    k=k+1;
end
end


