%Veronica Li�ayo
%Carnet: 08-10615
%Pregunta 2.3b
format long
k=linspace(5.01,15);
for x=5.01:.01:15;
y = errork(x);
end
plot(k,y,'r*');
legend('errork')
%Se observa en el gr�fico que se obtiene una serie de puntos en las coordenada Y=2,
%X= 5.01:15, esto es debido a que el error casi no varia en su valor el cual es
%aproximadamente 2, esto lo podemos ver al usar la funci�n errork(k) y usar
%los valores de k=5.01:15, uno a uno. Asi podemos apreciar que la variaci�n
%es muy peque�a por lo que la m�quina no la toma, y ve siempre el n�mero
%como 2.0000, y al momento de hacer la gr�fica nos el mismo punto.
