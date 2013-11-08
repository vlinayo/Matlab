clear;
clc;
%estableciendo las coordenadas de los punto
%para definir la nube de puntos
%x=[30 40 21 64 57 43 80 75 90 60];
%y=[65 75 52 82 92 80 100 98 90 75];
x=[1 3 5 7 9 12 15 18 21 24 26 28 30];
y=[1 1.5 3 4.5 6 5.5 8 7.5 9 10.5 11 13.5 15];

%varible para guardar los datos despues de haber calculado "m" y "b"
y_prima=[];
y_pprima=[];
%=================================
%    A       x     =      B
%  _    _   _ _         _  _
% | x1 1 | | m |       | y1 |
% | x2 1 | | b |       | y2 |
% | x3 1 | `- -´       | y3 |
% | x4 1 |             | y4 |
%     .             =  |  . |
%     .                |  . |
%     .                |  . |
% | xn 1 |             | yn |
% `-    -´             `-  -´
%==================================

%inicializa la Matriz de puntos de A en zeros
A=zeros(length(x),2);
%llena la primer columna de la matriz A con las coordenadas "x"
A(:,1)=x;
%ahora se llena la columna 2 con unos que corresponden al coeficiente de "b"
A(:,2)=1;
%Matriz de ponderacion
w=eye(length(x),length(y)).*rand(length(x));
%se inicializa b
b=zeros(length(y),1);
%se llena la matriz b con las coordenadas "y"
b(:,1)=y;
%coeficiente matricial de x
C_prime=A'*w'*w*A;
%coeficiente matricial de b
D_prime=A'*w'*w;
%solucion de Ax=b con minimos cuadrados ponderados
sol_ponderado=inv(C_prime)*D_prime*b;
%variable adicional para calcular la transpuesta de A por A
C=A'*A;
%Calcula la inversa de C: que es equivalente a calcular la inversa de A'*A
D=inv(C);
%se realiza la multiplicacion de la transpuesta de "A" por la matriz "b"
E=A'*b;

%se calcul la solucion entregando una matriz de 2x1 donde m=sol(1,1), y
%b=sol(2,1)
sol=D*E;

%graficar los puntos dispersos
plot(x,y,'ro');
hold on;

%se evalua la ecuacion calculada con minimos cuadrados, y ademas se
%etiquetan los puntos dispersos
for i=1:length(x)
    %evalua ecuacion de la forma (y=mx + b) minimos cuadrados
    y_prima(i)=sol(1,1)*x(i) + sol(2,1);
    y_pprima(i)=sol_ponderado(1,1)*x(i) + sol_ponderado(2,1);
    %se concatena las dos cordenadas para etiquetar el punto
    punto=['( ',num2str((x(i))),' , ',num2str(y(i)),' )'];
    %se etiquetan los puntos
    txt=text(x(i)-0.5,y(i)-1,punto);
    %se cambia el tamaño de la fuente para mas presentacion en la grafica
    set(txt,'FontName','arial','FontUnits','points','FontSize',8,'FontWeight','normal','FontAngle','normal');    
end
%graficar los datos obtenidos de la evaluacion
plot(x,y_prima,'b');
hold on
plot(x,y_pprima,'r')
grid on;
xlabel('X eje de las abscisas');
ylabel('Y eje de las ordenadas');
ec=['Minimos cuadrados { y = ',num2str((sol(1,1))),'X + (',num2str(sol(2,1)),') }'];
ec1=['Minimos cuadrados ponderados { y = ',num2str((sol_ponderado(1,1))),'X + (',num2str(sol_ponderado(2,1)),') }'];
leyenda=legend('puntos dispersos',ec,ec1);
set(leyenda,'FontName','arial','FontUnits','points','FontSize',8,'FontWeight','normal','FontAngle','normal');    

title('Ajuste de puntos dispersos a una linea por Minimos cuadrados lineales y ponderados');

