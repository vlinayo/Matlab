%Veronica Liñayo
%08-10615
%Calcula el minimo y lo evalua en un punto dado.
function [p,z]= mineval(n,xh)
x = linspace(-1, +1, 13);
y = abs(x);
p=polyfit(x,y,n); 
z=polyval(p,xh);
plot(x,y,'*',x,y,xh,z,':')
end