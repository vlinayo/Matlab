load Lab5datos01.mat
tol=10^(-5);
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,1);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[L,U]=descLU(A);
[y]= sustPro(L,b(1:n,1));
[x]= sustReg(U,y,b(1:n,1));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;

tol=10^(-5);
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,2);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[L,U]=descLU(A);
[y]= sustPro(L,b(1:n,2));
[x]= sustReg(U,y,b(1:n,2));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;

tol=10^(-5);
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,3);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[L,U]=descLU(A);
[y]= sustPro(L,b(1:n,3));
[x]= sustReg(U,y,b(1:n,3));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;


load Lab5datos02.mat
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,1);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,1));
[x]= sustReg(U,y,b(1:n,1));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;

n=length(A);
x0=ones(n,1);
t0=cputime;
xr=A\b(1:n,2);
[x,maxit]=jacobi(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,2));
[x]= sustReg(U,y,b(1:n,2));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,3);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,3));
[x]= sustReg(U,y,b(1:n,3));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;


load Lab5datos02a.mat
n=length(A);
x0=ones(n,1);
xr=A\b(1:n,1);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,1));
[x]= sustReg(U,y,b(1:n,1));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,1),x0,tol);
tf=cputime;
t=tf-t0;

n=length(A);
x0=ones(n,1);
xr=A\b(1:n,2);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,2));
[x]= sustReg(U,y,b(1:n,2));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,2),x0,tol);
tf=cputime;
t=tf-t0;

n=length(A);
x0=ones(n,1);
xr=A\b(1:n,3);
t0=cputime;
[x,maxit]=jacobi(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=descLU(A);
[y]= sustPro(L,b(1:n,3));
[x]= sustReg(U,y,b(1:n,3));
tf=cputime;
t=tf-t0;
t0=cputime;
[x,maxit]=gausseid(A,b(1:n,3),x0,tol);
tf=cputime;
t=tf-t0;