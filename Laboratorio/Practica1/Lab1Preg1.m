%Verónica Liñayo
% 08-10615
clear all
clc
format long
n=10000;
for i= 1:n
    suma= sum(1/i)^i;
end
suma

% al sumar 1/n, n veces, se deberia obtener 1,
% el matlab nos arroja como resultado que suma=0, esto
% ocurre debido a que los numeros con los que se trabajan son muy pequeños
% y se origina un error de truncamiento, de forma que un numero como
% 0,00010010001 matlab lo asume como 0.
