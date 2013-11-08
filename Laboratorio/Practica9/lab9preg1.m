load datalab9p1v2.mat
plot(x,y,'-b')
hold on
% n sera  número de veces maxima en el que queremos evaluar al polinomio.
%asignaremos n igual a
n= 5;
C= mincuad(x,y);
for i=1:n
    P(i)=Horner(C,i);
end
plot(P,'*r')
hold on

%Inicializamos los 4 vectores de coeficientes de los polinomios de aproximacion que graficaremos

A=[1.5;-0.009;-0.009];
B=[1.5;0.05;0.05];
D=[1.5;-0.005;-0.05];
E=[1.5;-0.09;-0.09];

for i=1:n
    Q(i)=Horner(A,i);
end
plot(Q,'*m')
hold on

for i=1:n
    R(i)=Horner(B,i);
end
plot(R,'*g')
hold on

for i=1:n
    S(i)=Horner(D,i);
end
plot(S,'*y')
hold on

for i=1:n
    T(i)=Horner(E,i);
end
plot(T,'*c')
hold on

xlabel('X eje de las abscisas');
ylabel('Y eje de las ordenadas');
title('Ajuste de datos mediante un polinomio usando minimos cuadrados');

%En la Grafica Observamos en color Azul la función formada por los vectores
%x,y.  y luego vemos las graficas que corresponden a los polinomios
%calculados en el script donde:
%el verde, morado, amarillo y azul claro, son los polinomios escogidos a
%conveniencia a fin de lograr una mejor aproximación de la función.
%el rojo representa al polinomio que obtenemos de los vectores x,y al
%principio del ejercicio 1 usando minimos cuadrados y horner para
%evaluarlos en un punto dado.

%Nota: Los 4 Polinomios escogidos a conveniencia, se formaron a partir de
%la grafica que se obtenía de plot(x,y) y de graficar el polinomio con los
%coeficientes obtenidos usando minimos cuadrados de x,y; viendo ambas
%funciones en una grafica se observó que la función toma valores entre
%[-1,1] y así, sabiendo como es la grafica del polinomio, manipulamos los 4
%polinomios a conveniencia a fin de obtener aproximaciones a la gráfica.

%Nota 2: Debemos tomar en cuenta que la función toma valores entre [-1,1]
%mientras que los polinomios no asumen sino valores positivos.
