%Veronica Liñayo
%Grafica
%08-10615
load yhs.mat
xh=linspace(-1,1,100);
x = linspace(-1, +1, 13);
y = abs(x);

plot(xh,yh1,':b');
hold on
plot(xh,yh2,':r');
hold on
plot(xh,yh3,':c');
hold on
plot(xh,yh4,':g');
hold on
plot(xh,yh5,':m');
hold on
plot(xh,yhq,':y');
hold on
plot(x,y,'-*k');
legend('azul:polinomio de grado 2 evaluado en xh ','rojo: polinomio de grado 3 evaluado en xh','cyan: polinomio de grado 6 evaluado en xh','verde: polinomio de grado 7 evaluado en xh','magenta: polinomio de grado 10 evaluado en xh','amarillo: polinomio de interpolacion evaluado en xh','pares x y');

title('Interpolacion Polinomica');
xlabel('Eje X desde -1 hasta 1');
ylabel('Eje Y (funcion de x): abs(x)');

%errores relativos
y1 = abs(xh);
Er1= abs(yh1-y1)/abs(yh1);
Er2= abs(yh2-y1)/abs(yh2);
Er3= abs(yh3-y1)/abs(yh3);
Er4= abs(yh4-y1)/abs(yh4);
Er5= abs(yh5-y1)/abs(yh5);
Er6= abs(yhq-y1)/abs(yhq);