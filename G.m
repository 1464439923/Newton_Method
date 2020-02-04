% inputs:
%--------
% x: a 1*3 vector
% output: 
%--------
% y: the 1*3 vector equals to G(x)
function y = G( x ) 
    y(1)= x(1)^2 + x(2)^2 + x(3)^2 -1;
    y(2)= (x(1)-1)^2 + x(2)^2 + x(3)^2 -1;
    y(3)= (x(1)-1)^2 + (x(2)-1)^2 + x(3)^2 -1;
end 
