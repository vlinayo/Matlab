%Veronica Liñayo
%Carnet: 08-10615
function [s]=errork(k)
b = [4;1];
x=[3;4]; %solucion exacta calculada en terminos de epsilon.
r = 10.^-k;
A = [r,2; 1,-1];
x1 =gauss(A,b);
B = x1 - x;
s = norm(B,2);
end



