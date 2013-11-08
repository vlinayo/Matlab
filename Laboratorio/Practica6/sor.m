%SOR- Successive Over Relaxation
%w=1
function [x, error, iter, flag]  = sor(A, x, b, w, max_it, tol)
  flag = 0;                                   
  iter = 0;

  bnrm2 = norm( b );
  if  ( bnrm2 == 0.0 ), bnrm2 = 1.0; end

  r = b - A*x;
  error = norm( r ) / bnrm2;
  if ( error < tol ) return, end

  [ M, N, b ] = split( A, b, w, 2 );          

  for iter = 1:max_it                         

     x_1 = x;
     x   = M \ ( N*x + b );                   

     error = norm( x - x_1 ) / norm( x );     
     if ( error <= tol ), break, end          

  end
  b = b / w;                                  

  if ( error > tol ) flag = 1; end;           
end
%sor.m