function pval=horner(p,pto)

n=length(p); 
m=length(pto);
pval=p(n)*ones(m,1);

for k=n-1:-1:1
    
pval=p(k)+pto.*pval; 

end
