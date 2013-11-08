load datalab8p2v2.mat 
coef = difdiv(x,y)
x0=linspace(-2,7,100)';
for xt=-1:1.5
y1=horner(coef,xt);
end
plot(x,y,'*',x0,y1)
hold on
plot(x,y,'c:')
legend('Interpolacion de Newton')