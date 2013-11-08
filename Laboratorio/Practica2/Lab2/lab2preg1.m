%Veronica Liñayo
%Carnet: 08-10615
%Pregunta 1.c
format long

%double%
a1=1;
b1=3000.001;
c1=3;

%single%
a2=single(1);
b2=single(3000.001);
c2=single(3);

%entonces las raices de precision doble serian

sol1=raiz1(a1,b1,c1);
sol2=raiz2(a1,b1,c1);
sol3=raiz3(a1,b1,c1);
sol4=raiz4(a1,b1,c1);

% Y las reaices de precision simple son

res1=raiz1(a2,b2,c2);
res2=raiz2(a2,b2,c2);
res3=raiz3(a2,b2,c2);
res4=raiz4(a2,b2,c2);

x1=-0.001;
x2=-3.000;

%el error absoluto de la raiz 1 para las raices de precision doble seria

ab1=abs(x1-sol1);
ab2=abs(x1-sol2);
ab3=abs(x1-sol3);
ab4=abs(x1-sol4);

%el error absoluto de la raiz 1 para las raices de precision simple seria

ab5=abs(x1-res1);
ab6=abs(x1-res2);
ab7=abs(x1-res3);
ab8=abs(x1-res4);

%el error absoluto de la raiz 2 para las raices de precision doble seria

slto1=abs(x2-sol1);
slto2=abs(x2-sol2);
slto3=abs(x2-sol3);
slto4=abs(x2-sol4);

%el error absoluto de la raiz 2 para las raices de precision simple seria

slto5=abs(x2-res1);
slto6=abs(x2-res2);
slto7=abs(x2-res3);
slto8=abs(x2-res4);

%ahora calculo el error relativo de la misma forma que el error absoluto.
%el error relativo porcentual de la raiz 1 para las raices de precision doble seria

re1=(abs(x1-sol1)/(x1))*100;
re2=(abs(x1-sol2)/(x1))*100;
re3=(abs(x1-sol3)/(x1))*100;
re4=(abs(x1-sol4)/(x1))*100;

%el error relativo porcentual de la raiz 1 para las raices de precision simple seria
re5=(abs(x1-res1)/(x1))*100;
re6=(abs(x1-res2)/(x1))*100;
re7=(abs(x1-res3)/(x1))*100;
re8=(abs(x1-res4)/(x1))*100;

%el error relativo porcentual de la raiz 2 para las raices de precision doble seria

lat1=(abs(x2-sol1)/(x2))*100;
lat2=(abs(x2-sol2)/(x2))*100;
lat3=(abs(x2-sol3)/(x2))*100;
lat4=(abs(x2-sol4)/(x2))*100;

%el error relativo porcentual de la raiz 2 para las raices de precision simple seria

lat5=(abs(x2-res1)/(x2))*100;
lat6=(abs(x2-res2)/(x2))*100;
lat7=(abs(x2-res3)/(x2))*100;
lat8=(abs(x2-res4)/(x2))*100;

%comparamos el valor de b^2 y 4*ac.

cuadradob=b1^2;
cuadradob2=b2^2;
doble=4*a1*c1;
simple=4*a2*c2;

% el cuadrado de las b1 y b2 debe ser mayor o igual a doble o simple, de forma que la raiz
% simple sea positiva, para el caso de la ecuacion1, y para la ecuacion2,
% b al cuadrado debe ser mayor que doble y simple, para que la raiz no sea cero ni
% negativa.

% en cuanto al error relativo porcentual y al error absoluto obtenidos se
% deben debido a la cancelación catastrófica originada por la raíz que se
% tiene en la resolvente que se utiliza para obtener las raíces del
% polinomio en cuestión.


%la aproximación más adecuada es la raiz3, la cual representa a la segunda
%ecuacion evaluada para el caso positivo, es decir, ((-2*c)/(b + sqrt(b^2 -
%4*a*c)).