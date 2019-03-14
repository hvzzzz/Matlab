%function parallel_varying_F(v,L,C,r)
figure;
f=0:5000;
C=0.530516476972985;
L=1.32629119243246e-05;
F=1/(2*pi*sqrt(C*L))
imax=1000;
g=100;
w=2*pi*f;
BL=2*pi*f*C;
plot(f,BL),hold on;
BL=BL(BL>=0);
BC=-1./(2*pi*f*L);
BC=BC(BC<=0);
V=imax./sqrt(g^2+(w*C-1./(w*L)).^2);
IC=-BC.*V;
IL=BL.*V;
plot(f,IC),hold on;
plot(f,IL),grid on;
plot(f,V);hold on;
plot(f,BC),hold on;
xlabel('Frequency');
ylabel('Value');
legend('BL','IL','IC','V','BC');
title('Coneccion en Paralelo Variando F');
ICmax=max(IC)
ILmax=max(IL)
%Ireso=(imax/g)*;
axis([0 100 -1000 2300]);
%end