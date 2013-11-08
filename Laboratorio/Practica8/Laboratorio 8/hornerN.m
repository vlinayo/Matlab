function pval = hornerN(c,x,z)

n = length(c);
pval = c(n)*ones(size(z));

for k = n-1:-1:1
    
pval=c(k) + (z-x(k)) .* pval;

end 