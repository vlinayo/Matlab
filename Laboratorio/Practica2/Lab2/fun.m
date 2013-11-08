%Veronica Liñayo
%Carnet: 08-10615
%Función 1
function [f]= fun(X)
isvector(X);
for f= 0:0.5
    f= (1- cos(X))./(X.^2);
end
end
