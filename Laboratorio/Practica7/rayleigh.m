function x= rayleigh(A,x,tol,s)
x= x/ norm(x);
y= (A - s* eye(size(A,1))) \ x;
lambda= y'*x;
s= s+1/ lambda;
error= norm(y-lambda *x)/ norm(y);
while error> tol
    x=y/norm(y);
    y=( A-s*eye(size(A,1)))\ x;
    lambda=y'*x;
    s= s+1/ lambda;
    error= norm(y- lambda*x)/norm(y);
end
end


