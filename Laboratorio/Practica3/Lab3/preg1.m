%Veronica Liñayo
%Carnet: 08-10615
% Pregunta 1

%1.1) para n=25, determinante e inversa de A.

A=matriz(25);
dA=det(A);
versa=inv(A);

% 1.2) La solución exacta sería A*x=b, para A= matriz(25) y x=ones(25,1), de
% forma que x es igual a.

x=ones(25,1);
b=A*x;

%1.3) Para calcular A x A^-1 se procede a escribir en matlab lo siguiente: matriz(n) * inv(matriz(n))
% para n=1,2,3,....n. podemos apreciar que mientras mayor es nuestro n la forma de la matriz identidad se pierde,
%esto se debe a que el calculo de la máquina no es exacto, y tambien debido a lo que conocemos como errores de la máquina.
%como podemos ver en los casos para los siguientes n:
%>> matriz(2)*inv(matriz(2))
%ans =
%    1     0
%    0     1

%>> matriz(3)*inv(matriz(3))

%ans =

%   1.0000         0         0
%        0    1.0000         0
%   0.0000         0    1.0000

%>> matriz(4)*inv(matriz(4))

%ans =

%   1.0000         0         0         0
%  -0.0000    1.0000         0         0
%  -0.0000         0    1.0000         0
%  -0.0000    0.0000         0    1.0000

%>> matriz(5)*inv(matriz(5))

%ans =

%   1.0000         0         0         0         0
%  -0.0000    1.0000         0         0         0
%  -0.0000   -0.0000    1.0000   -0.0000    0.0000
%  -0.0000    0.0000         0    1.0000         0
%  -0.0000    0.0000    0.0000   -0.0000    1.0000

%Podemos apreciar como la forma de la matriz identidad se va perdiendo, y 
%al ver el resultado de matriz(25)*inv(matriz(25)) podemos ver que ya la matriz identidad se ha perdido completamente,
%esto se debe a que se esta calculando la inversa de una matriz de tamaño 25, lo que genera un mayor numero de operaciones y hace que 
% con cada operación aumente el error de aproximación y truncamiento de la máquina.

D=A*inv(A);
I=eye(25); %Matriz Identidad.
%Luego Para calcular || A* A^-1 -I||inf
C= D - I;
nor=norm(c,inf); %Norma Infinito.


%1.4) F=(A^-1)^-1; con esta operacion deberiamos obtener la matriz A, para
%comparar si el resultado es correcto comparamos usando el comando isequal.

F=inv(versa);
i=isequal(A,F);

%Si el resultado obtenido es 0, es porque las matrices no son iguales, si
%es 1 es porque la matriz es igual a A.
%Observamos que las matrices no son iguales esto se debe nuevamente por el
%uso del comando inv, que hace que se genere cierta cantidad de errores a
%medida que genera la inversa de la matriz inversa debido a las operaciones que realiza para lograr esto.

%1.5) det(A)*det(inv(A))

DA= det(A)*det(inv(A));


%1.6) numero de condición, Condición(A)= ||A|| * ||inv(A)|| y usando el
%comando de matlab podemos comparar nuestro resultado,

condicion= norm(A)* norm(inv(A));
con= cond(A);

%1.7) Para solucionar el sistema Ax=b por metodo de eliminación Gaussiana y
%sin pivoteo se realiza el algoritmo guardado como gauss.m, donde se
%ingresan los datos A,b donde
%b=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25]

b2=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25];
[x]=gauss(A,b2);

%1.8) Ax=b usando Matlab

x2=A\b2;

%1.9) Generamos un vector w de unos de tamaño 25 por medio del comando
% ones(25,1), calculamos ||b-Aw||inf y ||x-w||inf para el caso de la 
%pregunta E y la pregunta F.


w=ones(25,1);
%Para caso 7
p=norm((b2-(A*w)),inf);
h=norm((x-w),inf);

%Para caso 8
p2=norm((b2-(A*w)),inf);
h2=norm((x2-w),inf);


