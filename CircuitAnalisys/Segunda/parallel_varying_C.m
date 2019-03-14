%function parallel_varying_C(F,v,XC,r)
figure;
f=-500:500;
F=60;
imax=1000;
g=150;
w0=2*pi*F;
BL=-200;
l=1/(w0*abs(BL));%value of L in resonance(does not vary)
BC=abs(BL)*f/F;
c=1/(l*w0^2);%value of C in resonance
C=BC(BC>=0);
C=C./w0;
for index =1:length(C)
    V=imax./sqrt(g^2+(2*pi*f*C(index)-1./(w0*l)).^2);
    IC=BC.*V;
    IL=V*abs(BL);
    plot(f,V),hold on;
    plot(f,BC),hold on;
    plot(f,IL),hold on;
    plot(f,IC),grid on;
    plot(f,BL*ones(1,length(f)));
    %draw vertical line
    y = ylim; % current y-axis limits
    plot([F F],[y(1) y(2)],'k.:')
    xlabel('Frequency');
    ylabel('Value');
    legend('V','BL','IL','IC','BC');
    title('Coneccion en Paralelo Variando C');
    hold off;
    %axis([-50 150 -30 20]);
    pause(0.0000001);
    if abs(C(index)-c)/C(index)<0.000000001
        ICmax=max(IC)
        ILmax=max(IL)
        Ireso=ILmax
        BCreso=BL
        Creso=BCreso/(2*pi*F)
        return;
    end
end
%end