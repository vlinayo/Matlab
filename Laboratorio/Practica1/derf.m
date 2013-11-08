%Verónica Liñayo
% 08-10615
function[res]=derf(f,x,h)
res=(f(x+h)-f(x))/h;
end