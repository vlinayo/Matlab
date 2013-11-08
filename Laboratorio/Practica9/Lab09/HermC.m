%Veronica Liñayo
%08-10615
%Hermite Cubico

function [a,b,c,d] = HermC(x,y,s)
n = length(x);
a = y(1:n);
b = s(1:n);
Dx = diff(x);
Dy = diff(y);
D = Dy ./ Dx;
c = (D - s(1:n-1)) ./ Dx;
d = (s(2:n) + s(1:n-1) - 2*D) ./ (Dx .* Dx);
 end