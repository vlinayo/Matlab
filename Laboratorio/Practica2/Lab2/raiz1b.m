%Veronica Li�ayo
%Carnet: 08-10615
%funci�n que calcula la primera soluci�n de la ra�z (1), es decir, la
%obtenida de realizar la resta en el numerador.
function[x2]=raiz1b(a,b,c)
x2=(-b - sqrt(b^2 - 4*a*c))/(2*a);
end