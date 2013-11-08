function [coef] = interp_newton(x, y)
n = length(x);
A = zeros(n,n);
A(:,1) = y;

% Obtenemos las Diferencias Divididas.
    for i = 2: n     
        for j = 2: i  
		    A(i,j) = (A(i,j-1) - A(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
    %Y como lo que buscamos son los coeficientes, por diferencias
    %divididas sabemos que los coeficientes ser�n la diagonal de la matriz
    %A, por lo tanto:
    coef = diag(A);
end
