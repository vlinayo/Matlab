% mtrns: Tranformaciones por Matrices Bidimensionales
% Andrés Sajo
% 24/02/2010
%
% Uso: mtrns

y = sind(0:359);
x = cosd(0:359);

figure(1);
while 1, % Para salir: Ctrl-C

        A = round(10*(0.5-rand(2)))

        for d = 1 : 360,
                nx(d) = A(1,:) * [x(d); y(d)];
                ny(d) = A(2,:) * [x(d); y(d)];
        end;

        hold off;
        plot(x, y, 'm+');
        hold on;
        plot(nx, ny, 'k+');

        plot( [x(1),0],   [y(1),0],   'b-' );
        plot( [x(90),0],  [y(90),0],  'b-' );
        plot( [x(180),0], [y(180),0], 'b-' );
        plot( [x(270),0], [y(270),0], 'b-' );

        plot( [x(1),nx(1)],     [y(1),ny(1)],     'r-' );
        plot( [x(90),nx(90)],   [y(90),ny(90)],   'r-' );
        plot( [x(180),nx(180)], [y(180),ny(180)], 'r-' );
        plot( [x(270),nx(270)], [y(270),ny(270)], 'r-' );

        rx = abs(max([x nx y ny]));
        axis([-rx, +rx, -rx, +rx]);

        pause;
end
