%Veronica Liñayo
%08-10615
%Utiliza newton.m y lagrange.m

%Script que sustituye el funcionamiento del dispositivo defectuoso.

t=0:10;
y=sin((2*pi*t)/5);
%yt=2*pi*cos(2*pi*t/5)/5;

%donde y es la frecuencia de transmisión y t representa al tiempo.
%yt es la derivada de y en funcion de t, esto es para el caso de hermite.

%Implementamos el metodo de interpolación de Newton, obteniendo los
%coeficientes del polinomio.

p1=newton(t,y);
coef1=polyval(p1,t);

%Implementamos el metodo de interpolación de Lagrange.

p=lagrange(t,y);
coef2=polyval(p,t);

figure(1);
title('Interpolacion Newton y Lagrange');
xlabel('Eje X tiempo');
ylabel('Eje Y: señal ');
hold on

figure(2);
title('Interpolacion Newton extrapolacion');
xlabel('Eje X tiempo');
ylabel('Eje Y: señal ');
hold on

figure(1);
plot(t,y,'k');
hold on

plot(t,coef1,':m');
hold on

plot(t,coef2,'-.b');
hold on

f0= 0;
f1= 0.95106;
f2= 0.58779;
f3= -0.58779;
f4= -0.95106;
f5= 0;
f6= 0.95106;
f7= 0.58779;
f8= -0.58779;
f9= -0.95106;
f10= 0;
plot(0,f0,'*r',1,f1,'*r',2,f2,'*r',3,f3,'*r',4,f4,'*r',5,f5,'*r',6,f6,'*r',7,f7,'*r',8,f8,'*r',9,f9,'*r',10,f10,'*r');
legend('función a interpolar ','interpolacion de newton','interpolacion de lagrange','datos proporcionados');


figure(2);
plot(t,y,'k');
hold on
x=2:10;
y1=sin((2*pi*x)/5);
p2=newton(t,y);
coef1d=polyval(p2,x);
plot(x,coef1d,'--b');
hold on
plot(0,f0,'*r',1,f1,'*r',2,f2,'*r',3,f3,'*r',4,f4,'*r',5,f5,'*r',6,f6,'*r',7,f7,'*r',8,f8,'*r',9,f9,'*r',10,f10,'*r');
legend('funcion a interpolar','interpolacion de newton','datos proporcionados');

