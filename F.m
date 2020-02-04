% inputs:
%--------
% x: a 1*2 vector
% output: 
%--------
% y: the 1*2 vector equals to F(x)
function y = F( x )
    y(1)= x(1)^2 + x(2)^2 -1;
    y(2)= (x(1)-1)^2 + x(2)^2 -1;
end
