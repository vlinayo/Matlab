%Veronica Li�ayo
%08-10615
%calcula los coeficientes de la interpolacion de Hermite.
function hp = hermite(x,y,yp)
n = length ( x );
z = zeros ( 1, 2*n );
f = zeros ( 1, 2*n );

z(1:2:2*n-1) = x;
z(2:2:2*n)   = x;
f(1)         = y(1);
f(3:2:2*n-1) = ( y(2:n) - y(1:n-1) ) ./ ( x(2:n) - x(1:n-1) );
f(2:2:2*n)   = yp;

for i = 3:2*n
    f(i:2*n) = ( f(i:2*n) - f(i-1:2*n-1) ) ./ ( z(i:2*n) - z(1:2*n-i+1) );
end;

hp = zeros ( 1, 2*n );
p = [1];
for i = 1:2*n
    hp = hp + f(i) * [ zeros(1,2*n-i) p ];
	p = conv ( p, [ 1 -z(i) ] );
end;