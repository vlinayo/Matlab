load datalab8p2v2.mat

%Pregunta 2

coef3 = difdiv(x,y);% Matriz de Coeficientes

t = [-1 ; -0.5 ; 0 ; 0.5 ; 1.5 ]
y1 = horner(coef3,t);% Evaluacion del Polinomio

y2 = exp( - t .^ 2 ) .* sin ( pi .* ( t .^ 3 ) ./ 4 );% funcion evaluada en t

Error = abs(y2-y1);% Error relativo

plot(x,y,'o',t,y1,'rs-',t,y2,'m+')
legend('Datos Reales','Interpolacion de Newton', 'f(t)')


%
%
%
%



    