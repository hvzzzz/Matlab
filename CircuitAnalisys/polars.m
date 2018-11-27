subplot(1,2,1)
theta = deg2rad(130);
% Your speed in m/s
speed = 5;
hax = axes();
c = compass(hax, speed * cos(theta), speed * sin(theta));
% Change the view to orient the axes the way you've drawn
view([90 -90])
subplot(1,2,2)
h = animatedline;
axis([0,4*pi,-1,1])
numpoints = 100000;
x = linspace(0,4*pi,numpoints);
y = sin(x);
for k = 1:numpoints
    addpoints(h,x(k),y(k))
    drawnow limitrate
end