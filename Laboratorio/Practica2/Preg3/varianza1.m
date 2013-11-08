%varianza1;
function var1=varianza1(x)
	suma = 0;
	n = length(x);
    sumat = 0;
	for i = 1:n
		suma = (x(i) - media(x))^2;
        sumat = sumat + suma;
    var1 = sumat/(n-1);
    end
end
