function [y] = horner(a,x)
% a es el vector de coeficientes
% x es el valor a ser evaluado
% y es el valor evaluado
% b es el vector de coeficientes dividido 
  b(1) = a(1);
  for i = 2:length(a)
    b(i) = a(i)+x*b(i-1);
  end
  y = b(length(a));
  b = b(1:length(b)-1);  
end

