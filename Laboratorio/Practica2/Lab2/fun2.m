%Veronica Liñayo
%Carnet: 08-10615
%Funcion 2
function [f2]= fun2(X)
isvector(X);
for f2= 0:0.5
    f2= 1/2* ((sin(X./2)/(X./2))^2);
end
end
