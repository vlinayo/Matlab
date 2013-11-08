%Veronica Liñayo
%08-10615
%Interpolacion de Spline y Hermite Cubico usando la implementacion
%programada en los scripts de matlab splineN.m y HermC.m

format long
load vectorx.mat
load vectory.mat
n=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20];
n1=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21];

%Metodo de Spline
ht=linspace(1,20);

X=[n';x'];
Y=[n';y'];

[z,g,v,d]=splineN(X);
px=mkpp(n1,z);
hx=ppval(px,ht);

[e,r,t,l]=splineN(Y);
py = mkpp(n1,e);

hy=ppval(py,ht);

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

a=HermC(n,x,n);
px1=mkpp(n1,a);
hx1=ppval(px1,ht);

b=HermC(n,y,n);
px2=mkpp(n1,b);
hy1=ppval(px2,ht);

%Primera Figura del Lienzo
figure(2);
hold on
subplot(1,3,1);
hold on
plot(n,x,'-*k');
hold on
plot(ht,hx1,'b');
hold on
legend('pares(n,x)','pares(ht,hx)');
hold on

%Segunda Figura del Lienzo

subplot(1,3,2);
hold on
plot(n,y,'-*k');
hold on
plot(ht,hy1,'r');
hold on
legend('pares(n,y)','pares(ht,hy)');
hold on

%Tercera Figura del Lienzo
subplot(1,3,3);
hold on
plot(x,y,'*k');
hold on
plot(hx1,hy1,'-k');
hold on
legend('Interpolacion por Hermite Cubico');
hold on

