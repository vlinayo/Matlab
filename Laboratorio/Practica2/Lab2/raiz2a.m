%Veronica Liñayo
%Carnet: 08-10615
%función que calcula la primera solución de la raíz (2), es decir, la
%obtenida de realizar la suma en el denominador.
function[y1]=raiz2a(a,b,c)
y1= (-2*c)/(b + sqrt(b^2 - 4*a*c));
end