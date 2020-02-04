%pointsBlue = points_On_Circle( center, radius );
pointsBlue=points_On_Circle( [0,0],1);
pointsBlue1=points_On_Circle( [1,0],1);

pointsRed=[5,1];
for i=1:5
    pointsRed=[pointsRed;newton(@F, [5,1], 1e-6, i)];
end

pointsGreen=[5,-1];
for i=1:5
    pointsGreen=[pointsGreen;newton(@F, [5,-1], 1e-6, i)];
end
pointsRed
plot(pointsBlue(:,1),pointsBlue(:,2),'b',pointsBlue1(:,1),pointsBlue1(:,2),'b',...
pointsRed(:,1),pointsRed(:,2),'or', pointsGreen(:,1),pointsGreen(:,2),'og')
hold on
axis([-12 12 -12 12]);