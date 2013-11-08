%Veronica Liñayo
%08-10615
format long

D = [0.40,0.00,0.00;0.00,0.70,0.00;0.00,0.00,0.65];
 
E = [0.00, 0.00, 0.00;0.30, 0.00, 0.00;0.00, 0.10, 0.00];
 
k=linspace(-0.40,2.90);
for w = -0.40: .01: 2.90
    M = D - (w * E);
    pM = max(abs(eig(M)));
end
plot(k,pM,'b*');

%Podemos ver que para -0.5<w<3, el radio espectral que se muestra en el
%grafico es constante para todo el rango seleccionado. Por lo tanto se
%demuestra que lo que planteamos para la pregunta 1.2, es decir, que se
%usaran w>1, pero con w no muy grande, es correcto y se puede usar para el
%metodo de SOR de la matriz dada A.
