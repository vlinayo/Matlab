%Veronica Liñayo
%Carnet: 08-10615
%función que calcula la primera solución de la raíz (1), es decir, la
%obtenida de realizar la resta en el numerador.
function[x2]=raiz1b(a,b,c)
x2=(-b - sqrt(b^2 - 4*a*c))/(2*a);
end