function [p]=horner(coef,pto)

n=length(coef); 
m=length(pto);
p=coef(n)*ones(m,1);

for k=n-1:-1:1
    
p=coef(k)+ pto*p; 

end
