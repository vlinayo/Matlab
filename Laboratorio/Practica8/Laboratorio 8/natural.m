function [ coef ] = natural( x,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
V=ones(n,n+1);
for i = 1:n
    aux = x.^i;
    V(:,i+1) = aux(:);
end

coef = lufact( V,y );

end

