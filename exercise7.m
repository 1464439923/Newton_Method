Funit_sols
for x=-2:0.05:2
    for y=-2:0.05:2
        z=newton(@Funit, [x,y], 1e-6, 10);
        if z(1)==solutions(1,1) && z(2)==solutions(1,2)
            plot(x,y,'blue.')
            hold on
        elseif z(1)==solutions(2,1) && z(2)==solutions(2,2)
            plot(x,y,'green.')
            hold on
        elseif z(1)==solutions(3,1) && z(2)==solutions(3,2)
            plot(x,y,'magenta.')
            hold on
        elseif z(1)==solutions(4,1) && z(2)==solutions(4,2)
            plot(x,y,'yellow.')
            hold on
        elseif z(1)==solutions(5,1) && z(2)-solutions(5,2)<0.0001
            plot(x,y,'cyan.')
            hold on    
        else
            plot(x,y,'black.')
            hold on 
        end
    end
end
