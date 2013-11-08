load datalab8p2v2.mat
%n=[5;7;12;15];
input n=
x0=linspace(-3,2,n);
for i=1:n
    y(i)=3*x(i)*exp(x(i))- exp(2*x(i));
end
p=difdiv(x0,y);
pn(x)=horner(coef,x0);
x1=linspace(-3,2,100);
plot(x1,pn(x),'b+:',x1,y(i),'r.-')
hold on

