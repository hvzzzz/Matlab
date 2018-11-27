radio=2;
f=1;
for i=1:0.1:100    
    instangle=i;
    x=[0 radio radio-0.2 radio radio-0.2]';
    y=[0 0 0.2 0 -0.2]';
    %Rotate Arrow.
    x1=x*cos(f*instangle)-y*sin(f*instangle);
    y1=x*sin(f*instangle)+y*cos(f*instangle);
%     x1=x*cos(2*pif)-y*sin(2*pi*f);
%     y1=x*sin(2*pi*f)+y*cos(2*pi*f);
    theta=0:pi/4:2*pi;
    xp=radio*cos(instangle)+0.1*cos(theta);
    yp=0.1*sin(theta);
    plot(x1,y1,'b-','LineWidth',1)
    axis([-2 2 -2 2])
    pause(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
    plot(2*cos(0:0.1:2*pi),2*sin(0:0.1:2*pi),'r-');
    axis([-2 2 -2 2])
    pause(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
end
