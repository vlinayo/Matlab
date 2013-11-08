format long
%Pregunta 1
%Primero introducimos las matrices y los vectores b correspondientes.
A=[3.50003,5.8115,0.001;3.50003,5.8125,0.001;3.50003,5.8135,0.001];
bA=[5.000005;5.000006;5.000004];

B1=[7.40109,9.8999,1.999;7.40109,9.8988,1.999;7.40109,9.8999,1.999];
b1=[0.000003;0.000002;0.000003];

B2=[7.40109,9.8999,2.010;7.40109,9.8988,2.020;7.40109,9.8999,2.000];
b2=[0.000003;0.000002;0.000003];

K=[5.603,7.811,6.61;8.512,8.615,6.61;3.537,2.835,6.61];
bk=[5.5;5.6;5.4];

%1. Calculo el numero de condicion de las matrices, lo que nos permite
%saber si la matriz dada esta mal condicionada o no, lo que producir�a una
%fuente de posibles errores y dificultades a la hora de resolver un sistema
%lineal mediante metodos numericos.

CA=cond(A);
CB1=cond(B1);
CB2=cond(B2);
CK=cond(K);

%2. Calculo el determinante de las matrices, si este es 0 o que se aproxima
%a 0, estamos ante una matriz no invertible.

dA=det(A);
dB1=det(B1);
dB2=det(B2);
dK=det(K);

%3. Finalmente buscamos la norma infinito

nA=norm(A,inf);
nB1=norm(B1,inf);
nB2=norm(B2,inf);
nK=norm(K,inf);

%Dependiendo de los resultados obtenidos anteriormente procedemos a
%calcular la solucion de los sistemas lineales, y los vectores x tendr�n 
%soluci�n o no, seg�n lo que obtuvimos anteriormente, es decir, si los 
%numeros de condicion de nuestras matrices son muy grandes y/o si los 
%determinantes son 0, entonces no ser� posible hallar una soluci�n para 
%los sistemas planteados, de forma que se podr�a obtener como resultado:
%NaN y/o Inf.

%4. Vector Soluci�n que corresponde a cada sistema lineal.
%Para x=A\b

xA= A\bA;
xB1= B1\b1;
xB2= B2\b2;
xK= K\bk;

% Para x= inv(A)*b

xA2=inv(A)*bA;
xB12=inv(B1)*b1;
xB22=inv(B2)*b2;
xK2=inv(K)*bk;

%4. La diferencia entre ambos es que A\B es la division de una matriz A por un
%vector B, lo que es casi lo mismo a operar inv(A)*B, a excepcion de que es
%computarizado de forma diferente. Si A es una matriz de N por N, y B un
%vector de N componentes, entonces x= A\B, es la solucion a la ecuacion
%A*X= B. A.
%En cambio x=inv(A)*B, simplemente toma la matriz A, calcula su inversa, y
%luego la multiplica por el vector B.
%Al comparar ambos m�todos podemos ver que el m�s eficiente para la m�quina
%es A\B, dado que �ste no busca la inversa de la matriz para luego
%multiplicarla, sino que realiza el calculo de forma inmediata.

% En el caso de las matrices anteriores no se pueden usar ninguno de los
% casos dado que tenemos matrices no invertibles y mal condicionadas, a
% excepcion de las matrices B2 Y K que tienen ambas soluciones.

%5. La diferencia entre la matriz B1 y B2, esta en que la matriz B1 esta
%mal condicionada, mientras que la matriz B2 no lo esta, incluso al
%calcular el determinante de las ,matrices vemos como det(B1)=0, mientras
%que el de B2 se aproxima a 0, m�s no es 0, y es por eso que podemos
%calcular una soluci�n para el sistema, y tomando en cuenta que nuestra b
%tiene un error de 10^-7, entonces la matriz B2 es la m�s apropiada para
%correr el modelo matematico.
%Dado que B1 esta mal condicionada y su determinante es 0, el sistema no
%puede tener soluci�n y matlab arroja como solucion :para el primer m�todo 
% NaN, e Inf para el segundo metodo de solucion del sistema.
%mientras que para B2, se obtiene una solucion.


%Finalmente podemos ver, que la relaci�n que tiene el determinante, la
%condicion y la norma de una matriz esta en que:
%Si el numero de condici�n de una matriz es muy grande, entonces su
%determinante ser� pequeno, y con la norma infinito, tenemos la relaci�n
%que tiene esta con el numero de condici�n, dado que a trav�s de esta se
%calcula el numero de condici�n, y si �sta es indeterminada pues no se podr�
%calcular el numero de condici�n, como por ejemplo norm(inv(A),inf)=Inf,
%por lo que cond(A,inf)=Inf.

