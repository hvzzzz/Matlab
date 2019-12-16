%Parametros del motor
Vl=440;
nph=3;
poles=6;
fe=6;
Rl=0.3426;
Xl=2.0978;
X2=2.0978;
Xm=64.723;
R2=0.4422;
%Calcular velocidad sincrona
omegas=4*pi*fe/poles;
ns=120*fe/poles;
%calcular el equivalente theevenin del estator
Zleq=j*Xm*(Rl+j*Xl)/(Rl+j*(Xl+Xm));
Rleq=real(Zleq);
Xleq=imag(Zleq);
Vleq=abs(Vl*j*Xm/(Rl+j*(Xl+Xm)));
%ciclo para calculala resistencia del rotor
%ciclo para calcular el deslizamiento
for n=1:300
    s(n)=n/300;
    rpm(n)=ns*(1-s(n));
    I2=abs(Vleq./(Zleq+j*X2+R2/s(n)));
    Tmec(n)=nph*I2*I2*R2./(s(n)*omegas);
    plot_l=plot(rpm,Tmec);
    set(plot_l,'Color','b');
    hold on;
end
title('Par Eléctromagnetico');
hold on;
grid on;
grid minor;xlabel('rpm');ylabel('Torque');%axis([0 1200 0 12])
