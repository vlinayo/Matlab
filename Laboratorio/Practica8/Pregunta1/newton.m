function [coef]=newton(x,y)

n=length(x);
A=zeros(n,n);
A(:,1)=y;

%Construye tabla

for j=2:n
   for k=j:n
      A(k,j)=(A(k,j-1)-A(k-1,j-1))/(x(k)-x(k-j+1));
   end
end

%Determina coeficientes

coef=A(n,n);

for k=(n-1):-1:1
   coef=conv(coef,poly(x(k)));
   m=length(coef);
   coef(m)=coef(m)+A(k,k);
end
for i=1:n
    coef0(i)=coef(n-i+1);
end
coef=coef0';
end