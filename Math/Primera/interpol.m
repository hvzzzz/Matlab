for i=1:50
    x = [1 2 3 4 5 6 7 8];
    y = [0 1 0 1 0 1 0 1];
    xx = 1:i;
    yy = lagrange(xx,x,y);
    pause(1)
    hold on;
    plot(x,y,'o',xx,yy,'.')
    %axis([-10 10 -4 4])
end 
