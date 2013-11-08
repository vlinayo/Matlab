function pval=hornerV(a,z)

n=length(a); 
m=length(z);
pval=a(n)*ones(m,1);

for k=n-1:-1:1
    
pval=a(k)+z.*pval; 

end
