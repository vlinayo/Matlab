%media;
function med=media(x)
	suma = 0;
	n = length(x);
	for i = 1:n
		suma = suma +x(i);
    med = suma/n;
	end
