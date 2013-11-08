%Veronica Liñayo
%Carnet: 08-10615
function mat= matriz(n)
    i= 0;
    for i= 1:n
        j=0;
        for j=1:n
            mat(i,j)=(1/(i+j-1));
        end
    end
end 

