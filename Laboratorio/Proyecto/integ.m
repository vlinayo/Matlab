function [I] = integ( a, x2, x1 )
  I = quad( @f, x2, x1 );
  function [y] = f(x)
    y = zeros(1,length(x));
    for i = 1:length(x)
      y(1,i)=a(x(1,i));
    end
    y = sqrt(1 + y);
  end
end