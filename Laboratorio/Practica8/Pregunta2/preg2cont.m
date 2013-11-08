%En este script se anadieron nuevos puntos -2, -1,5, -0,5, se
%escogieron estos puntos ya que la interpolacion fallaba justo en dichos
%puntos, el margen de error era grand ya q el punto d interpolacion y el d
%elos valores reales estaban muy separados

coef3 = difdiv(x,y);% Matriz de Coeficientes

t = [-2 ; -1.5 ; -1 ; -0.5 ; 0 ; 0.5 ; 1 ; 1.5 ]
y1 = horner(coef3,t);% Evaluacion del Polinomio

y2 = exp( - t .^ 2 ) .* sin ( pi .* ( t .^ 3 ) ./ 4 );% funcion evaluada en t

%Error = abs(y2-y1);% Error relativo

plot(x,y,'o',t,y1,'rs-',t,y2,'m+')
legend('Datos Reales','Interpolacion de Newton', 'f(t)')


%Se deberia anadir los ptos -2, -1,5, -0,5, 1,5
%Pregunta 3