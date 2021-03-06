%Cholesky triangular inferior.
function [l,u]=cholesky(a)
n=length(a);
l=a*0; 
for k=1:n
    l(k,k)=sqrt(a(k,k)-l(k,1:k-1)*l(k,1:k-1)');
    l(k+1:n,k)=(a(k+1:n,k)-l(k+1:n,1:k-1)*l(k,1:k-1)')/l(k,k);
end