%Veronica Liñayo
%08-10615
%Calcula el metodo del minimo sin evaluar en ningun punto dado.
function [p]= minimos(n)
x = linspace(-1, +1, 13);
y = abs(x);
p=polyfit(x,y,n); 
end