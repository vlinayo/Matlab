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
