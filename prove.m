ts=1/10e3;
f1=10;
figure;
for i=1:10000
    pause(0.00001)
    for j=1:i
        %hold on
        x=1:0.1:i+1;
        y=sin(x);
    end    
    plot(x,y);
end    