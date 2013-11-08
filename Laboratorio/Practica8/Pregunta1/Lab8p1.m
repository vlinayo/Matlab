
load datalab8p1v2.mat 
coef = difdiv(x,y);
n = length(x)-1;
x0=linspace(-2,7,100)';
for pto=0:n;
y1=hornerV(coef,pto);
end
plot(x,y,'*',x0,y1)
hold on
plot(x,y,'c:')
legend('Interpolacion de Newton')