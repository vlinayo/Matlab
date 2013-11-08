function [C]=lagrange(X,Y)
a=length(X);
n=a-1; 
L=zeros(a,a); 
%Formación de los coeficientes del polinomio

for k=1:n+1
   G=1; 
   for j=1:n+1 
      if k~=j
         G=conv(G,poly(X(j)))/(X(k)-X(j)); 
      end 
   end 
   L(:,k)=G; 
end
 
%Cálculo de los coeficientes del polinomio 
%interpolador de Lagrange 

C=L*Y'; 
end