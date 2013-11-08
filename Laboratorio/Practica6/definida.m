function definida(A)
valores=eig(A);
minimo=min(valores);
if minimo>0
display('A es definida positiva')
else
display('A no es definida positiva')
end


