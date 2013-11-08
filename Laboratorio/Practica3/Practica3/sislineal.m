%Pregunta2A

for k= 5.01: 0.1: 15
    e= 10^-k;
    A= [e,2;1,-1];
    b=[4;-1];
    Y=gauss(A,b)
end


