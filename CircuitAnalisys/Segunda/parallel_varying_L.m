%function [Ireso,ICmax,ILmax]=parallel_varying_L(F,imax,BC,g)
figure;
f=-500:500;
F=95;
imax=1000;
g=100;
w0=2*pi*F;
BC=200;
c=abs(BC)/w0;%value of L in resonance(does not vary)
BL=-F*BC./f;
l=1/(c*w0^2);%value of C in resonance
L=BL(BL<=0);
L=1./abs(L*w0);
for index =1:length(L)
    V=imax./sqrt(g^2+(w0*c-1./(2*pi*f*L(index))).^2);
    IL=abs(BL).*V;
    IC=BC*V;
    plot(f,V),hold on;
    grid on;
    plot(f(f>=0),BL(BL<=0)),hold on;
    plot(f,IL),hold on;
    plot(f,IC),grid on;
    plot(f,BC*ones(1,length(f)));
    %draw vertical line
    y = ylim; % current y-axis limits
    plot([F F],[y(1) y(2)],'k.:')
    xlabel('Frequency');
    ylabel('Value');
    legend('V','BL','IL','IC','BC');
    title('Coneccion en Paralelo Variando L');
    hold off;
    axis([-500 500 -500 2300]);
    pause(0.0000001);
    if abs(L(index)-l)/L(index)<0.000000001
        ICmax=max(IC)
        Ireso=ICmax
        ILmax=max(IL)
        BLreso=BC
        Lreso=1/(BLreso*pi*F)
        return;
    end
end
%end