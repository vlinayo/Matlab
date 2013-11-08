%
% David Prieto 08-10899
%

load DataLab8.mat

% 1.1 
coef = natural(x,y)

% 1.2  
coef2 = newton(x,y)


x0=linspace(-2,7,100)';
y0=hornerV(coef,x0);
y1=hornerV(coef2,x0);
    

plot(x,y,'o',x0,y0,'g+:',x0,y1,'rs-')
legend('Datos Reales','Interpolacion Natural','Interpolacion de Newton')