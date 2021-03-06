function [X,Error]= mincuad(x,y)
M=zeros(length(x),3);
M(:,1)=1;
M(:,2)=x;
M(:,3)=(x.^2);
v=zeros(length(y),1);
v(:,1)=y;
%imprimimos la matriz A
A=M;
%imprimimos el vector b
b=v;
%imprimimos la traspuesta de A necesaria para resolver por minimos
%cuadrados.
T=A';
C=T*A;
D=T*b;
%queremos resolver A'*A*x=A'b, lo que seria tener Cx=D, por lo tanto
%resolvemos
X=C\D;
%X es un vector que presenta los coeficientes de la forma:
% | C0| Coeficiente independiente.
% | C1| El Cual Acompa�a a x
% | C2| El Cual Acompa�a a x^2

%Para calcular el error sabemos que E=abs(f(x)-p(x)). para f(x)=y.
for i = 1:length(X);
    E(i)=abs(y(i)-X(i));
end
Error=E;
end

