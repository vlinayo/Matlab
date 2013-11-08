%Veronica Liñayo
%08-10615
%Uiliza newton.m y lagrange2.m

load vectorx.mat
load vectory.mat
n=[1;2;3;4;5;6];

%Metodo de Newton
ht=linspace(1,6);
d=newton(n,x);
hx=polyval(d,ht);

c=newton(n,y);
hy=polyval(c,ht);

%Primera Figura del Lienzo

subplot(1,6,1);
hold on
plot(n,x,'-*k');
hold on
plot(ht,hx,'b');
hold on

%Segunda Figura del Lienzo

subplot(1,6,2);
hold on
plot(n,y,'-*k');
hold on
plot(ht,hy,'r');
hold on

%Tercera Figura del Lienzo
subplot(1,6,3);
hold on
plot(x,y,'*k');
hold on
plot(hx,hy,'-k');
hold on

%Metodo de Lagrange
a=lagrange2(n,x);
hx1=polyval(a,ht);

b=lagrange2(n,y);
hy1=polyval(b,ht);

%Primera Figura del Lienzo

subplot(1,6,4);
hold on
plot(n,x,'-*k');
hold on
plot(ht,hx1,'b');
hold on

%Segunda Figura del Lienzo

subplot(1,6,5);
hold on
plot(n,y,'-*k');
hold on
plot(ht,hy1,'r');
hold on

%Tercera Figura del Lienzo
subplot(1,6,6);
hold on
plot(x,y,'*k');
hold on
plot(hx1,hy1,'-k');


%Podemos ver que ambos métodos permiten generar fuentes de manera
%eficiente, lo importante es seleccionar puntos aleatorios, es decir que no coincidan entre sí,
%y que la letra a generar sea "suave". De esta forma se podrá obtener la
%fuente en digital.
