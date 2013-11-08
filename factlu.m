function [XLU] = factlu(A,b)
% Obtenemos el tama�o de A
n = length(A);
% Eliminaci�n hacia adelante.
for i = 1:n-1
  for j = i+1:n
        m = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - m*A(i,:);
        b(j) = b(j) - m*b(i);
  end
end
% Inicializo el vector soluci�n
XLU = zeros(n,1);
% Sustituci�n hacia atr�s.
XLU(n) = b(n)/A(n,n);
for i = n-1:-1:1
  XLU(i) = (b(i) - A(i,i+1:n)*XLU(i+1:n))/A(i,i);
end