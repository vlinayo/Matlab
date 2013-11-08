function V= varianza3(x)
M1=x(1);
Mk=x(1);
k=length(x);
Q1=0;
for i=2:k
    Mk=M1+((x(i)-M1)/i);
    
    Qk=Q1+((i-1)*(x(i)-M1)^2/i);
    Q1=Qk;
    M1=Mk;
end

V=Qk/(k-1);
end