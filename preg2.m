load datalab8p2v2.mat

% 2

coef3 = newton(x,y)

t = [-1 ; 1 ; 0 ; 0.5 ; 1.5]

y1=hornerV(coef3,t);

y2 = exp( - t .^ 2 ) .* sin ( pi .* ( t .^ 3 ) ./ 4 )

    

%Que tan buena es la aproximacion

Error = abs(y2-y1)
%y2 valor real
%y1 valor aproximado

    