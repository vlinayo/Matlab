%Veronica Liñayo
%Carnet: 08-10615
%Pregunta 1.7
function x = gauss(A,b)
% Obtenemos el tamaño de A
n = length(A);
% Eliminación hacia adelante.
for i = 1:n-1
  for j = i+1:n
        m = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - m*A(i,:);
        b(j) = b(j) - m*b(i);
  end
end
% Inicializo el vector solución
x = zeros(n,1);
% Sustitución hacia atrás.
x(n) = b(n)/A(n,n);
for i = n-1:-1:1
  x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
end