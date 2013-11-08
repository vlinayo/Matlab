% Metodo de la Potencia 
% Entrada:
%   A       - Matriz de Coeficientes.
%   x       - Autovector inicial [1;1;1;1;1]
%   tol     - tolerancia: 1*10^-8
%   maxiter - Maximo numero de iteraciones
%
% Salida:
%   lambda  - Valor del mayor de los autovalores.
%   v       - Valor del autovector.
% Otros:
%   relerr  - Error Relativo estimado para norma infinito
%   nt   - Numero de iteraciones ejecutadas.

function [l1,x] = potencia(A,x0,tol,maxiter)
relerr = inf;
nt = 1;
x0= x0/norm(x0);
y = A*x0;
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
