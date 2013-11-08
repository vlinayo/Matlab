%varianza2;
function Var2= varianza2(x)
S=0;
q=0;
t=length(x);
for i=1:t
    q=q+x(i);
end

q=q^2;
X=q/t;
   

for i=1:t
    S=S+(x(i))^2;
end
Var2=(S-X)/(t-1);
end

