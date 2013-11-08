%Verónica Liñayo
% 08-10615
clear all
clc
format long
h=1;
err = zeros(40,1);
for i = 1:40
    h=(1/2)^i;
    err(i) = err_rel(h);
end
loglog (1:40,err)

% El valor mínimo es x=27, para h=1.01e-009
