%Verónica Liñayo
% 08-10615
clear all
clc
format long
x=8.3;
s=1;
for i=1:25
    s=s+(-1)^i*x^i/factorial(i);
end
s
s=1;
for i=1:25
    s=s+x^i/factorial(i);
end
t=1/s

% Al comparar los resultados obtenidos en la parte 1 y 2 del ejercicio con el resultado real  2.485168e-04 se observa que el que mas se parece,
% es el de la parte 2, y esto es debido a que existen errores de cancelacion por la division de numeros de magnitudes diferentes.
