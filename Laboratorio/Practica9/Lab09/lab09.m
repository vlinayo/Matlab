%Veronica Liñayo
%08-10615
%Interpolacion de Spline y Hermite Cubico usando los comandos de matlab.

format long
load vectorx.mat
load vectory.mat
n=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20];

%Metodo de Spline
ht=linspace(1,20);

m=spline(n,x);
hx=ppval(m,ht);
c=spline(n,y);
hy=ppval(c,ht);

figure(1);
hold on
title('Interpolacion Por Spline');
hold on
xlabel('Eje X');
hold on
ylabel('Eje Y');
hold on

figure(2);
hold on
title('Interpolacion Hermite Cubico');
hold on
xlabel('Eje X');
hold on
ylabel('Eje Y');
hold on

%Primera Figura del Lienzo
figure(1);
hold on
subplot(1,3,1);
hold on
plot(n,x,'-*k');
hold on
plot(ht,hx,'b');
hold on
legend('pares(n,x)','pares(ht,hx)');
hold on

%Segunda Figura del Lienzo

subplot(1,3,2);
hold on
plot(n,y,'-*k');
hold on
plot(ht,hy,'r');
hold on
legend('pares(n,y)','pares(ht,hy)');
hold on

%Tercera Figura del Lienzo
subplot(1,3,3);
hold on
plot(x,y,'*k');
hold on
plot(hx,hy,'-k');
hold on
legend('Interpolacion por Spline');
hold on

%Metodo de Hermite Cubico

a=pchip(n,x);
hx1=ppval(a,ht);

b=pchip(n,y);
hy1=ppval(b,ht);

%Primera Figura del Lienzo
figure(2);
hold on
subplot(1,3,1);
hold on
plot(n,x,'-*k');
hold on
plot(ht,hx1,'b');
hold on

%Segunda Figura del Lienzo

subplot(1,3,2);
hold on
plot(n,y,'-*k');
hold on
plot(ht,hy1,'r');
hold on

%Tercera Figura del Lienzo
subplot(1,3,3);
hold on
plot(x,y,'*k');
hold on
plot(hx1,hy1,'-k');
hold on
