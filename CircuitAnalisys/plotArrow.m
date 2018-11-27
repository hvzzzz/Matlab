%Draw an Arrowhead and a small circle to show the x-axis intercept).
function plotArrow(A,phi,c)
hold on
%Define Arrow.
x=[0 A A-0.2 A A-0.2]';
y=[0 0 0.2 0 -0.2]';
%Rotate Arrow.
x1=x*cos(phi)-y*sin(phi);
y1=x*sin(phi)+y*cos(phi);
%Plot Arrow.
plot(x1,y1,c,'LineWidth',2)

%Define small circle and plot it on x axis.
theta=0:pi/4:2*pi;
xp=A*cos(phi)+0.1*cos(theta);
yp=0.1*sin(theta);
fill(xp,yp,c,'EdgeColor',c);

%Draw dotted circle to show magnitude of error.
theta=0:0.1:2*pi;
plot(A*cos(theta),A*sin(theta),char(c,':'));
