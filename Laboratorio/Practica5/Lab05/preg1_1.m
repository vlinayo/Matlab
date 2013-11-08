%Veronica Liñayo
%08-10615
A = [0.40,0.30,0.00;0.30,0.70,0.10;0.00,0.10,0.65];
 
%Si A es positivo definida entonces todos sus autovalores son mayores a cero.
A
lambda=eig(A)
disp('los autovalores de A son positivos, por lo tanto A es Definida Positiva');
