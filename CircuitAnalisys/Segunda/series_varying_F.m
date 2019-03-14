%function series_varying_F(v,L,C,r)
figure;
f=0:5000;
L=0.530516476972985;
C=1.32629119243246e-05;
F=1/(2*pi*sqrt(L*C))
v=1000;
r=100;
w=2*pi*f;
XL=2*pi*f*L;
plot(f,XL),hold on;
XL=XL(XL>=0);
XC=-1./(2*pi*f*C);
XC=XC(XC<=0);
I=v./sqrt(r^2+(w*L-1./(w*C)).^2);
VC=-XC.*I;
VL=XL.*I;
plot(f,VL),grid on;
plot(f,VC),hold on;
plot(f,I);hold on;
plot(f,XC),hold on;
xlabel('Frequency');
ylabel('Value');
legend('I','XC','VL','VC','XL');
title('Coneccion en Serie Variando F');
ICmax=max(IC)
ILmax=max(IL)
axis([0 100 -1000 2300]);
%end