%Veronica Liñayo
%08-10615
%Sustitución hacia Atras.
function [x]= sustReg(U,y)
n=length(U);
x=zeros(n,1);
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-(U(i,i+1:n)*x(i+1:n)))/U(i,i);
end
