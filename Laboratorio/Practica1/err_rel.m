%Verónica Liñayo
% 08-10615
function err = err_rel(h)
  f=@(x)sin(x);
  err=abs((derf(f,1,h) - cos(1)))/abs(cos(1));
end