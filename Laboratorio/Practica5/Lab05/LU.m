%Veronica Liñayo
%08-10615
function [l,u]= LU(a)

n=length(a);
p=1:n;

for i=1:n-1
    [maximo,r]=max(abs(a(p(i:n),i)));r=r+i-1;
    p([i r])=p([r i]);
    for k=i+1:n
        l(p(k),i)=a(p(k),i)/a(p(i),i);
        a(p(k),i:n)=a(p(k),i:n)-l(p(k),i)*a(p(i),i:n);
    end
end

% Insertamos 1s en la 'diagonal' de L
for i=1:n
    l(p(i),i)=1;
end
u=a(p,:);

return