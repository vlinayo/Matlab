load datos.mat
A = interp_cub_trozos(x,y);
B = interp_newton(x,y);
% Grafico los puntos
plot(x,y,'r*')
hold on
% Grafico el Spline

for i = 1: length(x)-1
    p = (x(i): .0001: x(i+1))';   
    q = zeros(length(p),1);
        
for j = 1: length(q)
  q(j) = horner(A(i,:), p(j));
end
    
plot(p,q,'b-') 
hold on
end

% Se Grafica la interpolacion de Newton
p = (x(1): .0001: x(length(x)))'; 
q = zeros(length(p),1);

for j = 1: length(q)
    q(j) = Horner(B, p(j));
end

plot(p,q,'g-')  
hold on

% Coloco algunos detalles en la grafica
xlabel X
ylabel Y
grid on
title 'Grafica long_arco'