Van=1;
Ian=1;
San=1;
CosFin=0.8;
Xd=1.2;
Xq=0.8;
Re=0.0;
Fi=0:-0.01:-2*pi;
Ia=Ian*(cos(Fi)+j*sin(Fi));
D=Van+(Re +j*Xq).*Ia;
delta =atan2(imag(D),real(D));
Id=Ian*sin(delta-Fi).*(sin(delta)-j*cos(delta));
Ef=D+j*(Xd-Xq).*Id;
Fin=acos(CosFin);
Iax =Ian*(sin(cos(Fin)))-j*sin(Fin);
Dx=Van+(Re +j*Xq).*Iax;
deltax=atan(imag(Dx)/real(Dx));
Idx=Ian*sin(deltax-Fin).*(sin(deltax)-j*cos(deltax));
Efx=Dx+j*(Xd-Xq).*Idx;
Efmax=abs(Efx)*(cos(Fi)+j*sin(Fi));
plot(Id);
hold on;
plot(Ef);
hold on;
plot(Idx);
hold on;
plot(Efx);
hold on;
plot(Efmax);
hold on;
plot(Iax);
hold on;
axis('square');
grid on;
ejexx=[-2.5 2.5];
ejexy=[0 0];
ejeyx=[0 0];
ejeyy=[2.5 -2.5];
plot(ejexx,ejexy,'k',ejeyx,ejeyy,'k');
axis([-2.5 2.5 -2.5 2.5]);
xlabel('Eje Real');
ylabel('Eje Imaginario');
x = [0.5 0.41];
y = [0.5 0.61];
annotation('arrow',x,y);
text(-1.48,0,'Efmax')