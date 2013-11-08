%Veronica Liñayo
%Carnet: 08-10615
%Pregunta2.2
for k= 5.01: 0.1: 15
    e= 10^-k;
    A= [e,2;1,-1];
    b=[4;-1];
    Y=gauss(A,b); 
end

