
function dx = lorenz(t, x)

% Standard constants for the Lorenz Attractor
a = 10.0000000001;
b = 8/3;
c = 28;
d = 1.3;

% I like to initialize my arrays
dx = [0.8;-0.4;1.2;1];

dx(1) = a*(x(2)-x(1))+x(4);
dx(2) = c*x(1)-x(1)*x(3)-x(2);
dx(3) = x(1)*x(2)-b*x(3);
dx(4) = -x(1)*x(3)+d*x(4);

% The lorenz strange attractor
% dx(1) = a*(x(2)-x(1))+x(4);
% dx(2) = -x(1)*x(3)+c*x(2);
% dx(3) = x(1)*x(2)-b*x(3);
% dx(4) = x(1)*x(3)+d*x(4);
end