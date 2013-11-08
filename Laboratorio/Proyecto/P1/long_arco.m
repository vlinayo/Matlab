x = load('x.txt');
y = load('y.txt');

M = interp_cub_trozos(x,y);
C = interp_newton(x,y);

% Grafico los puntos
plot(x,y,'r*')
hold on

% Grafico la interpolacion cubica a trozos
for i = 1: length(x)-1
    p = (x(i): .0001: x(i+1))';   % Vectores auxiliares para graficar
    q = zeros(length(p),1);
    v = [x(i) x(i) x(i)]';
    
    for j = 1: length(q)
        q(j) = Horner(M(i,:), v, p(j));
    end
    
    plot(p,q,'b-')                % Se grafica cada trozo de spline en azul
    hold on
end

% Grafico la interpolacion de Newton
p = (x(1): .0001: x(length(x)))';   % Vectores auxiliares para graficar
q = zeros(length(p),1);

for j = 1: length(q)
    q(j) = Horner(C, x, p(j));
end

plot(p,q,'g-')                    % Se grafica el polinomio en verde
hold on

% Coloco algunos detalles en la grafica
xlabel X
ylabel Y
grid on
title 'Ajuste Polinomico'

%syms x0;
%dS = inline( diff( Horner( C, x, x0 ), x0 ) );
%long_arco_cal( dS, 1, 2 )

