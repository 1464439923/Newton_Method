%pointsBlue = points_On_Circle( center, radius );
circlePoints=points_On_Circle( [0,0],0.5);
circlePoints1=points_On_Circle( [2,2],0.6);
zero1=newton(@HH, [2,2], 1e-6, 10);
zero2=newton(@HH, [1,1], 1e-6, 10);
zero3=newton(@HH, [2,0.5], 1e-6, 10);
zero4=newton(@HH, [2,-1], 1e-6, 10);
x=-1:4;
y1=zero1(1)*x+zero1(2);
y2=zero2(1)*x+zero2(2);
y3=zero3(1)*x+zero3(2);
y4=zero4(1)*x+zero4(2);
plot(circlePoints(:,1),circlePoints(:,2),'black',circlePoints1(:,1),circlePoints1(:,2),'black')
hold on
plot(0,0,'black.',2,2,'black.');
plot(x,y1,'r');
plot(x,y2,'r');
plot(x,y3,'r');
plot(x,y4,'r');
axis([-1 3 -1 3]);