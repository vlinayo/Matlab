%Veronica Li�ayo
%Carnet: 08-10615
%funci�n que calcula la primera soluci�n de la ra�z (2), es decir, la
%obtenida de realizar la resta en el denominador.
function[y2]=raiz2b(a,b,c)
y2= (-2*c)/(b - sqrt(b^2 - 4*a*c));
end