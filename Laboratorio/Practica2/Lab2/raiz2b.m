%Veronica Liñayo
%Carnet: 08-10615
%función que calcula la primera solución de la raíz (2), es decir, la
%obtenida de realizar la resta en el denominador.
function[y2]=raiz2b(a,b,c)
y2= (-2*c)/(b - sqrt(b^2 - 4*a*c));
end