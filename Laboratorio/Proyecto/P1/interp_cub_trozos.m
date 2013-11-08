% INTERPOLACION CUBICA A TROZOS
%   Entrada: vectores  x, y = f(x)  de tamano n,
%            constantes  FPO = f'(x(1))  y  FPN = f'(x(n))
%   Salida:  matriz M de tamano (n-1)x(4) donde para i = 1..n-1:
%            Si(t) = M(i,1) + M(i,2)*(t-x(i)) + M(i,3)*(t-x(i))^2 + M(i,4)*(t-x(i))^3
%
function [M] = interp_cub_trozos(x, y, FPO, FPN)

    % Inicializacion
    n = length(x);
    a = y;               % Inicializo los 4 vectores de coeficientes
    b = zeros(n-1,1);
    c = zeros(n,1);
    d = zeros(n-1,1);

    h = zeros(n-1,1);    % Inicializo los vectores con los que
    p = zeros(n,1);      % se construira el spline
    l = zeros(n,1);
    u = zeros(n,1);
    z = zeros(n,1);

    
    for i = 1: n-1         % Inicializacion del vector h
        h(i) = x(i+1)-x(i);
    end
    
    if (nargin == 4)                        % Si se reciben 4 parametros el spline sera amarrado 
        p(1) = 3*(a(2)-a(1))/h(1)-3*FPO;    % y se necesitan inicializaciones distintas
        p(n) = 3*FPN-3*(a(n)-a(n-1))/h(n-1);
    end
    
    for i = 2: n-1         % Inicializacion del vector p
        p(i) = 3*(a(i+1)-a(i))/h(i) - 3*(a(i)-a(i-1))/h(i-1);
    end
    
    if (nargin == 2)       % Inicializacion para el spline natural
        l(1) = 1;
        u(1) = 0;
        z(1) = 0;
    elseif (nargin == 4)   % Inicializacion para el spline amarrado
        l(1) = 2*h(1);
        u(1) = 0.5;
        z(1) = p(1)/l(1);
    end
    
    for i = 2: n-1         % Inicializacion de los vectores l, u e z
        l(i) = 2*(x(i+1)-x(i-1))-h(i-1)*u(i-1);
        u(i) = h(i)/l(i);
        z(i) = (p(i) - h(i-1)*z(i-1))/l(i);
    end
    
    
    if (nargin == 2)       % Inicializacion para el spline natural
        l(n) = 1;
        z(n) = 0;
        c(n) = 0;
    elseif (nargin == 4)   % Inicializacion para el spline amarrado
        l(n) = h(n-1)*(2-u(n-1));
        z(n) = (p(n)-h(n-1)*z(n-1))/l(n);
        c(n) = z(n);
    end
    
    
    % Se terminan de hallar los vectores de coeficientes
    for j = n-1: -1: 1
        c(j) = z(j) - u(j)*c(j+1);
        b(j) = (a(j+1)-a(j))/h(j) - h(j)*(c(j+1)+2*c(j))/3;
        d(j) = (c(j+1)-c(j))/(3*h(j));
    end
    
    
    % Se coloca en una unica matriz los coeficientes del spline
    M(1:n-1,1) = a(1:n-1);
    M(1:n-1,2) = b;
    M(1:n-1,3) = c(1:n-1);
    M(1:n-1,4) = d;
    