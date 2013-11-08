function x = lufact( A,b )

U = A;

[m,n] = size(U);

L = eye(m);

%*** Factorizacion LU ***
for i = 1:m-1
   for k = i+1:m
       L(k,i) = U(k,i)/U(i,i);
	   for j = i+1:n 
	       U(k,j) = U(k,j) - L(k,i)* U(i,j);
       end
	   for j = 1:i 
	       U(k,j) = 0;
       end
   end
end
%************************

%  Ax=b es equivalente a LUx=b
%  Hacemos el cambio Ux=y Ly=b 

%*** Resolvemos Ly=b ***
y = zeros(1,m)';
y(1) = b(1)/L(1,1);
for i = 2:m
    suma = 0;
    for j = 1:i-1
        suma = suma + L(i,j)*y(j);
    end
    y(i) = (b(i) - suma)/L(i,i);
end
%**********************

%*** Resolvemos Ux=y ***
x = zeros(1,m)'; 
x(m) = y(m)/U(m,m);
for i = m-1:-1:1
    suma2 = 0;
    for j = i+1:m
        suma2 = suma2 + U(i,j)*x(j);
    end
    x(i) = (y(i) - suma2)/U(i,i);
end
end

