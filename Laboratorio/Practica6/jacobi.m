% Jacobi

function[x, error, iter, flag]  = jacobi(A, x, b, max_it, tol)
  iter = 0;                                       
  flag = 0;

  bnrm2 = norm( b );
  if  ( bnrm2 == 0.0 ), bnrm2 = 1.0; end

  r = b - A*x;
  error = norm( r ) / bnrm2;
  if ( error < tol ) return, end

  [m,n]=size(A);
  [ M, N ] = split( A , b, 1.0, 1 );              

  for iter = 1:max_it,                            % comienza iteracion

     x_1 = x;
     x   = M \ (N*x + b);                         

     error = norm( x - x_1 ) / norm( x );         
     if ( error <= tol ), break, end              % verificar convergence

  end

  if ( error > tol ) flag = 1; end                % no converge
end
%jacobi.m