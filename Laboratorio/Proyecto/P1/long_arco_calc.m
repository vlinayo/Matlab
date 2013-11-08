function [ m ] = long_arco_calc( d, b, a )
  m = quad( @al, b, a );
  function [ y ] = al( x )
    y = zeros( 1, length( x ) );
    for i = 1 : length( x )
      y( 1, i ) = d( x( 1, i ) );
    end
    y = sqrt( 1 + y );
  end
end