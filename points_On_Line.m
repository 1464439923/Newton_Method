% inputs:
%--------
% a: a 1*2 vector containing the coordinates of a point a
% b: a 1*2 vector containing the coordinates of a point b
% output: 
%--------
% points: a 200*2 vector which raws are 200 points on the line
%         passing through a and b
function points = points_On_Line( a, b )
    nb_ech = 200;
    t = linspace(-5,5, nb_ech);
    points = zeros(nb_ech,2);
    for i=1:nb_ech
        points(i,:) = a + (1-t(i))*(b-a);
    end
end 
