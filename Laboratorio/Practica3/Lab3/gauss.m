%Veronica Li�ayo
%Carnet: 08-10615
%Pregunta 1.7
function x = gauss(A,b)
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
x = zeros(n,1);
% Sustituci�n hacia atr�s.
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
  x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
end