%Verónica Liñayo
% 08-10615
clear all
clc
format long
x= rand(1000,1);
y=10^(-5)*x;
suma=10^12;
for i=1:1000
    suma = suma +y(i,1);
end
suma
suma2=0;
for j=1:1000
    suma2=suma2 + y(j,1);
end
suma2=suma2+10^12

C=eq(suma,suma2);
if C==0
    'las sumas no son iguales'
else C=1;
    'las sumas son iguales'
end

    
%suma y suma2 no son iguales.
%esto lo demostramos mediante la implementacion del siguiente comando,
%C=eq(suma,suma2), lo que nos arroja como resultado 0, lo que implica que
%es falso.
%El mas exacto entre ambos seria suma2, dado que el primero itera 1000
%veces el valor 10^12 + y(i,1), lo que causa un error que
%se origina por los errores de magnitud, resta y división del matlab.
