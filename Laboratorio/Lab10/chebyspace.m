function X =chebyspace(a,b,n)
%Distancia entre los puntos
for i=1:n
    X(i)= 1/2*(a+b) + 1/2*(b-a)*cos((pi/2*n+2)+(i*pi/n+1));
end
end
