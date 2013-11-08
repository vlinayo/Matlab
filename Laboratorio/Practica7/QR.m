%maxim=58
function [va,ma,vb,mb] = QR(A,B,maxim)

C=A;
D=B;

for k= 1:maxim
    [Q R]= qr(C);
    C1= R*Q;
    C= C1;
    if norm(tril(C1),inf)<(10^-4)
        break;
    end
end
va = diag(C)
ma = C

for k= 1:maxim
    [P,T]= qr(B);
    D1= T*P;
    D= D1;
    
    if norm(tril(D1),inf)<(10^-4)
        break;
    end
end
vb = diag(D)
mb = D

end

%Para calcular el radio espectral de dichas matrices B y C, usamos la
%funcion potencia.m y obtenemos:

% para B: 225.
% y para C: 6.549434950873313e+002