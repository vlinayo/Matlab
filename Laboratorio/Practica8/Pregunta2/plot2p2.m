%Agregando los puntos al x dado, se asigna el nombre de x2 a este nuevo x, y se corre
%este programa para obtener la grafica.
% pero da un error debido a que X y Y son de distinto tamaño.
load datalab8p2v2.mat
coef = difdiv(x2,y)
x0=linspace(-2,7,100)';
for xt=-2.5:2.5
y1=horner(coef,xt);
end
plot(x2,y,'*',x0,y1)
hold on
plot(x,y,'c:')
legend('Interpolacion de Newton')