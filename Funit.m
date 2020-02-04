% inputs:
%--------
% x: a 1*2 vector
% output: 
%--------
% y: the 1*2 vector equals to Funit(x)
function y = Funit( x )
    y(1) = x(1)^5 - 10*x(1)^3*x(2)^2 + 5*x(1)*x(2)^4 -1;
    y(2) = 5*x(1)^4*x(2)-10*x(1)^2*x(2)^3 + x(2)^5;
end 