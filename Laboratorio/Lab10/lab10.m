%Veronica Liñayo
%08-10615
%Nodos De Chebyshev.

%Para la funcion 1
th = linspace(-1,1);
A=10;
x=linspace(-1,1,A);
g=abs(x);
p=polyfit(x,g,A-1);

%Nodos de Chebyshev:
a=chebyspace(-1,1,A);
o=abs(a);
u=polyfit(a,o,A-1);
C=polyval(u,th);

%Nodos Equidistantes:
L=polyval(p,th);

%Nodos Aleatorios:
c=((rand(A,1)*2)-1);
r=abs(c);
w=polyfit(c,r,A-1);
R=polyval(w,th);

figure(1);
hold on
axis([-1 1 0 1]);
hold on
title('Interpolacion funcion g(x)=abs(x) con x en [-1,1]');
hold on
xlabel('Eje X');
hold on
ylabel('Eje Y');
hold on


figure(2);
hold on
axis([0 6*pi -1.5 1.5]);
title('Interpolacion funcion f(y)=sin(y) con y en [0,6*pi]');
hold on
xlabel('Eje X');
hold on
ylabel('Eje Y');
hold on

%Primera Figura Funcion g(x)=abs(x)
n=linspace(-1,1,31);
m=abs(n);
figure(1);
hold on
plot(x,abs(x),'*r');
hold on
plot(a,abs(a),'*b');
hold on
plot(c,abs(c),'*g');
hold on
plot(th,R,'-g');
hold on
plot(n,m,'-k');
hold on
plot(th,C,'-b');
hold on
plot(th,L,'-r');
hold on


%Para la funcion 2

ht = linspace(0,6*pi);
B=10;
y=linspace(0,6*pi,B);
f=sin(y);
q=polyfit(y,f,B-1);

%Nodos de Chebyshev:
j=chebyspace(0,6*pi,B);
k=sin(j);
m=polyfit(j,k,B-1);
v=polyval(m,ht);


%Nodos Equidistantes:
T=polyval(q,ht);

%Nodos Aleatorios:

k=((rand(B,1)*6*pi));
Z=sin(k);
s=polyfit(k,Z,B-1);
H=polyval(s,ht);

%Segunda Figura Funcion f(y)=sin(y)
J=linspace(0,6*pi);
D=sin(J);
figure(2);
hold on
plot(y,sin(y),'*r');
hold on
plot(j,sin(j),'*b');
hold on
plot(k,sin(k),'*g');
hold on
plot(ht,H,'-g');
hold on
plot(J,D,'-k');
hold on
plot(ht,v,'-b');
hold on
plot(ht,T,'-r');
hold on



