%Veronica Liñayo
%08-10615
load yhs.mat
xh =linspace(-1,1,100);
x = linspace(-1, +1, 13);
y = abs(x);
g=spline(x,y,xh);
plot(x,y,'-*k');
hold on
plot(xh,g,':r');

legend('par xy', 'curva de spline');
title('Interpolacion de Spline Cubico');
xlabel('Eje X desde -1 hasta 1');
ylabel('Eje Y (funcion de x): abs(x)');