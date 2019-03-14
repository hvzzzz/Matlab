%function series_varying_L(F,v,XC,r)
figure;
f=-500:500;
F=120;
v=1000;
r=100;
w0=2*pi*F;
XC=-200;
c=1/(w0*abs(XC));%value of C in resonance(does not vary)
XL=abs(XC)*f/F;
l=1/(c*w0^2);%value of L in resonance
L=XL(XL>=0);
L=L./w0;
for index =1:length(L)
    %L=XL(index)
    %pause(0.0000001);
    %IL=v./sqrt(r^2+(2*pi*f*l-1./(w0*c)).^2);
    IL=v./sqrt(r^2+(2*pi*f*L(index)-1./(w0*c)).^2);
    VL=XL.*IL;
    VC=IL*abs(XC);
    plot(f,IL),hold on;
    plot(f,XL),hold on;
    plot(f,VL),grid on;
    plot(f,VC),hold on;
    plot(f,XC*ones(1,length(f)));
    %draw vertical line
    y = ylim; % current y-axis limits
    plot([F F],[y(1) y(2)],'k.:')
    xlabel('Frequency');
    ylabel('Value');
    %legend('I','XL','VL','VC','XC');
    title('Coneccion en Serie Variando L');
    hold off;
    %axis([-50 150 -30 20]);
    pause(0.0000001);
    if abs(L(index)-l)/L(index)<0.000000001
        VLmax=max(VL)
        VCmax=max(VC)
        Vreso=VCmax
        XLreso=abs(XC)
        Lreso=XLreso/(2*pi*F)
        return;
    end
end
%end