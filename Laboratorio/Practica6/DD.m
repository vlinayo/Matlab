%B=[1,0,1;-1,1,0;1,2,-3]
function[dominante]=DD(B)
rowcol=size(B);
n=rowcol(1);
count=0;
for i=1:1:n
sumrow=0;
for j=1:1:n
if i~=j
sumrow=sumrow+abs(B(i,j));
end
end
if abs(B(i,i))>sumrow
count=count+1;
end
end
if count==n;
disp('Matriz extrictamente diagonal dominante')
else
disp('Matriz no es extrictamente diagonal dominante')
end
end
