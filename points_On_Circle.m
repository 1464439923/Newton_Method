% inputs:
%--------
% center: a 1*2 vector containing the coordinates of the center
% radius: a real positive number, the radius of the center
% output: 
%--------
% points: a 200*2 vector which raws are 200 points on the circle
function points = points_On_Circle( center, radius )
    nb_ech = 200;
    t = linspace(0,2*pi, nb_ech);
    points = zeros(nb_ech,2);
    for i=1:nb_ech
        points(i,:) = center + radius*[cos(t(i)),sin(t(i))];
    end
end 
