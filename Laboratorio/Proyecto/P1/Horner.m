% ANIDACION DE HORNER
%   Entrada: vector a de tamano n los coeficientes del polinomio,
%            vector x de los nodos del polinomio, constante xo en donde se
%            desea evaluar el polinomio.
%   Salida:  valor del polinomio en xo
%
function [p] = Horner(a, x, xo)

    n = length(a);
    b(n) = a(n);
    
    for j = n-1: -1: 1
        b(j) = a(j) + b(j+1)*(xo-x(j));   % Evaluacion en forma de Newton
    end
    
    p = b(1);
    
% Nota: Esta funcion recibe el vector x para realizar la evaluacion de los
%       polinomios de la forma de Newton (el cual incluye splines). Si bien
%       no es la forma del algoritmo de Horner original, aplica el mismo
%       principio para evaluar el polinomio.