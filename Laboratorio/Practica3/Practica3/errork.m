%Funcion error
function [s] = errork(k)
r = 10.^-k;
 b = [4;1];
for m  =1: 1:1000
 A = [r(m),2; 1,-1];
 x = A\b;
 x1 =gauss(A,b);
 B = x1 - x;
 s(m) = norm(B,2); 
end
end
  

