%%Roots of Equations
%%Graphical Method
x=-10:.1:10;
y=x.^2-2*x-15;
figure
plot(x,y);
hold on;
poi=find(y==0);
plot(x(poi),zeros(length(poi)),'r.')
grid on;
xlabel('x');
ylabel('y');
title('Metodo Grafico');
axis([-10,10,-20,10]);
ax = gca; ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
box off