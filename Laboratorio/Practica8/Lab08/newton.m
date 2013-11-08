%Veronica Liñayo
%08-10615
function [C1]=newton(X,Y)

n=length(X);
D=zeros(n,n);
D(:,1)=Y;

%Construye tabla

for j=2:n
   for k=j:n
      D(k,j)=(D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
   end
end

%Determina coeficientes

C=D(n,n);

for k=(n-1):-1:1
   C=conv(C,poly(X(k)));
   m=length(C);
   C(m)=C(m)+D(k,k);
end
for i=n:1
    C(i)=C(n-i+1);
end
C1=C';
end