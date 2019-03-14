%analytical solution 
%fishfun = @(x,y) 2*x-3*y;
%[x,y]=ode45(fishfun,[0,1],-1);
%figure(1)
%plot(x,y)
%grid;
n=7; %number of points
ys=[];
x0=0;
h=0.1;
xs=[];
yss=[];
xi=x0;
for i = 1:n
    xi=xi+h;
    xs=[xs xi];  
end
for i = 1:length(xs)
    xs(i);
    ys=[ys my_eulers(@(x,y) 2*x-3*y,0,0,.1,xs(i))]; 
end
for i = 1:length(xs)
    xs(i);
    yss=[yss modeuler(@(x,y) 2*x-3*y,0,0,.1,xs(i))]; 
end
hold on;
%legend('Analitico','Euler');
plot(xs,ys);
hold on;
plot(xs,yss);
legend('Euler','Euler Modificado');