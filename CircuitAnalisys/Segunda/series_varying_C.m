%function series_varying_C(F,v,XL,r)
figure;
f=-500:500;
F=60;
v=1000;
r=100;
w0=2*pi*F;
XL=300;
l=abs(XL)/w0;%value of L in resonance(does not vary)
XC=-F*XL./f;
c=1/(l*w0^2);%value of C in resonance
C=XC(XC<=0);
C=1./abs(C*w0);
for index =1:length(C)
    %L=XL(index)
    %pause(0.0000001);
    %IC=v./sqrt(r^2+(w0*l-1./(2*pi*f*c)).^2);
    IC=v./sqrt(r^2+(w0*l-1./(2*pi*f*C(index))).^2);
    VC=abs(XC).*IC;
    VL=XL*IC;
    plot(f,IC),hold on;
    grid on;
    plot(f(f>=0),XC(XC<=0)),hold on;
    plot(f,VL),grid on;
    plot(f,VC),hold on;
    plot(f,XL*ones(1,length(f)));
    %draw vertical line
    y = ylim; % current y-axis limits
    plot([F F],[y(1) y(2)],'k.:')
    xlabel('Frequency');
    ylabel('Value');
    legend('I','XC','VL','VC','XL');
    title('Coneccion en Serie Variando C');
    hold off;
    axis([-500 500 -500 2300]);
    pause(0.0000001);
    if abs(C(index)-c)/C(index)<0.000000001
        VLmax=max(VL)
        VCmax=max(VC)
        Vreso=VLmax
        XCreso=XL
        Creso=1/(2*pi*F*XCreso)
        return;
    end
end
%end