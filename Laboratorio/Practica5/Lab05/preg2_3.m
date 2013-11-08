%Veronica Liñayo
%08-10615

%Cargamos los datos de A y b.

load datosmtxcons05.mat

disp('para datosmtxcons05.mat');
tol=10^(-5);
n=length(A);
x0=ones(n,1);
x02=zeros(n,1);
maxit=300;
%solución directa del sistema, sin usar ningun metodo iterativo.
x=A\b(1:n,1);

%t0= tiempo en calcular xr,el que tomaremos como el tiempo exacto, y los otros
%seran aproximaciones al tiempo que queremos obtener, con el fin de
%conseguir el tiempo que mejor lo aproxime, o incluso lo supere de ser
%posible el caso.
t0=cputime;


%Con Jacobi la solucion para x0 seria:

[x1a,numiterjacob1]=jacobi(A,b(1:n,1),x0,tol,maxit);
%tiempo de jacobi
disp('tiempo que tarda jacobi con x0');
tf=cputime;
disp(tf);

    %Aproximacion de Jacobi al tiempo exacto.
    t1a=tf-t0;
    disp('Aproximacion de Jacobi con x0 al tiempo exacto');
    disp(t1a);

%Con Jacobi la solucion para x02 seria:

[x1b,numiterjacob2]=jacobi(A,b(1:n,1),x02,tol,maxit);
%tiempo de jacobi
disp('tiempo que tarda jacobi con x02');
ti=cputime;
disp(ti);

    %Aproximacion de Jacobi al tiempo exacto.
    t1b=ti-t0;
    disp('Aproximacion de Jacobi con x02 al tiempo exacto');
    disp(t1b);


%Con LU la solucion para x0 y x02 seria:

[L,U]=LU(A);
[y]= sustPro(L,b(1:n,1));
[x2]= sustReg(U,y);
%tiempo de LU
disp('tiempo que tarda LU');
tg=cputime;
disp(tg);

    %Aproximacion de LU al tiempo exacto.
    t2=tg-t0;
    disp('Aproximacion de LU al tiempo exacto');
    disp(t2);

%Con Gauss-Seidel la solucion para x0 seria:

[x3a,numitergaus1]=gausseid(A,b(1:n,1),x0,tol,maxit);
%tiempo de Gauss-Seidel
disp('tiempo que tarda Gauss-Seidel con x0');
th=cputime;
disp(th);

    %Aproximacion al tiempo exacto
    disp('Aproximacion de Gauss-Seidel con x0 al tiempo exacto');
    t3a=th-t0;
    disp(t3a);
    
    
%Con Gauss-Seidel la solucion para x02 seria:

[x3b,numitergaus2]=gausseid(A,b(1:n,1),x02,tol,maxit);
%tiempo de Gauss-Seidel
disp('tiempo que tarda Gauss-Seidel con x02');
tl=cputime;
disp(tl);

    %Aproximacion al tiempo exacto
    disp('Aproximacion de Gauss-Seidel con x02 al tiempo exacto');
    t3b=tl-t0;
    disp(t3b);
    


%Cargamos los nuevos datos y resolvemos nuevamente cada sistema:
disp('para datosmtxcons15.mat');
load datosmtxcons15.mat

    tol=10^(-5);
    n2=length(A);
    x03=ones(n2,1);
    x04=zeros(n2,1);
    maxit=300;
    %solución directa del sistema, sin usar ningun metodo iterativo.
    y0=A\b(1:n2,1);

%t0= tiempo en calcular xr,el que tomaremos como el tiempo exacto, y los otros
%seran aproximaciones al tiempo que queremos obtener, con el fin de
%conseguir el tiempo que mejor lo aproxime, o incluso lo supere de ser
%posible el caso.
    h=cputime;

%Con Jacobi la solucion para x03 seria:

    [y1a,numiterjacob3]=jacobi(A,b(1:n2,1),x03,tol,maxit);
    %tiempo de jacobi
    disp('tiempo que tarda jacobi con x03');
    h1=cputime;
    disp(h1);

        %Aproximacion de Jacobi al tiempo exacto.
        ja=h1-h;
        disp('Aproximacion de Jacobi con x03 al tiempo exacto');
        disp(ja);

%Con Jacobi la solucion para x04 seria:

    [y1b,numiterjacob4]=jacobi(A,b(1:n2,1),x04,tol,maxit);
    %tiempo de jacobi
    disp('tiempo que tarda jacobi con x04');
    h2=cputime;
    disp(h2);

        %Aproximacion de Jacobi al tiempo exacto.
        jb=h2-h;
        disp('Aproximacion de Jacobi con x04 al tiempo exacto');
        disp(jb);


%Con LU la solucion para x03 y x04 seria:

    [L,U]=LU(A);
    [yb]= sustPro(L,b(1:n2,1));
    [y2]= sustReg(U,yb);
    %tiempo de LU
    disp('tiempo que tarda LU');
    h3=cputime;
    disp(h3);

        %Aproximacion de LU al tiempo exacto.
        lu=h3-h;
        disp('Aproximacion de LU al tiempo exacto');
        disp(lu);

%Con Gauss-Seidel la solucion para x03 seria:

    [y3a,numitergaus3]=gausseid(A,b(1:n2,1),x03,tol,maxit);
    %tiempo de Gauss-Seidel
    disp('tiempo que tarda Gauss-Seidel con x03');
    h4=cputime;
    disp(h4);

        %Aproximacion al tiempo exacto
        disp('Aproximacion de Gauss-Seidel con x03 al tiempo exacto');
        ga=h4-h;
        disp(ga);
    
    
%Con Gauss-Seidel la solucion para x04 seria:

    [y3b,numitergaus4]=gausseid(A,b(1:n2,1),x04,tol,maxit);
    %tiempo de Gauss-Seidel
    disp('tiempo que tarda Gauss-Seidel con x04');
    h4=cputime;
    disp(h4);

        %Aproximacion al tiempo exacto
        disp('Aproximacion de Gauss-Seidel con x04 al tiempo exacto');
        gb=h4-h;
        disp(gb);

